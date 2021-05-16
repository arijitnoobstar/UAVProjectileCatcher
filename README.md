
# Software and Control Architecture of a Ball Catching Drone
This repository hosts a ROS workspace of the control and software architecture of a ball catching drone in a Gazebo simulation. All details can be found in [`ME4232_Final_Report.pdf`](https://github.com/arijitnoobstar/UAVProjectileCatcher/blob/master/ME4232_Final_Report.pdf) with a summarised version in our poster, [`ME4232poster.pdf`](https://github.com/arijitnoobstar/UAVProjectileCatcher/blob/master/ME4232poster.pdf). The catkin workspace was made in ROS Melodic (Ubuntu 18.04).

We attempt to intercept the path of a moving ball 

<img 
src="https://github.com/arijitnoobstar/UAVProjectileCatcher/blob/master/ball_simulation.png" width="500" />

with a drone in simulation

<img 
src="https://github.com/arijitnoobstar/UAVProjectileCatcher/blob/master/drone_simulation.png" width="500" />

via a depth camera

<img 
src="https://github.com/arijitnoobstar/UAVProjectileCatcher/blob/master/depth_camera_rviz.png" width="500" />

After filtering the image using colour thresholding and fringe point removal by removing points that are over 2 standard deviations from the center of the detected ball, we get the following result in simulation:

<img 
src="https://github.com/arijitnoobstar/UAVProjectileCatcher/blob/master/filtered_image.PNG" width="500" />

We then consider multiple possible path planning options for the drone. The first test being a simple detection and collision with a stationary ball

<img 
src="https://github.com/arijitnoobstar/UAVProjectileCatcher/blob/master/method1_static.png" width="500" />

The next method is to simply chase after the ball in a 'cat chase mouse' method where the drone moves towards a moving ball and yaws if it starts to leave the view of the depth camera.

 <img 
src="https://github.com/arijitnoobstar/UAVProjectileCatcher/blob/master/method1_moving2.png" width="500" />

The issue with this method is that it is not very efficient, so a better way would be to predict the path of the ball via trajectory prediction and then plan the path of the drone as such. 

 <img 
src="https://github.com/arijitnoobstar/UAVProjectileCatcher/blob/master/efficientvinefficient.png" width="500" />

One example would be to intercept the trajectory of the ball at the point closest to the drone.

 <img 
src="https://github.com/arijitnoobstar/UAVProjectileCatcher/blob/master/method2.png" width="500" />

But the issue with this is that with time, the actual path will deviate from the predicted path.

 <img 
src="https://github.com/arijitnoobstar/UAVProjectileCatcher/blob/master/pathdev.png" width="500" />

Hence it may be better to intercept earlier along a ball's path even if it may not be the closest to the drone.

 <img 
src="https://github.com/arijitnoobstar/UAVProjectileCatcher/blob/master/method3.png" width="500" />

The dashboard of the control & software architecture in the Ubuntu 18.04 terminal is as shown

<img 
src="https://github.com/arijitnoobstar/UAVProjectileCatcher/blob/master/dashboard.png" width="500" />

The RQT graph of all ROS topics and nodes is as shown:

<img 
src="https://github.com/arijitnoobstar/UAVProjectileCatcher/blob/master/rqt_graph.png" width="500" />


## Collaborators
[Arijit Dasgupta](https://github.com/arijitnoobstar)

[Jasper Tan](https://github.com/JasperTan97)

[Arjun Agrawal](https://github.com/arjvn)
