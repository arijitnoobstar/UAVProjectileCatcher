#include <ros/ros.h>
#include <pcl_ros/point_cloud.h>
#include <pcl/point_types.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/PoseArray.h>
#include <numeric>

using namespace std;

// Function Declarations
void callback(const geometry_msgs::Point::ConstPtr&);

// Global publisher pointers
ros::Publisher *ball_path_pubPtr;

void callback(const geometry_msgs::Point::ConstPtr& msg)
{
	
}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "ball_trajectory_node");
	ros::NodeHandle nh;

	ros::Subscriber sub = nh.subscribe<geometry_msgs::Point>("ball_geom", 10000, callback);
	ball_path_pubPtr = new ros::Publisher(nh.advertise<geometry_msgs::PoseArray>("ball_path", 10000));

	ros::spin();

	delete ball_path_pubPtr;
}