;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::LandingTarget)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'LandingTarget (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::LANDINGTARGET")
  (make-package "MAVROS_MSGS::LANDINGTARGET"))

(in-package "ROS")
;;//! \htmlinclude LandingTarget.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*GLOBAL*" (find-package "MAVROS_MSGS::LANDINGTARGET"))
(shadow '*GLOBAL* (find-package "MAVROS_MSGS::LANDINGTARGET"))
(defconstant mavros_msgs::LandingTarget::*GLOBAL* 0)
(intern "*LOCAL_NED*" (find-package "MAVROS_MSGS::LANDINGTARGET"))
(shadow '*LOCAL_NED* (find-package "MAVROS_MSGS::LANDINGTARGET"))
(defconstant mavros_msgs::LandingTarget::*LOCAL_NED* 2)
(intern "*MISSION*" (find-package "MAVROS_MSGS::LANDINGTARGET"))
(shadow '*MISSION* (find-package "MAVROS_MSGS::LANDINGTARGET"))
(defconstant mavros_msgs::LandingTarget::*MISSION* 3)
(intern "*GLOBAL_RELATIVE_ALT*" (find-package "MAVROS_MSGS::LANDINGTARGET"))
(shadow '*GLOBAL_RELATIVE_ALT* (find-package "MAVROS_MSGS::LANDINGTARGET"))
(defconstant mavros_msgs::LandingTarget::*GLOBAL_RELATIVE_ALT* 4)
(intern "*LOCAL_ENU*" (find-package "MAVROS_MSGS::LANDINGTARGET"))
(shadow '*LOCAL_ENU* (find-package "MAVROS_MSGS::LANDINGTARGET"))
(defconstant mavros_msgs::LandingTarget::*LOCAL_ENU* 5)
(intern "*GLOBAL_INT*" (find-package "MAVROS_MSGS::LANDINGTARGET"))
(shadow '*GLOBAL_INT* (find-package "MAVROS_MSGS::LANDINGTARGET"))
(defconstant mavros_msgs::LandingTarget::*GLOBAL_INT* 6)
(intern "*GLOBAL_RELATIVE_ALT_INT*" (find-package "MAVROS_MSGS::LANDINGTARGET"))
(shadow '*GLOBAL_RELATIVE_ALT_INT* (find-package "MAVROS_MSGS::LANDINGTARGET"))
(defconstant mavros_msgs::LandingTarget::*GLOBAL_RELATIVE_ALT_INT* 7)
(intern "*LOCAL_OFFSET_NED*" (find-package "MAVROS_MSGS::LANDINGTARGET"))
(shadow '*LOCAL_OFFSET_NED* (find-package "MAVROS_MSGS::LANDINGTARGET"))
(defconstant mavros_msgs::LandingTarget::*LOCAL_OFFSET_NED* 8)
(intern "*BODY_NED*" (find-package "MAVROS_MSGS::LANDINGTARGET"))
(shadow '*BODY_NED* (find-package "MAVROS_MSGS::LANDINGTARGET"))
(defconstant mavros_msgs::LandingTarget::*BODY_NED* 9)
(intern "*BODY_OFFSET_NED*" (find-package "MAVROS_MSGS::LANDINGTARGET"))
(shadow '*BODY_OFFSET_NED* (find-package "MAVROS_MSGS::LANDINGTARGET"))
(defconstant mavros_msgs::LandingTarget::*BODY_OFFSET_NED* 10)
(intern "*GLOBAL_TERRAIN_ALT*" (find-package "MAVROS_MSGS::LANDINGTARGET"))
(shadow '*GLOBAL_TERRAIN_ALT* (find-package "MAVROS_MSGS::LANDINGTARGET"))
(defconstant mavros_msgs::LandingTarget::*GLOBAL_TERRAIN_ALT* 11)
(intern "*GLOBAL_TERRAIN_ALT_INT*" (find-package "MAVROS_MSGS::LANDINGTARGET"))
(shadow '*GLOBAL_TERRAIN_ALT_INT* (find-package "MAVROS_MSGS::LANDINGTARGET"))
(defconstant mavros_msgs::LandingTarget::*GLOBAL_TERRAIN_ALT_INT* 12)
(intern "*LIGHT_BEACON*" (find-package "MAVROS_MSGS::LANDINGTARGET"))
(shadow '*LIGHT_BEACON* (find-package "MAVROS_MSGS::LANDINGTARGET"))
(defconstant mavros_msgs::LandingTarget::*LIGHT_BEACON* 0)
(intern "*RADIO_BEACON*" (find-package "MAVROS_MSGS::LANDINGTARGET"))
(shadow '*RADIO_BEACON* (find-package "MAVROS_MSGS::LANDINGTARGET"))
(defconstant mavros_msgs::LandingTarget::*RADIO_BEACON* 1)
(intern "*VISION_FIDUCIAL*" (find-package "MAVROS_MSGS::LANDINGTARGET"))
(shadow '*VISION_FIDUCIAL* (find-package "MAVROS_MSGS::LANDINGTARGET"))
(defconstant mavros_msgs::LandingTarget::*VISION_FIDUCIAL* 2)
(intern "*VISION_OTHER*" (find-package "MAVROS_MSGS::LANDINGTARGET"))
(shadow '*VISION_OTHER* (find-package "MAVROS_MSGS::LANDINGTARGET"))
(defconstant mavros_msgs::LandingTarget::*VISION_OTHER* 3)
(defclass mavros_msgs::LandingTarget
  :super ros::object
  :slots (_header _target_num _frame _angle _distance _size _pose _type ))

(defmethod mavros_msgs::LandingTarget
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:target_num __target_num) 0)
    ((:frame __frame) 0)
    ((:angle __angle) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:distance __distance) 0.0)
    ((:size __size) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _target_num (round __target_num))
   (setq _frame (round __frame))
   (setq _angle __angle)
   (setq _distance (float __distance))
   (setq _size __size)
   (setq _pose __pose)
   (setq _type (round __type))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:target_num
   (&optional __target_num)
   (if __target_num (setq _target_num __target_num)) _target_num)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _target_num
    1
    ;; uint8 _frame
    1
    ;; float32[2] _angle
    (* 4    2)
    ;; float32 _distance
    4
    ;; float32[2] _size
    (* 4    2)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _target_num
       (write-byte _target_num s)
     ;; uint8 _frame
       (write-byte _frame s)
     ;; float32[2] _angle
     (dotimes (i 2)
       (sys::poke (elt _angle i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[2] _size
     (dotimes (i 2)
       (sys::poke (elt _size i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _target_num
     (setq _target_num (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _frame
     (setq _frame (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[2] _angle
   (dotimes (i (length _angle))
     (setf (elt _angle i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[2] _size
   (dotimes (i (length _size))
     (setf (elt _size i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mavros_msgs::LandingTarget :md5sum-) "76548ee08437914830bb7319d04d5490")
(setf (get mavros_msgs::LandingTarget :datatype-) "mavros_msgs/LandingTarget")
(setf (get mavros_msgs::LandingTarget :definition-)
      "# MAVLink message: LANDING_TARGET
# https://mavlink.io/en/messages/common.html

std_msgs/Header header

## MAV_FRAME enum
uint8 GLOBAL = 0                   # Global coordinate frame, WGS84 coordinate system. First value / x: latitude, second value / y: longitude, third value / z: positive altitude over mean sea level (MSL)
uint8 LOCAL_NED = 2                # Local coordinate frame, Z-up (x: north, y: east, z: down).
uint8 MISSION = 3                  # NOT a coordinate frame, indicates a mission command.
uint8 GLOBAL_RELATIVE_ALT = 4      # Global coordinate frame, WGS84 coordinate system, relative altitude over ground with respect to the home position. First value / x: latitude, second value / y: longitude, third value / z: positive altitude with 0 being at the altitude of the home location.
uint8 LOCAL_ENU = 5                # Local coordinate frame, Z-down (x: east, y: north, z: up)
uint8 GLOBAL_INT = 6               # Global coordinate frame, WGS84 coordinate system. First value / x: latitude in degrees*1.0e-7, second value / y: longitude in degrees*1.0e-7, third value / z: positive altitude over mean sea level (MSL)
uint8 GLOBAL_RELATIVE_ALT_INT = 7  # Global coordinate frame, WGS84 coordinate system, relative altitude over ground with respect to the home position. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude with 0 being at the altitude of the home location.
uint8 LOCAL_OFFSET_NED = 8         # Offset to the current local frame. Anything expressed in this frame should be added to the current local frame position.
uint8 BODY_NED = 9                 # Setpoint in body NED frame. This makes sense if all position control is externalized - e.g. useful to command 2 m/s^2 acceleration to the right.
uint8 BODY_OFFSET_NED = 10         # Offset in body NED frame. This makes sense if adding setpoints to the current flight path, to avoid an obstacle - e.g. useful to command 2 m/s^2 acceleration to the east.
uint8 GLOBAL_TERRAIN_ALT = 11      # Global coordinate frame with above terrain level altitude. WGS84 coordinate system, relative altitude over terrain with respect to the waypoint coordinate. First value / x: latitude in degrees, second value / y: longitude in degrees, third value / z: positive altitude in meters with 0 being at ground level in terrain model.
uint8 GLOBAL_TERRAIN_ALT_INT = 12  # Global coordinate frame with above terrain level altitude. WGS84 coordinate system, relative altitude over terrain with respect to the waypoint coordinate. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude in meters with 0 being at ground level in terrain model.

## LANDING_TARGET_TYPE enum
uint8 LIGHT_BEACON = 0             # Landing target signaled by light beacon (ex: IR-LOCK)
uint8 RADIO_BEACON = 1             # Landing target signaled by radio beacon (ex: ILS, NDB)
uint8 VISION_FIDUCIAL = 2          # Landing target represented by a fiducial marker (ex: ARTag)
uint8 VISION_OTHER = 3             # Landing target represented by a pre-defined visual shape/feature (ex: X-marker, H-marker, square)

uint8 target_num
uint8 frame
float32[2] angle
float32 distance
float32[2] size
geometry_msgs/Pose pose
uint8 type

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :mavros_msgs/LandingTarget "76548ee08437914830bb7319d04d5490")


