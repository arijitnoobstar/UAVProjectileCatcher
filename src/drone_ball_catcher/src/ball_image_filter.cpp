#include <ros/ros.h>
#include <sensor_msgs/Image.h>

using namespace std;

// Function Declarations
void callback(const sensor_msgs::Image::ConstPtr&);

// Global publisher pointers
ros::Publisher *filtered_image_pubPtr;

//Colour Range CONFIG
int red_lower = 0;
int red_upper = 255;
int blue_lower = 0;
int blue_upper = 255;
int green_lower = 0;
int green_upper = 255;

void callback(const sensor_msgs::Image::ConstPtr& msg)
{
	// Create ImageArr to store data from sensor_msgs/Image image
	std::vector<uint8_t> ImageArr = msg->data;
	// Filter out the B8G8R8 values based on specified range
	for (int i = 0; i < ImageArr.size(); i+= 3){
		if (ImageArr[i] >= blue_lower && ImageArr[i] <= blue_upper &&
			ImageArr[i+1] >= green_lower && ImageArr[i+1] <= green_upper &&
			ImageArr[i+2] >= red_lower && ImageArr[i+2] <= red_upper){
		}
		else{

			ImageArr[i] = 0;
			ImageArr[i+1] = 0;
			ImageArr[i+2] = 0;

		}
	}
	// Publish the filtered ImageArr
	sensor_msgs::Image::Ptr filtered_image_msg (new sensor_msgs::Image);
	filtered_image_msg->header.frame_id = "camera_link";
	filtered_image_msg->header.stamp = ros::Time::now();
	filtered_image_msg->height = msg->height;
	filtered_image_msg->width = msg->width;
	filtered_image_msg->encoding = msg->encoding;
	filtered_image_msg->step = ImageArr.size();
	filtered_image_msg->data = ImageArr;
	filtered_image_pubPtr->publish(filtered_image_msg);

}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "ball_image_filter_node");
	ros::NodeHandle nh;

	// extract colour parameters (stored in config/ball_colour.yaml)
	nh.getParam("red_lower", red_lower);
	nh.getParam("red_upper", red_upper);
	nh.getParam("green_lower", green_lower);
	nh.getParam("green_upper", green_upper);
	nh.getParam("blue_lower", blue_lower);
	nh.getParam("blue_upper", blue_upper);

	ros::Subscriber sub = nh.subscribe<sensor_msgs::Image>("/camera/rgb/image_raw", 1, callback);
	filtered_image_pubPtr = new ros::Publisher(nh.advertise<sensor_msgs::Image>("filtered_image/image_raw", 10000));


	ros::spin();

	delete filtered_image_pubPtr;
}