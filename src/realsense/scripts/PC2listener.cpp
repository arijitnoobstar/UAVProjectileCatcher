#include <ros/ros.h>
#include <pcl_ros/point_cloud.h>
#include <pcl/point_types.h>
#include <boost/foreach.hpp>


typedef pcl::PointCloud<pcl::PointXYZRGB> PointCloud;


void callback(const PointCloud::ConstPtr& msg)
{
	//printf ("Cloud: width = %d, height = %d\n", msg->width, msg->height);
	//std_msgs::Float32MultiArray arr;
	//arr.data.clear();
	BOOST_FOREACH (const pcl::PointXYZRGB& pt, msg->points){
		pointdata.x = pt.x;
		pointdata.y = pt.y;
		pointdata.z = pt.z;
		pointdata.r = pt.r;
		pointdata.g = pt.g;
		pointdata.b = pt.b;
	}
}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "subpub_pcl");
	ros::NodeHandle nh;
	ros::Subscriber sub = nh.subscribe<PointCloud>("/camera/depth/color/points", 1, callback);
	ros::spin();

	ros::Publisher pc2_pub = nh.advertise<std_msgs::Float32MultiArray>("pc2fromcpptopython", 1000);
	ros::Rate loop_rate(10);

	pc2_pub.publish(pointdata);
}
