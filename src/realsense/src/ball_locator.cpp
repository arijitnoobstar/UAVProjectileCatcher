#include <ros/ros.h>
#include <pcl_ros/point_cloud.h>
#include <pcl/point_types.h>
#include <geometry_msgs/Point.h>
#include <numeric>

using namespace std;

typedef pcl::PointCloud<pcl::PointXYZRGB> PointCloud;
typedef pcl::PointXYZRGB PointData;
typedef Eigen::aligned_allocator<PointData> EigenPointData;

// Function Declarations
void callback(const PointCloud::ConstPtr&);
void findball(std::vector<PointData, EigenPointData>&);
void isolate_ball(std::vector<PointData, EigenPointData>&, float&, float&, float&);

// Global publisher pointers
ros::Publisher *ball_points_pubPtr;
ros::Publisher *ball_geom_pubPtr;

//Colour Range CONFIG
int red_lower = 0;
int red_upper = 255;
int blue_lower = 0;
int blue_upper = 255;
int green_lower = 0;
int green_upper = 255;


void isolate_ball(std::vector<PointData, EigenPointData> &Frame, float& ball_x, float& ball_y, float& ball_z){
	// Assign x, y values to new vector
	std::vector<float> xs;
	std::vector<float> ys;
	for (auto i = Frame.begin(); i != Frame.end(); i++){
		xs.push_back(i->x);
		ys.push_back(i->y);
	}
	
	// FINDING STDDEV
	// Find sum
	float sum_x = std::accumulate(xs.begin(), xs.end(), 0.0);
	float sum_y = std::accumulate(ys.begin(), ys.end(), 0.0);
	// Mean
	float mean_x = sum_x / xs.size();
	float mean_y = sum_y / ys.size();
	// Sum of squares (std::inner_product(first1, last1, first2, init)
	float sq_sum_x = std::inner_product(xs.begin(), xs.end(), xs.begin(), 0.0);
	float sq_sum_y = std::inner_product(ys.begin(), ys.end(), ys.begin(), 0.0);
	// 2 stddev using n-1 as population mean unknown (93% of points in here)
	float stdev_x = 2* std::sqrt(sq_sum_x / (xs.size()-1) - mean_x * mean_x);
	float stdev_y = 2* std::sqrt(sq_sum_y / (xs.size()-1) - mean_y * mean_y);
	
	std::vector<PointData, EigenPointData> temp;
	// Get rid of fringe points
	for (auto i = Frame.begin(); i != Frame.end(); i++){
		if (i->x >= mean_x - stdev_x && i->x <= mean_x + stdev_x &&
			i->y >= mean_y - stdev_y && i->y <= mean_y + stdev_y)
			temp.push_back(*i);
	}
	
	// Pass the x,y,z values back to the callback function
	std::vector<float> newx;
	std::vector<float> newy;
	std::vector<float> newz;
	for (auto i = temp.begin(); i != temp.end(); i++){
		newx.push_back(i->x);
		newy.push_back(i->y);
		newz.push_back(i->z);
	}
	ball_x = std::accumulate(newx.begin(), newx.end(), 0.0) / newx.size();
	ball_y = std::accumulate(newy.begin(), newy.end(), 0.0) / newy.size();
	ball_z = std::accumulate(newz.begin(), newz.end(), 0.0) / newz.size();
	
	// Swap the pointers
	Frame.swap(temp);
}

void findball(std::vector<PointData, EigenPointData> &Frame){
	std::vector<PointData, EigenPointData> temp;
	//identify ball based on colour selection
	for (auto i = Frame.begin(); i != Frame.end(); i++){
		if (i->r >= red_lower && i -> r <= red_upper &&
			i->b >= blue_lower && i -> b <= blue_upper &&
			i->g >= green_lower && i -> g <= green_upper)
			temp.push_back(*i);
	}
	Frame.swap(temp);
}

void callback(const PointCloud::ConstPtr& msg)
{
	// Create Frame to hold points from the RealSense camera
	std::vector<PointData, EigenPointData> Frame = msg->points;
	// Create x,y,z coordinates for ball
	float ball_x; float ball_y; float ball_z;	
	
	//find the ball, almost, with background
	findball(Frame);
	isolate_ball(Frame, ball_x, ball_y, ball_z);

	// Now we publish the filtered point cloud under the ball_points topic
	PointCloud::Ptr ball_points_msg (new PointCloud);
	ball_points_msg->header.frame_id = "camera_depth_optical_frame";
	ball_points_msg->height =1;
	ball_points_msg->width = Frame.size();
	ball_points_msg->points = Frame;
	ball_points_pubPtr->publish(ball_points_msg);

	// Finally, publish the x,y,z coordinates of the ball centroid
	geometry_msgs::Point::Ptr ball_geom_msg (new geometry_msgs::Point);
	ball_geom_msg->x = ball_x;
	ball_geom_msg->y = ball_y;
	ball_geom_msg->z = ball_z;
	ball_geom_pubPtr->publish(ball_geom_msg);
}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "ball_locator_node");
	ros::NodeHandle nh;

	// extract colour parameters (stored in config/ball_colour.yaml)
	nh.getParam("red_lower", red_lower);
	nh.getParam("red_upper", red_upper);
	nh.getParam("blue_lower", blue_lower);
	nh.getParam("blue_upper", blue_upper);
	nh.getParam("green_lower", green_lower);
	nh.getParam("green_upper", green_upper);

	ros::Subscriber sub = nh.subscribe<PointCloud>("/camera/depth/color/points", 1, callback);
	ball_points_pubPtr = new ros::Publisher(nh.advertise<PointCloud>("ball_points", 10000));
	ball_geom_pubPtr = new ros::Publisher(nh.advertise<geometry_msgs::Point>("ball_geom", 10000));

	ros::spin();

	delete ball_points_pubPtr;
	delete ball_geom_pubPtr;
}