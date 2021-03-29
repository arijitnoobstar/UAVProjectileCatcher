;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::CompanionProcessStatus)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'CompanionProcessStatus (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS")
  (make-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))

(in-package "ROS")
;;//! \htmlinclude CompanionProcessStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MAV_STATE_UNINIT*" (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(shadow '*MAV_STATE_UNINIT* (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(defconstant mavros_msgs::CompanionProcessStatus::*MAV_STATE_UNINIT* 0)
(intern "*MAV_STATE_BOOT*" (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(shadow '*MAV_STATE_BOOT* (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(defconstant mavros_msgs::CompanionProcessStatus::*MAV_STATE_BOOT* 1)
(intern "*MAV_STATE_CALIBRATING*" (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(shadow '*MAV_STATE_CALIBRATING* (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(defconstant mavros_msgs::CompanionProcessStatus::*MAV_STATE_CALIBRATING* 2)
(intern "*MAV_STATE_STANDBY*" (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(shadow '*MAV_STATE_STANDBY* (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(defconstant mavros_msgs::CompanionProcessStatus::*MAV_STATE_STANDBY* 3)
(intern "*MAV_STATE_ACTIVE*" (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(shadow '*MAV_STATE_ACTIVE* (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(defconstant mavros_msgs::CompanionProcessStatus::*MAV_STATE_ACTIVE* 4)
(intern "*MAV_STATE_CRITICAL*" (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(shadow '*MAV_STATE_CRITICAL* (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(defconstant mavros_msgs::CompanionProcessStatus::*MAV_STATE_CRITICAL* 5)
(intern "*MAV_STATE_EMERGENCY*" (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(shadow '*MAV_STATE_EMERGENCY* (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(defconstant mavros_msgs::CompanionProcessStatus::*MAV_STATE_EMERGENCY* 6)
(intern "*MAV_STATE_POWEROFF*" (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(shadow '*MAV_STATE_POWEROFF* (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(defconstant mavros_msgs::CompanionProcessStatus::*MAV_STATE_POWEROFF* 7)
(intern "*MAV_STATE_FLIGHT_TERMINATION*" (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(shadow '*MAV_STATE_FLIGHT_TERMINATION* (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(defconstant mavros_msgs::CompanionProcessStatus::*MAV_STATE_FLIGHT_TERMINATION* 8)
(intern "*MAV_COMP_ID_OBSTACLE_AVOIDANCE*" (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(shadow '*MAV_COMP_ID_OBSTACLE_AVOIDANCE* (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(defconstant mavros_msgs::CompanionProcessStatus::*MAV_COMP_ID_OBSTACLE_AVOIDANCE* 196)
(intern "*MAV_COMP_ID_VISUAL_INERTIAL_ODOMETRY*" (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(shadow '*MAV_COMP_ID_VISUAL_INERTIAL_ODOMETRY* (find-package "MAVROS_MSGS::COMPANIONPROCESSSTATUS"))
(defconstant mavros_msgs::CompanionProcessStatus::*MAV_COMP_ID_VISUAL_INERTIAL_ODOMETRY* 197)
(defclass mavros_msgs::CompanionProcessStatus
  :super ros::object
  :slots (_header _state _component ))

(defmethod mavros_msgs::CompanionProcessStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) 0)
    ((:component __component) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _state (round __state))
   (setq _component (round __component))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:component
   (&optional __component)
   (if __component (setq _component __component)) _component)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _state
    1
    ;; uint8 _component
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _state
       (write-byte _state s)
     ;; uint8 _component
       (write-byte _component s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _component
     (setq _component (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mavros_msgs::CompanionProcessStatus :md5sum-) "b6dd787fcd873e87778987b1845f4cb5")
(setf (get mavros_msgs::CompanionProcessStatus :datatype-) "mavros_msgs/CompanionProcessStatus")
(setf (get mavros_msgs::CompanionProcessStatus :definition-)
      "# Mavros message: COMPANIONPROCESSSTATUS

std_msgs/Header header

uint8 state			# See enum COMPANION_PROCESS_STATE
uint8 component		# See enum MAV_COMPONENT

uint8 MAV_STATE_UNINIT = 0
uint8 MAV_STATE_BOOT = 1
uint8 MAV_STATE_CALIBRATING = 2
uint8 MAV_STATE_STANDBY = 3
uint8 MAV_STATE_ACTIVE = 4
uint8 MAV_STATE_CRITICAL = 5
uint8 MAV_STATE_EMERGENCY = 6
uint8 MAV_STATE_POWEROFF = 7
uint8 MAV_STATE_FLIGHT_TERMINATION = 8

uint8 MAV_COMP_ID_OBSTACLE_AVOIDANCE = 196
uint8 MAV_COMP_ID_VISUAL_INERTIAL_ODOMETRY = 197

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



(provide :mavros_msgs/CompanionProcessStatus "b6dd787fcd873e87778987b1845f4cb5")


