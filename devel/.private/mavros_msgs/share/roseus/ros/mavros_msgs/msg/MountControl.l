;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::MountControl)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'MountControl (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::MOUNTCONTROL")
  (make-package "MAVROS_MSGS::MOUNTCONTROL"))

(in-package "ROS")
;;//! \htmlinclude MountControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MAV_MOUNT_MODE_RETRACT*" (find-package "MAVROS_MSGS::MOUNTCONTROL"))
(shadow '*MAV_MOUNT_MODE_RETRACT* (find-package "MAVROS_MSGS::MOUNTCONTROL"))
(defconstant mavros_msgs::MountControl::*MAV_MOUNT_MODE_RETRACT* 0)
(intern "*MAV_MOUNT_MODE_NEUTRAL*" (find-package "MAVROS_MSGS::MOUNTCONTROL"))
(shadow '*MAV_MOUNT_MODE_NEUTRAL* (find-package "MAVROS_MSGS::MOUNTCONTROL"))
(defconstant mavros_msgs::MountControl::*MAV_MOUNT_MODE_NEUTRAL* 1)
(intern "*MAV_MOUNT_MODE_MAVLINK_TARGETING*" (find-package "MAVROS_MSGS::MOUNTCONTROL"))
(shadow '*MAV_MOUNT_MODE_MAVLINK_TARGETING* (find-package "MAVROS_MSGS::MOUNTCONTROL"))
(defconstant mavros_msgs::MountControl::*MAV_MOUNT_MODE_MAVLINK_TARGETING* 2)
(intern "*MAV_MOUNT_MODE_RC_TARGETING*" (find-package "MAVROS_MSGS::MOUNTCONTROL"))
(shadow '*MAV_MOUNT_MODE_RC_TARGETING* (find-package "MAVROS_MSGS::MOUNTCONTROL"))
(defconstant mavros_msgs::MountControl::*MAV_MOUNT_MODE_RC_TARGETING* 3)
(intern "*MAV_MOUNT_MODE_GPS_POINT*" (find-package "MAVROS_MSGS::MOUNTCONTROL"))
(shadow '*MAV_MOUNT_MODE_GPS_POINT* (find-package "MAVROS_MSGS::MOUNTCONTROL"))
(defconstant mavros_msgs::MountControl::*MAV_MOUNT_MODE_GPS_POINT* 4)
(defclass mavros_msgs::MountControl
  :super ros::object
  :slots (_header _mode _pitch _roll _yaw _altitude _latitude _longitude ))

(defmethod mavros_msgs::MountControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) 0)
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    ((:yaw __yaw) 0.0)
    ((:altitude __altitude) 0.0)
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode (round __mode))
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   (setq _yaw (float __yaw))
   (setq _altitude (float __altitude))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _mode
    1
    ;; float32 _pitch
    4
    ;; float32 _roll
    4
    ;; float32 _yaw
    4
    ;; float32 _altitude
    4
    ;; float32 _latitude
    4
    ;; float32 _longitude
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _altitude
     (setq _altitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _latitude
     (setq _latitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude
     (setq _longitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mavros_msgs::MountControl :md5sum-) "214cf13a68b4fed9e2a77b1b436f144e")
(setf (get mavros_msgs::MountControl :datatype-) "mavros_msgs/MountControl")
(setf (get mavros_msgs::MountControl :definition-)
      "# MAVLink message: DO_MOUNT_CONTROL
# https://mavlink.io/en/messages/common.html#MAV_CMD_DO_MOUNT_CONTROL

std_msgs/Header header

uint8 mode # See enum MAV_MOUNT_MODE.
uint8 MAV_MOUNT_MODE_RETRACT = 0
uint8 MAV_MOUNT_MODE_NEUTRAL = 1
uint8 MAV_MOUNT_MODE_MAVLINK_TARGETING = 2
uint8 MAV_MOUNT_MODE_RC_TARGETING = 3
uint8 MAV_MOUNT_MODE_GPS_POINT = 4

float32 pitch # roll degrees or degrees/second depending on mount mode.
float32 roll # roll degrees or degrees/second depending on mount mode.
float32 yaw # roll degrees or degrees/second depending on mount mode.
float32 altitude  # altitude depending on mount mode.
float32 latitude # latitude in degrees * 1E7, set if appropriate mount mode.
float32 longitude # longitude in degrees * 1E7, set if appropriate mount mode.
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

")



(provide :mavros_msgs/MountControl "214cf13a68b4fed9e2a77b1b436f144e")


