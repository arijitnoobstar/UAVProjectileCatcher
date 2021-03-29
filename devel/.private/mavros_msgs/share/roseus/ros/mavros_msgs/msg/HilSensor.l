;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::HilSensor)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'HilSensor (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::HILSENSOR")
  (make-package "MAVROS_MSGS::HILSENSOR"))

(in-package "ROS")
;;//! \htmlinclude HilSensor.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::HilSensor
  :super ros::object
  :slots (_header _acc _gyro _mag _abs_pressure _diff_pressure _pressure_alt _temperature _fields_updated ))

(defmethod mavros_msgs::HilSensor
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:acc __acc) (instance geometry_msgs::Vector3 :init))
    ((:gyro __gyro) (instance geometry_msgs::Vector3 :init))
    ((:mag __mag) (instance geometry_msgs::Vector3 :init))
    ((:abs_pressure __abs_pressure) 0.0)
    ((:diff_pressure __diff_pressure) 0.0)
    ((:pressure_alt __pressure_alt) 0.0)
    ((:temperature __temperature) 0.0)
    ((:fields_updated __fields_updated) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _acc __acc)
   (setq _gyro __gyro)
   (setq _mag __mag)
   (setq _abs_pressure (float __abs_pressure))
   (setq _diff_pressure (float __diff_pressure))
   (setq _pressure_alt (float __pressure_alt))
   (setq _temperature (float __temperature))
   (setq _fields_updated (round __fields_updated))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:acc
   (&rest __acc)
   (if (keywordp (car __acc))
       (send* _acc __acc)
     (progn
       (if __acc (setq _acc (car __acc)))
       _acc)))
  (:gyro
   (&rest __gyro)
   (if (keywordp (car __gyro))
       (send* _gyro __gyro)
     (progn
       (if __gyro (setq _gyro (car __gyro)))
       _gyro)))
  (:mag
   (&rest __mag)
   (if (keywordp (car __mag))
       (send* _mag __mag)
     (progn
       (if __mag (setq _mag (car __mag)))
       _mag)))
  (:abs_pressure
   (&optional __abs_pressure)
   (if __abs_pressure (setq _abs_pressure __abs_pressure)) _abs_pressure)
  (:diff_pressure
   (&optional __diff_pressure)
   (if __diff_pressure (setq _diff_pressure __diff_pressure)) _diff_pressure)
  (:pressure_alt
   (&optional __pressure_alt)
   (if __pressure_alt (setq _pressure_alt __pressure_alt)) _pressure_alt)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:fields_updated
   (&optional __fields_updated)
   (if __fields_updated (setq _fields_updated __fields_updated)) _fields_updated)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _acc
    (send _acc :serialization-length)
    ;; geometry_msgs/Vector3 _gyro
    (send _gyro :serialization-length)
    ;; geometry_msgs/Vector3 _mag
    (send _mag :serialization-length)
    ;; float32 _abs_pressure
    4
    ;; float32 _diff_pressure
    4
    ;; float32 _pressure_alt
    4
    ;; float32 _temperature
    4
    ;; uint32 _fields_updated
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _acc
       (send _acc :serialize s)
     ;; geometry_msgs/Vector3 _gyro
       (send _gyro :serialize s)
     ;; geometry_msgs/Vector3 _mag
       (send _mag :serialize s)
     ;; float32 _abs_pressure
       (sys::poke _abs_pressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_pressure
       (sys::poke _diff_pressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pressure_alt
       (sys::poke _pressure_alt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _fields_updated
       (write-long _fields_updated s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _acc
     (send _acc :deserialize buf ptr-) (incf ptr- (send _acc :serialization-length))
   ;; geometry_msgs/Vector3 _gyro
     (send _gyro :deserialize buf ptr-) (incf ptr- (send _gyro :serialization-length))
   ;; geometry_msgs/Vector3 _mag
     (send _mag :deserialize buf ptr-) (incf ptr- (send _mag :serialization-length))
   ;; float32 _abs_pressure
     (setq _abs_pressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_pressure
     (setq _diff_pressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pressure_alt
     (setq _pressure_alt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _fields_updated
     (setq _fields_updated (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mavros_msgs::HilSensor :md5sum-) "2a892891e5c40d6dd1066bf1f394b5dc")
(setf (get mavros_msgs::HilSensor :datatype-) "mavros_msgs/HilSensor")
(setf (get mavros_msgs::HilSensor :definition-)
      "# HilSensor.msg
#
# ROS representation of MAVLink HIL_SENSOR
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#HIL_SENSOR

std_msgs/Header header

geometry_msgs/Vector3 acc
geometry_msgs/Vector3 gyro
geometry_msgs/Vector3 mag
float32 abs_pressure
float32 diff_pressure
float32 pressure_alt
float32 temperature
uint32 fields_updated

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
")



(provide :mavros_msgs/HilSensor "2a892891e5c40d6dd1066bf1f394b5dc")


