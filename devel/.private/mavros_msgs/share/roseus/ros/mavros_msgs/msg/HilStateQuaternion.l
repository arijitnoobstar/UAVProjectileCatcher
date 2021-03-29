;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::HilStateQuaternion)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'HilStateQuaternion (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::HILSTATEQUATERNION")
  (make-package "MAVROS_MSGS::HILSTATEQUATERNION"))

(in-package "ROS")
;;//! \htmlinclude HilStateQuaternion.msg.html
(if (not (find-package "GEOGRAPHIC_MSGS"))
  (ros::roseus-add-msgs "geographic_msgs"))
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::HilStateQuaternion
  :super ros::object
  :slots (_header _orientation _angular_velocity _linear_acceleration _linear_velocity _geo _ind_airspeed _true_airspeed ))

(defmethod mavros_msgs::HilStateQuaternion
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:angular_velocity __angular_velocity) (instance geometry_msgs::Vector3 :init))
    ((:linear_acceleration __linear_acceleration) (instance geometry_msgs::Vector3 :init))
    ((:linear_velocity __linear_velocity) (instance geometry_msgs::Vector3 :init))
    ((:geo __geo) (instance geographic_msgs::GeoPoint :init))
    ((:ind_airspeed __ind_airspeed) 0.0)
    ((:true_airspeed __true_airspeed) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _orientation __orientation)
   (setq _angular_velocity __angular_velocity)
   (setq _linear_acceleration __linear_acceleration)
   (setq _linear_velocity __linear_velocity)
   (setq _geo __geo)
   (setq _ind_airspeed (float __ind_airspeed))
   (setq _true_airspeed (float __true_airspeed))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:linear_acceleration
   (&rest __linear_acceleration)
   (if (keywordp (car __linear_acceleration))
       (send* _linear_acceleration __linear_acceleration)
     (progn
       (if __linear_acceleration (setq _linear_acceleration (car __linear_acceleration)))
       _linear_acceleration)))
  (:linear_velocity
   (&rest __linear_velocity)
   (if (keywordp (car __linear_velocity))
       (send* _linear_velocity __linear_velocity)
     (progn
       (if __linear_velocity (setq _linear_velocity (car __linear_velocity)))
       _linear_velocity)))
  (:geo
   (&rest __geo)
   (if (keywordp (car __geo))
       (send* _geo __geo)
     (progn
       (if __geo (setq _geo (car __geo)))
       _geo)))
  (:ind_airspeed
   (&optional __ind_airspeed)
   (if __ind_airspeed (setq _ind_airspeed __ind_airspeed)) _ind_airspeed)
  (:true_airspeed
   (&optional __true_airspeed)
   (if __true_airspeed (setq _true_airspeed __true_airspeed)) _true_airspeed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; geometry_msgs/Vector3 _angular_velocity
    (send _angular_velocity :serialization-length)
    ;; geometry_msgs/Vector3 _linear_acceleration
    (send _linear_acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _linear_velocity
    (send _linear_velocity :serialization-length)
    ;; geographic_msgs/GeoPoint _geo
    (send _geo :serialization-length)
    ;; float32 _ind_airspeed
    4
    ;; float32 _true_airspeed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; geometry_msgs/Vector3 _angular_velocity
       (send _angular_velocity :serialize s)
     ;; geometry_msgs/Vector3 _linear_acceleration
       (send _linear_acceleration :serialize s)
     ;; geometry_msgs/Vector3 _linear_velocity
       (send _linear_velocity :serialize s)
     ;; geographic_msgs/GeoPoint _geo
       (send _geo :serialize s)
     ;; float32 _ind_airspeed
       (sys::poke _ind_airspeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _true_airspeed
       (sys::poke _true_airspeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; geometry_msgs/Vector3 _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;; geometry_msgs/Vector3 _linear_acceleration
     (send _linear_acceleration :deserialize buf ptr-) (incf ptr- (send _linear_acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _linear_velocity
     (send _linear_velocity :deserialize buf ptr-) (incf ptr- (send _linear_velocity :serialization-length))
   ;; geographic_msgs/GeoPoint _geo
     (send _geo :deserialize buf ptr-) (incf ptr- (send _geo :serialization-length))
   ;; float32 _ind_airspeed
     (setq _ind_airspeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _true_airspeed
     (setq _true_airspeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mavros_msgs::HilStateQuaternion :md5sum-) "c858c0f05d4ab30256be7c53edee8e3c")
(setf (get mavros_msgs::HilStateQuaternion :datatype-) "mavros_msgs/HilStateQuaternion")
(setf (get mavros_msgs::HilStateQuaternion :definition-)
      "# HilStateQuaternion.msg
#
# ROS representation of MAVLink HIL_STATE_QUATERNION
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#HIL_STATE_QUATERNION

std_msgs/Header header

geometry_msgs/Quaternion orientation
geometry_msgs/Vector3 angular_velocity
geometry_msgs/Vector3 linear_acceleration
geometry_msgs/Vector3 linear_velocity
geographic_msgs/GeoPoint geo
float32 ind_airspeed
float32 true_airspeed

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geographic_msgs/GeoPoint
# Geographic point, using the WGS 84 reference ellipsoid.

# Latitude [degrees]. Positive is north of equator; negative is south
# (-90 <= latitude <= +90).
float64 latitude

# Longitude [degrees]. Positive is east of prime meridian; negative is
# west (-180 <= longitude <= +180). At the poles, latitude is -90 or
# +90, and longitude is irrelevant, but must be in range.
float64 longitude

# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).
float64 altitude

")



(provide :mavros_msgs/HilStateQuaternion "c858c0f05d4ab30256be7c53edee8e3c")


