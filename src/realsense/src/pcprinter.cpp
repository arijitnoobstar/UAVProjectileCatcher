#include <ros/ros.h>
#include <pcl_ros/point_cloud.h>
#include <pcl/point_types.h>
#include <boost/foreach.hpp>
#include <sensor_msgs/PointCloud2.h>
#include <numeric>
//#include <pcl/point_cloud.h>
//#include <pcl_conversions/pcl_conversions.h>

using namespace std;

int deletelater;

typedef pcl::PointCloud<pcl::PointXYZRGB> PointCloud;

//change colour selection here
int red_lower = 128;
int red_upper = 255;
int blue_lower = 0;
int blue_upper = 255;
int green_lower = 0;
int green_upper = 255;

struct A_Point{
	float x;
	float y;
	float z;
	uint8_t r;
	uint8_t g;
	uint8_t b;
} ;

ros::Publisher *pubPtr;

void isolate_ball(std::vector<A_Point> &vect, float* avg_x, float* avg_y, float* avg_z){
	//assign x, y values to new vector
	std::vector<float> xs;
	std::vector<float> ys;
	for (auto i = vect.begin(); i != vect.end(); i++){
		xs.push_back(i->x);
		ys.push_back(i->y);
	}
	
	//FINDING STDDEV
	//find sum
	float sum_x = std::accumulate(xs.begin(), xs.end(), 0.0);
	float sum_y = std::accumulate(ys.begin(), ys.end(), 0.0);
	//mean
	float mean_x = sum_x / xs.size();
	float mean_y = sum_y / ys.size();
	//sum of squares (std::inner_product(first1, last1, first2, init)
	float sq_sum_x = std::inner_product(xs.begin(), xs.end(), xs.begin(), 0.0);
	float sq_sum_y = std::inner_product(ys.begin(), ys.end(), ys.begin(), 0.0);
	//2 stddev using n-1 as population mean unknown (93% of points in here)
	float stdev_x = 2* std::sqrt(sq_sum_x / (xs.size()-1) - mean_x * mean_x);
	float stdev_y = 2* std::sqrt(sq_sum_y / (xs.size()-1) - mean_y * mean_y);
	
	std::vector<A_Point> temp;
	//get rid of fringe points
	for (auto i = vect.begin(); i != vect.end(); i++){
		if (i->x >= mean_x - stdev_x && i->x <= mean_x + stdev_x &&
			i->y >= mean_y - stdev_y && i->y <= mean_y + stdev_y)
			temp.push_back(*i);
	}
	
	//pass the x,y,z values back to the callback function
	std::vector<float> newx;
	std::vector<float> newy;
	std::vector<float> newz;
	for (auto i = temp.begin(); i != temp.end(); i++){
		newx.push_back(i->x);
		newy.push_back(i->y);
		newz.push_back(i->z);
	}
	*avg_x = std::accumulate(newx.begin(), newx.end(), 0.0) / newx.size();
	*avg_y = std::accumulate(newy.begin(), newy.end(), 0.0) / newy.size();
	*avg_z = std::accumulate(newz.begin(), newz.end(), 0.0) / newz.size();
	
	//swap da pointers
	vect.swap(temp);
}

void findball(std::vector<A_Point> &vect){
	std::vector<A_Point> temp;
	//identify ball based on colour selection
	for (auto i = vect.begin(); i != vect.end(); i++){
		if (i->r >= red_lower && i -> r <= red_upper &&
			i->b >= blue_lower && i -> b <= blue_upper &&
			i->g >= green_lower && i -> g <= green_upper)
			temp.push_back(*i);
	}
	vect.swap(temp);
}

void callback(const PointCloud::ConstPtr& msgIn)
{
	std::vector<A_Point> Frame;
	float ball_x; float ball_y; float ball_z;
	
	//printf ("Cloud: width = %d, height = %d\n", msg->width, msg->height);
	//put *msg.points.x/y/z/r/g/b in struct A_Point
	BOOST_FOREACH (const pcl::PointXYZRGB& pt, msgIn->points){
		A_Point i;
		i.x = pt.x;
		i.y = pt.y;
		i.z = pt.z;
		i.r = pt.r;
		i.g = pt.g;
		i.b = pt.b;
		Frame.push_back(i);
		//printf ("\t(%f, %f, %f, %i ,%i, %i)\n", pt.x, pt.y, pt.z, pt.r, pt.g, pt.b);
	}
	//printf("end\n");
	
	//find the ball, almost, with background
	findball(Frame);
	//printf("size1:%lu\n",Frame.size());
	isolate_ball(Frame, &ball_x, &ball_y, &ball_z);
	//printf("size2:%lu\n",Frame.size());
	//printf("Ballcoords: %f, %f, %f", ball_x, ball_y, ball_z);
	
	PointCloud::Ptr msgOut (new PointCloud);
	msgOut->header.frame_id = "camera_depth_optical_frame";
	msgOut->height =1;
	msgOut->width = Frame.size();
	
	for(auto i = Frame.begin(); i != Frame.end(); i++){
		pcl::PointXYZRGB a;
		a.x = i->x;
		a.y = i->y;
		a.z = i->z;
		a.r = i->r;
		a.g = i->g;
		a.b = i->b;
		msgOut->points.push_back(a);
		}

	pubPtr->publish(msgOut);
	//BOOST_FOREACH (const A_Point pt, Frame) printf ("\t(%f, %f, %f, %i ,%i, %i)\n", pt.x, pt.y, pt.z, pt.r, pt.g, pt.b);
	//printf("end\n");
	//ROS_INFO("Finished");
}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "pcl_to_pc2");
	ros::NodeHandle nh;

	ros::Subscriber sub = nh.subscribe<PointCloud>("/camera/depth/color/points", 1, callback);
	pubPtr = new ros::Publisher(nh.advertise<PointCloud>("locatedball", 10000));
	ros::spin();

	delete pubPtr;
}
