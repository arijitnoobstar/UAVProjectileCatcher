/**
 * @file offb_node.cpp
 * @brief Offboard control example node, written with MAVROS version 0.19.x, PX4 Pro Flight
 * Stack and tested in Gazebo SITL
 */

#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/TwistStamped.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>

using namespace std; 

mavros_msgs::State current_state;
void state_cb(const mavros_msgs::State::ConstPtr& msg){
	//cout << "statecb" << endl;
    current_state = *msg;
}

float altitude;
void pose_cb(const geometry_msgs::PoseStamped::ConstPtr& msg)
{
	altitude = msg->pose.position.z;
	//ROS_INFO("I heard: [%f]", msg->pose.position.z);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "offb_node");
    ros::NodeHandle nh;

    ros::Subscriber state_sub = nh.subscribe<mavros_msgs::State>
            ("mavros/state", 10, state_cb);
	// adding in subscriber to current position 
	ros::Subscriber local_pos_sub = nh.subscribe<geometry_msgs::PoseStamped>
			("mavros/local_position/pose", 10, pose_cb);
    ros::Publisher local_pos_pub = nh.advertise<geometry_msgs::PoseStamped>
            ("mavros/setpoint_position/local", 10);
    // adding in a cmd_vel option in the code
	ros::Publisher vel_pub = nh.advertise<geometry_msgs::TwistStamped>("/mavros/setpoint_velocity/cmd_vel", 1000);
    ros::ServiceClient arming_client = nh.serviceClient<mavros_msgs::CommandBool>
            ("mavros/cmd/arming");
    ros::ServiceClient set_mode_client = nh.serviceClient<mavros_msgs::SetMode>
            ("mavros/set_mode");

    //the setpoint publishing rate MUST be faster than 2Hz
    ros::Rate rate(20.0);

    ROS_INFO("Connecting to drone");
    // wait for FCU connection
    while(ros::ok() && !current_state.connected){
    	cout << current_state.connected << endl;
        ros::spinOnce();
        rate.sleep();
    }
    ROS_INFO("Connected!");


	geometry_msgs::TwistStamped msg;
	msg.twist.linear.x = 0;
	msg.twist.linear.y = 0;
	msg.twist.linear.z = 0.5;

    geometry_msgs::PoseStamped pose;
    pose.pose.position.x = -1;
    pose.pose.position.y = -1;
    pose.pose.position.z = 0.5;

	// flipper bool
	bool flipper = true;

    //send a few setpoints before starting
    for(int i = 100; ros::ok() && i > 0; --i){
        vel_pub.publish(msg);
		//local_pos_pub.publish(pose);
        ros::spinOnce();
        rate.sleep();
    }

    ROS_INFO("Setting mode to OFFBOARD");
    mavros_msgs::SetMode offb_set_mode;
    offb_set_mode.request.custom_mode = "OFFBOARD";
    ROS_INFO("Drone is in OFFBOARD mode");

    ROS_INFO("Arming drone");
    mavros_msgs::CommandBool arm_cmd;
    arm_cmd.request.value = true;
    ROS_INFO("Drone armed");

    ros::Time last_request = ros::Time::now();

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

		if (!flipper){
			msg.twist.linear.x = 0;
			msg.twist.linear.y = 0;
			msg.twist.linear.z = -0.5;
			if (altitude < 2){
				flipper = true;
			}
		}
		else{
			msg.twist.linear.x = 0;
			msg.twist.linear.y = 0;
			msg.twist.linear.z = 0.5;
			if (altitude > 5){
				flipper = false;
			}
		}
			
		//local_pos_pub.publish(pose);
        vel_pub.publish(msg);

        ros::spinOnce();
        rate.sleep();
    }

    return 0;
} 
