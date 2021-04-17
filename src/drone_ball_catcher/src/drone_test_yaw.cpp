/**
Drone Test 1: In this scenario, the drone simply moves towards the ball location the moment it detects it.
It does correct for any change in the ball location
 */

#include <ros/ros.h>
//#include <math.h>
#include <cmath>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/Quaternion.h>
#include <geometry_msgs/PointStamped.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/TwistStamped.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>
// Added tf2 headers to hold world frames
#include <tf2/LinearMath/Quaternion.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <tf2_ros/transform_listener.h>
#include <tf2_ros/transform_broadcaster.h>
#include <tf2/LinearMath/Quaternion.h>
#include <geometry_msgs/TransformStamped.h>

using namespace std; 

//global
bool look_for_ball = false;
float collsion_threshold = 0.2;
tf2_ros::Buffer tfBuffer; 
tf2_ros::TransformListener *tfListener;
ros::Publisher *pubber;

mavros_msgs::State current_state;
void state_cb(const mavros_msgs::State::ConstPtr& msg){
    current_state = *msg;
}

geometry_msgs::PoseStamped current_location;
void pose_cb(const geometry_msgs::PoseStamped::ConstPtr& msg)
{
    current_location = *msg;
}

geometry_msgs::Point ball_location;
geometry_msgs::Point ball_location_relative;
void ball_cb(const geometry_msgs::PointStamped::ConstPtr& msg)
{
    // cout << "sub run" << endl;
    // ball location is in camera_link frame now
    // set this relative location to ball_location_relative
    look_for_ball = true;
    ball_location_relative.x = msg->point.x;
    ball_location_relative.y = msg->point.y;
    ball_location_relative.z = msg->point.z;
    // converting ball_location to map frame 

    try{
        //transformStamped = tfBuffer.lookupTransform("/map", "/camera_link", ros::Time(0));
        //tf2_geometry_msgs::do_transform(*msg, ball_location_map, transformStamped);
        geometry_msgs::PointStamped ball_location_map;

        tfBuffer.transform(*msg, ball_location_map, "map");

        // ensure drone is not told to go underground
        if (ball_location_map.point.z <= 0){
            return;
        }

        ball_location.x = ball_location_map.point.x;
        ball_location.y = ball_location_map.point.y;
        ball_location.z = ball_location_map.point.z;

        geometry_msgs::PointStamped::Ptr pub (new geometry_msgs::PointStamped);
        pub->header.frame_id = "map";
        pub->header.stamp = ros::Time::now();
        pub->point.x = ball_location.x;
        pub->point.y = ball_location.y;
        pub->point.z = ball_location.z;
        pubber->publish(pub);
    }
    catch (tf2::TransformException &ex) {
        //ROS_WARN("%s",ex.what());
        //ros::Duration(1.0).sleep();
    }
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "drone_test_1_node");
    ros::NodeHandle nh;

    // TF listener
    tfListener = new tf2_ros::TransformListener(tfBuffer);

    // SUBSCRIBERS
    ros::Subscriber state_sub = nh.subscribe<mavros_msgs::State>
            ("mavros/state", 1000, state_cb);
    ros::Subscriber local_pos_sub = nh.subscribe<geometry_msgs::PoseStamped>
            ("mavros/local_position/pose", 1000, pose_cb);
    ros::Subscriber ball_locator_sub = nh.subscribe<geometry_msgs::PointStamped>
            ("ball_geom", 1000, ball_cb);

    // PUBLISHERS
    ros::Publisher local_pos_pub = nh.advertise<geometry_msgs::PoseStamped>
            ("mavros/setpoint_position/local", 10);
    ros::Publisher vel_pub = nh.advertise<geometry_msgs::TwistStamped>("/mavros/setpoint_velocity/cmd_vel", 1000);
    pubber = new ros::Publisher(nh.advertise<geometry_msgs::PointStamped>("check_coord", 1000));

    // SERVICES
    ros::ServiceClient arming_client = nh.serviceClient<mavros_msgs::CommandBool>
            ("mavros/cmd/arming");
    ros::ServiceClient set_mode_client = nh.serviceClient<mavros_msgs::SetMode>
            ("mavros/set_mode");

    // extract initial pose parameters (stored in config/initial_drone_pose.yaml)
    float init_x, init_y, init_z, init_qx, init_qy, init_qz, init_qw = 0.0;
    bool move_drone = false;
    int min_readings;
    int initial_min_readings;
    int reading_count = 0;
    float theta_max = 0.25; // radians of maximum allowed yaw deviation from camera center
    float theta;
    geometry_msgs::Point ball_location_relative_last;
    ball_location_relative_last.x = NAN;
    ball_location_relative_last.y = NAN;
    ball_location_relative_last.z = NAN;
    nh.getParam("init_x", init_x);
    nh.getParam("init_y", init_y);
    nh.getParam("init_z", init_z);
    nh.getParam("init_qx", init_qx);
    nh.getParam("init_qy", init_qy);
    nh.getParam("init_qz", init_qz);
    nh.getParam("init_qw", init_qw);
    nh.getParam("min_readings", min_readings);
    nh.getParam("initial_min_readings", initial_min_readings);

    // set variables to look for ball and to move drone


    ball_location.x = NAN;
    ball_location.y = NAN;
    ball_location.z = NAN;
    // ************************************************ START OF DRONE SETUP ************************************************

    //the setpoint publishing rate MUST be faster than 2Hz
    ros::Rate rate(3.5);

    ROS_INFO("Connecting to drone");
    // wait for FCU connection
    while(ros::ok() && !current_state.connected){
        ros::spinOnce();
        rate.sleep();
    }
    ROS_INFO("Connected!");


    geometry_msgs::TwistStamped msg;
    msg.twist.linear.x = 0;
    msg.twist.linear.y = 0;
    msg.twist.linear.z = 0;


    //send a few setpoints before starting
    for(int i = 20; ros::ok() && i > 0; --i){
        vel_pub.publish(msg);
        ros::spinOnce();
        rate.sleep();
    }

    ROS_INFO("Setting mode to OFFBOARD");
    mavros_msgs::SetMode offb_set_mode;
    offb_set_mode.request.custom_mode = "OFFBOARD";

    ROS_INFO("Arming drone");
    mavros_msgs::CommandBool arm_cmd;
    arm_cmd.request.value = true;

    ros::Time last_request = ros::Time::now();


    geometry_msgs::PoseStamped initial_location;
    initial_location.pose.position.x = init_x;
    initial_location.pose.position.y = init_y;
    initial_location.pose.position.z = init_z;
    
    initial_location.pose.orientation.x = init_qx;
    initial_location.pose.orientation.y = init_qy; 
    initial_location.pose.orientation.z = init_qz;
    initial_location.pose.orientation.w = init_qw; 

    geometry_msgs::PoseStamped target_location;
    target_location.header.frame_id = "base_link";

    geometry_msgs::PoseStamped target_location_last;
    target_location_last = initial_location;

    while(ros::ok()){
        if( current_state.mode != "OFFBOARD" &&
            (ros::Time::now() - last_request > ros::Duration(1.0))){
            if( set_mode_client.call(offb_set_mode) &&
                offb_set_mode.response.mode_sent){
                ROS_INFO("Offboard enabled");
            }
            last_request = ros::Time::now();
        } else {
            if( !current_state.armed &&
                (ros::Time::now() - last_request > ros::Duration(1.0))){
                if( arming_client.call(arm_cmd) &&
                    arm_cmd.response.success){
                    ROS_INFO("Vehicle armed");
                }
                last_request = ros::Time::now();
            }
        }
        // ************************************************ END OF DRONE SETUP************************************************
        // add code for drone movement here

        if (!look_for_ball || isnan(ball_location.x) || isnan(ball_location.y) || isnan(ball_location.z)){
            // move_drone = false;
        }
        else if (pow(ball_location_relative.x,2) + pow(ball_location_relative.y,2) + pow(ball_location_relative.z,2) > pow(collsion_threshold,2)){
            
            if (move_drone && reading_count < min_readings){
                reading_count++;
            }
            else if (!move_drone && reading_count < initial_min_readings){
                reading_count++;
            }

            else{
                move_drone = true;
                // if ball coords are still nan, use previous non-nan target
                if (isnan(ball_location.x) || isnan(ball_location.y) || isnan(ball_location.z)){
                    target_location.pose.position.x = target_location_last.pose.position.x;
                    target_location.pose.position.y = target_location_last.pose.position.y;
                    target_location.pose.position.z = target_location_last.pose.position.z;
                    target_location.pose.orientation.x = init_qx;
                    target_location.pose.orientation.y = init_qy;
                    target_location.pose.orientation.z = init_qz;
                    target_location.pose.orientation.w = init_qw;
                    ROS_WARN("Ball out of sight");
                }
                // otherwise use current ball_location and update target_location_last to current ball_location
                else{


                    theta = atan2( -1 * ball_location_relative.x, ball_location_relative.z);

                    if (abs(theta) > theta_max && !(ball_location_relative.x == ball_location_relative_last.x &&
                        ball_location_relative.y == ball_location_relative_last.y && ball_location_relative.y == ball_location_relative_last.y)){
                        if (theta < 0){
                            ROS_INFO("Yawing Right");
                        }
                        else{
                            ROS_INFO("Yawing Left");
                        }
                        tf2::Quaternion Qoriginal(current_location.pose.orientation.x, current_location.pose.orientation.y,
                        current_location.pose.orientation.z, current_location.pose.orientation.w);
                        tf2::Quaternion Qchange;
                        Qchange.setRPY(0, 0, theta/2);
                        Qoriginal *= Qchange;



                        geometry_msgs::Quaternion Qorigmsg = tf2::toMsg(Qoriginal);
                        init_qz = Qorigmsg.z;
                        init_qw = Qorigmsg.w;

                        // cout << ball_location_relative.x << "," << ball_location_relative.z << "," << init_qz << "," << init_qw
                        // << endl;

                    }

                    ball_location_relative_last = ball_location_relative;

                    target_location.pose.position.x = ball_location.x;
                    target_location.pose.position.y = ball_location.y;
                    target_location.pose.position.z = ball_location.z; //ball_location.z;
                    target_location.pose.orientation.x = init_qx;
                    target_location.pose.orientation.y = init_qy;
                    target_location.pose.orientation.z = init_qz;
                    target_location.pose.orientation.w = init_qw;

                    target_location_last.pose.position.x = ball_location.x;
                    target_location_last.pose.position.y = ball_location.y;
                    target_location_last.pose.position.z = ball_location.z;
                    target_location_last.pose.orientation.x = init_qx;
                    target_location_last.pose.orientation.y = init_qy;
                    target_location_last.pose.orientation.z = init_qz;
                    target_location_last.pose.orientation.w = init_qw;
                    //cout << "Moving to location " << target_location.pose.position.x << "," << target_location.pose.position.y << "," << target_location.pose.position.z << endl;
                    // cout << theta << endl;
                }
                // look_for_ball = false;
                // ROS_INFO("Ball Detected");
                reading_count = 0;
            }
        }
        else if (pow(ball_location_relative.x,2) + pow(ball_location_relative.y,2) + pow(ball_location_relative.z,2) <= pow(collsion_threshold,2)){
            // ball has definitely reached the target
            ROS_INFO("Drone has hit target! Resetting Drone");
            // cout << "Drone Location " << current_location.x << "," << current_location.y << "," << current_location.z << endl;
            // cout << "Ball Relative " << ball_location_relative.x << "," << ball_location_relative.y << "," << ball_location_relative.z << endl;
            break;
            move_drone = false;
            look_for_ball = false;
        }
        else{
            ROS_INFO("Error in code");
        }

        if (move_drone){
            local_pos_pub.publish(initial_location);
        }
        else{
            local_pos_pub.publish(initial_location);
        }

        // if (!look_for_ball){
        //     string temptemp;
        //     cout << "Press enter to look for ball";
        //     cin >> temptemp;
        //     look_for_ball = true;
        // }
        // cout << "main run" << endl;
        ros::spinOnce();
        rate.sleep();
    }

    return 0;
} 
