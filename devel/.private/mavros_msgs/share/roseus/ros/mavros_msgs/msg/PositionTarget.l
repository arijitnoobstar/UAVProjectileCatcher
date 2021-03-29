;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::PositionTarget)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'PositionTarget (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::POSITIONTARGET")
  (make-package "MAVROS_MSGS::POSITIONTARGET"))

(in-package "ROS")
;;//! \htmlinclude PositionTarget.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*FRAME_LOCAL_NED*" (find-package "MAVROS_MSGS::POSITIONTARGET"))
(shadow '*FRAME_LOCAL_NED* (find-package "MAVROS_MSGS::POSITIONTARGET"))
(defconstant mavros_msgs::PositionTarget::*FRAME_LOCAL_NED* 1)
(intern "*FRAME_LOCAL_OFFSET_NED*" (find-package "MAVROS_MSGS::POSITIONTARGET"))
(shadow '*FRAME_LOCAL_OFFSET_NED* (find-package "MAVROS_MSGS::POSITIONTARGET"))
(defconstant mavros_msgs::PositionTarget::*FRAME_LOCAL_OFFSET_NED* 7)
(intern "*FRAME_BODY_NED*" (find-package "MAVROS_MSGS::POSITIONTARGET"))
(shadow '*FRAME_BODY_NED* (find-package "MAVROS_MSGS::POSITIONTARGET"))
(defconstant mavros_msgs::PositionTarget::*FRAME_BODY_NED* 8)
(intern "*FRAME_BODY_OFFSET_NED*" (find-package "MAVROS_MSGS::POSITIONTARGET"))
(shadow '*FRAME_BODY_OFFSET_NED* (find-package "MAVROS_MSGS::POSITIONTARGET"))
(defconstant mavros_msgs::PositionTarget::*FRAME_BODY_OFFSET_NED* 9)
(intern "*IGNORE_PX*" (find-package "MAVROS_MSGS::POSITIONTARGET"))
(shadow '*IGNORE_PX* (find-package "MAVROS_MSGS::POSITIONTARGET"))
(defconstant mavros_msgs::PositionTarget::*IGNORE_PX* 1)
(intern "*IGNORE_PY*" (find-package "MAVROS_MSGS::POSITIONTARGET"))
(shadow '*IGNORE_PY* (find-package "MAVROS_MSGS::POSITIONTARGET"))
(defconstant mavros_msgs::PositionTarget::*IGNORE_PY* 2)
(intern "*IGNORE_PZ*" (find-package "MAVROS_MSGS::POSITIONTARGET"))
(shadow '*IGNORE_PZ* (find-package "MAVROS_MSGS::POSITIONTARGET"))
(defconstant mavros_msgs::PositionTarget::*IGNORE_PZ* 4)
(intern "*IGNORE_VX*" (find-package "MAVROS_MSGS::POSITIONTARGET"))
(shadow '*IGNORE_VX* (find-package "MAVROS_MSGS::POSITIONTARGET"))
(defconstant mavros_msgs::PositionTarget::*IGNORE_VX* 8)
(intern "*IGNORE_VY*" (find-package "MAVROS_MSGS::POSITIONTARGET"))
(shadow '*IGNORE_VY* (find-package "MAVROS_MSGS::POSITIONTARGET"))
(defconstant mavros_msgs::PositionTarget::*IGNORE_VY* 16)
(intern "*IGNORE_VZ*" (find-package "MAVROS_MSGS::POSITIONTARGET"))
(shadow '*IGNORE_VZ* (find-package "MAVROS_MSGS::POSITIONTARGET"))
(defconstant mavros_msgs::PositionTarget::*IGNORE_VZ* 32)
(intern "*IGNORE_AFX*" (find-package "MAVROS_MSGS::POSITIONTARGET"))
(shadow '*IGNORE_AFX* (find-package "MAVROS_MSGS::POSITIONTARGET"))
(defconstant mavros_msgs::PositionTarget::*IGNORE_AFX* 64)
(intern "*IGNORE_AFY*" (find-package "MAVROS_MSGS::POSITIONTARGET"))
(shadow '*IGNORE_AFY* (find-package "MAVROS_MSGS::POSITIONTARGET"))
(defconstant mavros_msgs::PositionTarget::*IGNORE_AFY* 128)
(intern "*IGNORE_AFZ*" (find-package "MAVROS_MSGS::POSITIONTARGET"))
(shadow '*IGNORE_AFZ* (find-package "MAVROS_MSGS::POSITIONTARGET"))
(defconstant mavros_msgs::PositionTarget::*IGNORE_AFZ* 256)
(intern "*FORCE*" (find-package "MAVROS_MSGS::POSITIONTARGET"))
(shadow '*FORCE* (find-package "MAVROS_MSGS::POSITIONTARGET"))
(defconstant mavros_msgs::PositionTarget::*FORCE* 512)
(intern "*IGNORE_YAW*" (find-package "MAVROS_MSGS::POSITIONTARGET"))
(shadow '*IGNORE_YAW* (find-package "MAVROS_MSGS::POSITIONTARGET"))
(defconstant mavros_msgs::PositionTarget::*IGNORE_YAW* 1024)
(intern "*IGNORE_YAW_RATE*" (find-package "MAVROS_MSGS::POSITIONTARGET"))
(shadow '*IGNORE_YAW_RATE* (find-package "MAVROS_MSGS::POSITIONTARGET"))
(defconstant mavros_msgs::PositionTarget::*IGNORE_YAW_RATE* 2048)
(defclass mavros_msgs::PositionTarget
  :super ros::object
  :slots (_header _coordinate_frame _type_mask _position _velocity _acceleration_or_force _yaw _yaw_rate ))

(defmethod mavros_msgs::PositionTarget
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:coordinate_frame __coordinate_frame) 0)
    ((:type_mask __type_mask) 0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:acceleration_or_force __acceleration_or_force) (instance geometry_msgs::Vector3 :init))
    ((:yaw __yaw) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _coordinate_frame (round __coordinate_frame))
   (setq _type_mask (round __type_mask))
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _acceleration_or_force __acceleration_or_force)
   (setq _yaw (float __yaw))
   (setq _yaw_rate (float __yaw_rate))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:coordinate_frame
   (&optional __coordinate_frame)
   (if __coordinate_frame (setq _coordinate_frame __coordinate_frame)) _coordinate_frame)
  (:type_mask
   (&optional __type_mask)
   (if __type_mask (setq _type_mask __type_mask)) _type_mask)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:acceleration_or_force
   (&rest __acceleration_or_force)
   (if (keywordp (car __acceleration_or_force))
       (send* _acceleration_or_force __acceleration_or_force)
     (progn
       (if __acceleration_or_force (setq _acceleration_or_force (car __acceleration_or_force)))
       _acceleration_or_force)))
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _coordinate_frame
    1
    ;; uint16 _type_mask
    2
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Vector3 _acceleration_or_force
    (send _acceleration_or_force :serialization-length)
    ;; float32 _yaw
    4
    ;; float32 _yaw_rate
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _coordinate_frame
       (write-byte _coordinate_frame s)
     ;; uint16 _type_mask
       (write-word _type_mask s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Vector3 _acceleration_or_force
       (send _acceleration_or_force :serialize s)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _coordinate_frame
     (setq _coordinate_frame (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _type_mask
     (setq _type_mask (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Vector3 _acceleration_or_force
     (send _acceleration_or_force :deserialize buf ptr-) (incf ptr- (send _acceleration_or_force :serialization-length))
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mavros_msgs::PositionTarget :md5sum-) "dedb0081aaf8cb20209737746bb49117")
(setf (get mavros_msgs::PositionTarget :datatype-) "mavros_msgs/PositionTarget")
(setf (get mavros_msgs::PositionTarget :definition-)
      "# Message for SET_POSITION_TARGET_LOCAL_NED
#
# Some complex system requires all feautures that mavlink
# message provide. See issue #402.

std_msgs/Header header

uint8 coordinate_frame
uint8 FRAME_LOCAL_NED = 1
uint8 FRAME_LOCAL_OFFSET_NED = 7
uint8 FRAME_BODY_NED = 8
uint8 FRAME_BODY_OFFSET_NED = 9

uint16 type_mask
uint16 IGNORE_PX = 1	# Position ignore flags
uint16 IGNORE_PY = 2
uint16 IGNORE_PZ = 4
uint16 IGNORE_VX = 8	# Velocity vector ignore flags
uint16 IGNORE_VY = 16
uint16 IGNORE_VZ = 32
uint16 IGNORE_AFX = 64	# Acceleration/Force vector ignore flags
uint16 IGNORE_AFY = 128
uint16 IGNORE_AFZ = 256
uint16 FORCE = 512	# Force in af vector flag
uint16 IGNORE_YAW = 1024
uint16 IGNORE_YAW_RATE = 2048

geometry_msgs/Point position
geometry_msgs/Vector3 velocity
geometry_msgs/Vector3 acceleration_or_force
float32 yaw
float32 yaw_rate

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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



(provide :mavros_msgs/PositionTarget "dedb0081aaf8cb20209737746bb49117")


