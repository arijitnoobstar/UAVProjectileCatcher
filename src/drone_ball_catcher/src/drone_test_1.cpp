/**
Drone Test 1: In this scenario, the drone simply moves towards the ball location the moment it detects it.
It does not correct for any change in the ball location
 */

#include <ros/ros.h>
#include <math.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/TwistStamped.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>

using namespace std; 

bool look_for_ball = false;
bool move_drone = false;

mavros_msgs::State current_state;
void state_cb(const mavros_msgs::State::ConstPtr& msg){
    current_state = *msg;
}

geometry_msgs::Point current_location;
void pose_cb(const geometry_msgs::PoseStamped::ConstPtr& msg)
{
	current_location.x = msg->pose.position.x;
    current_location.y = msg->pose.position.y;
    current_location.z = msg->pose.position.z;
}

geometry_msgs::Point ball_location;
void ball_cb(const geometry_msgs::Point::ConstPtr& msg)
{
    look_for_ball = true;
    ball_location.x = msg->x;
    ball_location.y = msg->y;
    ball_location.z = msg->z;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "drone_test_1");
    ros::NodeHandle nh;

    // SUBSCRIBERS
    ros::Subscriber state_sub = nh.subscribe<mavros_msgs::State>
            ("mavros/state", 10, state_cb);
	ros::Subscriber local_pos_sub = nh.subscribe<geometry_msgs::PoseStamped>
			("mavros/local_position/pose", 10, pose_cb);
    ros::Subscriber ball_locator_sub = nh.subscribe<geometry_msgs::Point>
            ("ball_geom", 10, ball_cb);

    // PUBLISHERS
    ros::Publisher local_pos_pub = nh.advertise<geometry_msgs::PoseStamped>
            ("mavros/setpoint_position/local", 10);
	ros::Publisher vel_pub = nh.advertise<geometry_msgs::TwistStamped>("/mavros/setpoint_velocity/cmd_vel", 1000);

    // SERVICES
    ros::ServiceClient arming_client = nh.serviceClient<mavros_msgs::CommandBool>
            ("mavros/cmd/arming");
    ros::ServiceClient set_mode_client = nh.serviceClient<mavros_msgs::SetMode>
            ("mavros/set_mode");

    // ************************************************ START OF DRONE SETUP ************************************************

    //the setpoint publishing rate MUST be faster than 2Hz
    ros::Rate rate(20.0);

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
    initial_location.pose.position.x = 0;
    initial_location.pose.position.y = 0;
    initial_location.pose.position.z = 2;
    /*
    initial_location.pose.orientation.x = 0.01;
    initial_location.pose.orientation.y = 0.01;
    initial_location.pose.orientation.z = 0.01;
    initial_location.pose.orientation.w = -0.99;*/
    geometry_msgs::PoseStamped target_location;

    target_location.header.frame_id = "base_link";
    int min_readings = 50;
    int reading_count = 0;

    while(ros::ok()){
        if( current_state.mode != "OFFBOARD" &&
            (ros::Time::now() - last_request > ros::Duration(5.0))){
            if( set_mode_client.call(offb_set_mode) &&
                offb_set_mode.response.mode_sent){
                ROS_INFO("Offboard enabled");
            }
            last_request = ros::Time::now();
        } else {
            if( !current_state.armed &&
                (ros::Time::now() - last_request > ros::Duration(5.0))){
                if( arming_client.call(arm_cmd) &&
                    arm_cmd.response.success){
                    ROS_INFO("Vehicle armed");
                }
                last_request = ros::Time::now();
            }
        }
        // ************************************************ END OF DRONE SETUP************************************************
        // add code for drone movement here

        if (!look_for_ball || (isnan(ball_location.x) || isnan(ball_location.y) || isnan(ball_location.z))){
        }
        else if (!move_drone){
            if (reading_count < min_readings){
                reading_count++;
            }
            else{
            target_location.pose.position.x = current_location.x + ball_location.z;
            target_location.pose.position.y = current_location.y - ball_location.x;
            target_location.pose.position.z = current_location.z - ball_location.y;
            look_for_ball = false;
            move_drone = true;
            ROS_INFO("Ball Detected");
            cout << "Moving to location " << target_location.pose.position.x << "," << target_location.pose.position.y << "," << target_location.pose.position.z << endl;
            }
        }
        

        if (move_drone){
            local_pos_pub.publish(target_location);
        }
        else{
            local_pos_pub.publish(initial_location);
        }

        ros::spinOnce();
        rate.sleep();
    }

    return 0;
} 
