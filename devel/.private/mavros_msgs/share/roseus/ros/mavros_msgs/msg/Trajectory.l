;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::Trajectory)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'Trajectory (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::TRAJECTORY")
  (make-package "MAVROS_MSGS::TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude Trajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MAV_TRAJECTORY_REPRESENTATION_WAYPOINTS*" (find-package "MAVROS_MSGS::TRAJECTORY"))
(shadow '*MAV_TRAJECTORY_REPRESENTATION_WAYPOINTS* (find-package "MAVROS_MSGS::TRAJECTORY"))
(defconstant mavros_msgs::Trajectory::*MAV_TRAJECTORY_REPRESENTATION_WAYPOINTS* 0)
(intern "*MAV_TRAJECTORY_REPRESENTATION_BEZIER*" (find-package "MAVROS_MSGS::TRAJECTORY"))
(shadow '*MAV_TRAJECTORY_REPRESENTATION_BEZIER* (find-package "MAVROS_MSGS::TRAJECTORY"))
(defconstant mavros_msgs::Trajectory::*MAV_TRAJECTORY_REPRESENTATION_BEZIER* 1)
(defclass mavros_msgs::Trajectory
  :super ros::object
  :slots (_header _type _point_1 _point_2 _point_3 _point_4 _point_5 _point_valid _command _time_horizon ))

(defmethod mavros_msgs::Trajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) 0)
    ((:point_1 __point_1) (instance mavros_msgs::PositionTarget :init))
    ((:point_2 __point_2) (instance mavros_msgs::PositionTarget :init))
    ((:point_3 __point_3) (instance mavros_msgs::PositionTarget :init))
    ((:point_4 __point_4) (instance mavros_msgs::PositionTarget :init))
    ((:point_5 __point_5) (instance mavros_msgs::PositionTarget :init))
    ((:point_valid __point_valid) (make-array 5 :initial-element 0 :element-type :char))
    ((:command __command) (make-array 5 :initial-element 0 :element-type :integer))
    ((:time_horizon __time_horizon) (make-array 5 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (round __type))
   (setq _point_1 __point_1)
   (setq _point_2 __point_2)
   (setq _point_3 __point_3)
   (setq _point_4 __point_4)
   (setq _point_5 __point_5)
   (setq _point_valid __point_valid)
   (setq _command __command)
   (setq _time_horizon __time_horizon)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:point_1
   (&rest __point_1)
   (if (keywordp (car __point_1))
       (send* _point_1 __point_1)
     (progn
       (if __point_1 (setq _point_1 (car __point_1)))
       _point_1)))
  (:point_2
   (&rest __point_2)
   (if (keywordp (car __point_2))
       (send* _point_2 __point_2)
     (progn
       (if __point_2 (setq _point_2 (car __point_2)))
       _point_2)))
  (:point_3
   (&rest __point_3)
   (if (keywordp (car __point_3))
       (send* _point_3 __point_3)
     (progn
       (if __point_3 (setq _point_3 (car __point_3)))
       _point_3)))
  (:point_4
   (&rest __point_4)
   (if (keywordp (car __point_4))
       (send* _point_4 __point_4)
     (progn
       (if __point_4 (setq _point_4 (car __point_4)))
       _point_4)))
  (:point_5
   (&rest __point_5)
   (if (keywordp (car __point_5))
       (send* _point_5 __point_5)
     (progn
       (if __point_5 (setq _point_5 (car __point_5)))
       _point_5)))
  (:point_valid
   (&optional __point_valid)
   (if __point_valid (setq _point_valid __point_valid)) _point_valid)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:time_horizon
   (&optional __time_horizon)
   (if __time_horizon (setq _time_horizon __time_horizon)) _time_horizon)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _type
    1
    ;; mavros_msgs/PositionTarget _point_1
    (send _point_1 :serialization-length)
    ;; mavros_msgs/PositionTarget _point_2
    (send _point_2 :serialization-length)
    ;; mavros_msgs/PositionTarget _point_3
    (send _point_3 :serialization-length)
    ;; mavros_msgs/PositionTarget _point_4
    (send _point_4 :serialization-length)
    ;; mavros_msgs/PositionTarget _point_5
    (send _point_5 :serialization-length)
    ;; uint8[5] _point_valid
    (* 1    5)
    ;; uint16[5] _command
    (* 2    5)
    ;; float32[5] _time_horizon
    (* 4    5)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _type
       (write-byte _type s)
     ;; mavros_msgs/PositionTarget _point_1
       (send _point_1 :serialize s)
     ;; mavros_msgs/PositionTarget _point_2
       (send _point_2 :serialize s)
     ;; mavros_msgs/PositionTarget _point_3
       (send _point_3 :serialize s)
     ;; mavros_msgs/PositionTarget _point_4
       (send _point_4 :serialize s)
     ;; mavros_msgs/PositionTarget _point_5
       (send _point_5 :serialize s)
     ;; uint8[5] _point_valid
     (princ _point_valid s)
     ;; uint16[5] _command
     (dotimes (i 5)
       (write-word (elt _command i) s)
       )
     ;; float32[5] _time_horizon
     (dotimes (i 5)
       (sys::poke (elt _time_horizon i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; mavros_msgs/PositionTarget _point_1
     (send _point_1 :deserialize buf ptr-) (incf ptr- (send _point_1 :serialization-length))
   ;; mavros_msgs/PositionTarget _point_2
     (send _point_2 :deserialize buf ptr-) (incf ptr- (send _point_2 :serialization-length))
   ;; mavros_msgs/PositionTarget _point_3
     (send _point_3 :deserialize buf ptr-) (incf ptr- (send _point_3 :serialization-length))
   ;; mavros_msgs/PositionTarget _point_4
     (send _point_4 :deserialize buf ptr-) (incf ptr- (send _point_4 :serialization-length))
   ;; mavros_msgs/PositionTarget _point_5
     (send _point_5 :deserialize buf ptr-) (incf ptr- (send _point_5 :serialization-length))
   ;; uint8[5] _point_valid
   (setq _point_valid (make-array 5 :element-type :char))
   (replace _point_valid buf :start2 ptr-) (incf ptr- 5)
   ;; uint16[5] _command
   (dotimes (i (length _command))
     (setf (elt _command i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; float32[5] _time_horizon
   (dotimes (i (length _time_horizon))
     (setf (elt _time_horizon i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get mavros_msgs::Trajectory :md5sum-) "477b47a103394ad6be940e5705f338e8")
(setf (get mavros_msgs::Trajectory :datatype-) "mavros_msgs/Trajectory")
(setf (get mavros_msgs::Trajectory :definition-)
      "# MAVLink message: TRAJECTORY
# https://mavlink.io/en/messages/common.html#TRAJECTORY

std_msgs/Header header

uint8 type # See enum MAV_TRAJECTORY_REPRESENTATION.
uint8 MAV_TRAJECTORY_REPRESENTATION_WAYPOINTS = 0
uint8 MAV_TRAJECTORY_REPRESENTATION_BEZIER = 1

mavros_msgs/PositionTarget point_1
mavros_msgs/PositionTarget point_2
mavros_msgs/PositionTarget point_3
mavros_msgs/PositionTarget point_4
mavros_msgs/PositionTarget point_5

uint8[5] point_valid # States if respective point is valid.
uint16[5] command # MAV_CMD associated with each point. UINT16_MAX if unused.

float32[5] time_horizon # if type MAV_TRAJECTORY_REPRESENTATION_BEZIER, it represents the time horizon for each point, otherwise set to NaN

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
MSG: mavros_msgs/PositionTarget
# Message for SET_POSITION_TARGET_LOCAL_NED
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



(provide :mavros_msgs/Trajectory "477b47a103394ad6be940e5705f338e8")


