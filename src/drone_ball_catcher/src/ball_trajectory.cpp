#include <ros/ros.h>
#include <pcl_ros/point_cloud.h>
#include <pcl/point_types.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/PoseArray.h>
#include <cmath>
#include <string>
#include <deque>

using namespace std;

struct point_t{
	float x;
	float y;
	float z;
	double t;
};

// CONFIG
const int frame_cycle = 5; // max number of frames in queue for velocity estimation, a highher value reduces random error, but is less sensitive to acceleration changes
const double TIME_STEP = 0.1; // in seconds
const double MAX_TIME_PATH_PLANNING = 10; // in seconds
const double PI = 3.1415265;
const double MASS = 0.0027; // in KG
const double G = 9.781;// approx G in Singapore (in m/s^2)
const double DRAG_COEF = 0.5; // for spheres at approx Reynold Number 5000
const double BALL_DIAMETER = 0.04; // in metres
const double AIR_DENSITY = 1.225; // in kg/m^3
string goal_type = "plane_fixed";

// Global publisher pointer
ros::Publisher *setpoint_pubPtr;

// Create deque for the points and other global variables
deque<point_t> PoseData;
geometry_msgs::Point::Ptr goal (new geometry_msgs::Point); // setpoint location for drone
double t_0; // initial time
double mag_V, v_x, v_y, v_z; // velocities
double phi, theta; // angles (phi is Z to X axis and theta is X to Y axis)
double sum_t, sum_t_2, sum_x, sum_y, sum_z, sum_tx, sum_ty, sum_tz; // intermediate values for linear regression
double drag, s_x, s_y, s_z, a_x, a_y, a_z; // trajectory prediction intermediate variables
bool goal_uncheck = true; // bool variable check for iterative algorithm to stop 

// Function Declarations
void callback(const geometry_msgs::Point::ConstPtr&);
void add_point(const geometry_msgs::Point&);
void compute_velocities();
void predict_trajectory();
bool implement_plane_fixed_goal();

bool plane_fixed_path_planning(){
	if (s_z <= 0){
		// set the goal setpoint for the drone
		goal->x = s_x;
		goal->y = s_y;
		goal->z = 0;
		return false;
	}
	else{
		return true;
	}
}

void compute_velocities(){
	// computes velocities using least squares linear regression
	// set intermediate values as 0.0;
	sum_t, sum_t_2, sum_x, sum_y, sum_z, sum_tx, sum_ty, sum_tz = 0.0;
	// loop through PoseData to calculate intermediate values
	for (int i = 0; i < PoseData.size(); ++i){
		sum_t += PoseData[i].t;
		sum_t_2 += pow(PoseData[i].t, 2);
		sum_x += PoseData[i].x;
		sum_y += PoseData[i].y;
		sum_z += PoseData[i].z;
		sum_tx += PoseData[i].t * PoseData[i].x;
		sum_ty += PoseData[i].t * PoseData[i].y;
		sum_tz += PoseData[i].t * PoseData[i].z;
	}
	// Apply least squares formula to calculate the slopes (velocity)
	v_x = (PoseData.size() * sum_tx - sum_x * sum_t) / (PoseData.size() * sum_t_2 - pow(sum_t, 2));
	v_y = (PoseData.size() * sum_ty - sum_y * sum_t) / (PoseData.size() * sum_t_2 - pow(sum_t, 2));
	v_z = (PoseData.size() * sum_tz - sum_z * sum_t) / (PoseData.size() * sum_t_2 - pow(sum_t, 2));
}

void predict_trajectory(){
	// create vector for predicted trajectory
	vector<point_t> PredictedPose;
	// Calculate the maximum iteration count based on slowest speed approximation
	double max_count = MAX_TIME_PATH_PLANNING / TIME_STEP;
	int count = 0;
	while(goal_uncheck && count <= max_count){
		// calculate the velocity magnitude, vector angles, acclerations wrt point cloud frame
		mag_V = sqrt(pow(v_x, 2) + pow(v_y, 2) + pow(v_z, 2));
		phi = atan2(v_x, v_z);
		theta = atan2(v_y, v_x);	
		drag = 0.5 * AIR_DENSITY * DRAG_COEF * pow(mag_V, 2) * PI * pow(BALL_DIAMETER / 2, 2);
		a_x = - (drag / MASS) * sin(phi) * cos(theta);
		a_y = G - (drag / MASS) * sin(phi) * sin(theta);
		a_z = - (drag / MASS) * cos(phi) * cos(theta);
		// caclulate the displacements in x,y,z direction after one time step using the equation of motion (assuming constant velocity throughout the time step)
		s_x = v_x * TIME_STEP + 0.5 * a_x * pow(TIME_STEP, 2);
		s_y = v_y * TIME_STEP + 0.5 * a_x * pow(TIME_STEP, 2);
		s_z = v_z * TIME_STEP + 0.5 * a_z * pow(TIME_STEP, 2);
		// update velocities in 3 directions after one time step (assuming constant acceleration)
		v_x = v_x + a_x * TIME_STEP;
		v_y = v_y + a_y * TIME_STEP;
		v_z = v_z + a_z * TIME_STEP;
		// check to see if iterative steps should cease
		if (goal_type == "plane_fixed"){
			goal_uncheck = plane_fixed_path_planning();
		}
		count++;
	}
}

void add_point(const geometry_msgs::Point& pt){
	// Add point to PoseData deque
	point_t temp_point_t;
	temp_point_t.x = pt.x;
	temp_point_t.y = pt.y;
	temp_point_t.z = pt.z;
	// use ROS time to input time
	if (PoseData.size() == 0){
		t_0 = ros::Time::now().toSec();
		temp_point_t.t = 0.0;
	}
	else{
		temp_point_t.t = ros::Time::now().toSec() - t_0;
	}
	// push to the front
	PoseData.push_front(temp_point_t);
}


void callback(const geometry_msgs::Point::ConstPtr& msg)
{
	if (PoseData.size() < frame_cycle){
		add_point(*msg);
		// ensure that at least two data points are present;
		if (PoseData.size() < 2){
			return;
		}
	}
	else{
		// remove the first point in the frame cycle and add the new point (like a queue)
		PoseData.pop_back();
		add_point(*msg);
	}
	// set default goal->x setpoint to NAN first (math.h macro)
	goal->x = NAN;
	// calculate the velocities in 3 directions and get the Magnitude of V and its angles
	compute_velocities();
	// predict the trajectory of ball and conduct drone path planning and extract goal setpoint
	predict_trajectory();
	// publish goal setpoint
	if(true || !isnan(goal->x)){
		setpoint_pubPtr->publish(goal);
	}
}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "ball_trajectory_node");
	ros::NodeHandle nh;

	ros::Subscriber sub = nh.subscribe<geometry_msgs::Point>("ball_geom", 10000, callback);
	setpoint_pubPtr = new ros::Publisher(nh.advertise<geometry_msgs::Point>("setpoint", 10000));

	ros::spin();

	delete setpoint_pubPtr;
}