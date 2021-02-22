#!/usr/bin/env python2

import rospy
from sensor_msgs.msg import PointCloud2, PointField
import numpy as np
import sensor_msgs.point_cloud2 as pc2
import ctypes
import struct



def callback(ros_point_cloud):
	#xyzrgb = np.array([[0,0,0,0,0,0]])
	#rgb = np.array([[0,0,0]])
	gen = pc2.read_points(ros_point_cloud, skip_nans=True)
	int_data = list(gen)
	i = 0
	#rospy.loginfo(len(int_data))
	xyzrgb = []
	for x in int_data:
		test = x[3] 
		# cast float32 to int so that bitwise operations are possible
		s = struct.pack('>f' ,test)
		i = struct.unpack('>l',s)[0]
		# you can get back the float value by the inverse operations
		pack = ctypes.c_uint32(i).value
		r = (pack & 0x00FF0000)>> 16
		g = (pack & 0x0000FF00)>> 8
		b = (pack & 0x000000FF)
		#rospy.loginfo("rgbxyz: %i, %i, %i, %f, %f, %f", r,g,b,x[0],x[1],x[2])
		xyzrgb.append([x[0],x[1],x[2],r,g,b])
	
	xyzrgb_npArr = np.append(xyzrgb, [[x[0],x[1],x[2],r,g,b]], axis = 0)
	
	likely_ball_location = findball(xyzrgb_npArr)

	rospy.loginfo("finished")

	#for x in likely_ball_location: 
		#rospy.loginfo("callback: %f, %f, %f, %i, %i, %i",x[0], x[1], x[2], x[3], x[4], x[5])

	
def findball(array):
	#insert ball colour below
	red_lower = 0
	red_upper = 255
	blue_lower = 0
	blue_upper = 255
	green_lower = 0
	green_upper = 255
	
	likely_ball_location = array[np.logical_and(np.logical_and(array[:,3]>=red_lower, array[:,3]<=red_upper), np.logical_and(np.logical_and(array[:,4]>=blue_lower, array[:,4]<=blue_upper),np.logical_and(array[:,5]>=green_lower,array[:,5]<=green_upper)))]	

	#for x in likely_ball_location: 
		#rospy.loginfo("findball: %f, %f, %f, %i, %i, %i",x[0], x[1], x[2], x[3], x[4], x[5])

	
	return likely_ball_location


def listener():
	rospy.init_node('pc2pubsub', anonymous=False)
	
	cloud_sub = rospy.Subscriber("/camera/depth/color/points", PointCloud2, callback, queue_size=1, buff_size=52428800)
	
	rospy.spin()
	
if __name__ == '__main__':
	listener()
	

