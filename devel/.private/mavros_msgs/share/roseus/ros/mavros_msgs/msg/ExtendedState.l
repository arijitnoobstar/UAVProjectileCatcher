;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::ExtendedState)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'ExtendedState (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::EXTENDEDSTATE")
  (make-package "MAVROS_MSGS::EXTENDEDSTATE"))

(in-package "ROS")
;;//! \htmlinclude ExtendedState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*VTOL_STATE_UNDEFINED*" (find-package "MAVROS_MSGS::EXTENDEDSTATE"))
(shadow '*VTOL_STATE_UNDEFINED* (find-package "MAVROS_MSGS::EXTENDEDSTATE"))
(defconstant mavros_msgs::ExtendedState::*VTOL_STATE_UNDEFINED* 0)
(intern "*VTOL_STATE_TRANSITION_TO_FW*" (find-package "MAVROS_MSGS::EXTENDEDSTATE"))
(shadow '*VTOL_STATE_TRANSITION_TO_FW* (find-package "MAVROS_MSGS::EXTENDEDSTATE"))
(defconstant mavros_msgs::ExtendedState::*VTOL_STATE_TRANSITION_TO_FW* 1)
(intern "*VTOL_STATE_TRANSITION_TO_MC*" (find-package "MAVROS_MSGS::EXTENDEDSTATE"))
(shadow '*VTOL_STATE_TRANSITION_TO_MC* (find-package "MAVROS_MSGS::EXTENDEDSTATE"))
(defconstant mavros_msgs::ExtendedState::*VTOL_STATE_TRANSITION_TO_MC* 2)
(intern "*VTOL_STATE_MC*" (find-package "MAVROS_MSGS::EXTENDEDSTATE"))
(shadow '*VTOL_STATE_MC* (find-package "MAVROS_MSGS::EXTENDEDSTATE"))
(defconstant mavros_msgs::ExtendedState::*VTOL_STATE_MC* 3)
(intern "*VTOL_STATE_FW*" (find-package "MAVROS_MSGS::EXTENDEDSTATE"))
(shadow '*VTOL_STATE_FW* (find-package "MAVROS_MSGS::EXTENDEDSTATE"))
(defconstant mavros_msgs::ExtendedState::*VTOL_STATE_FW* 4)
(intern "*LANDED_STATE_UNDEFINED*" (find-package "MAVROS_MSGS::EXTENDEDSTATE"))
(shadow '*LANDED_STATE_UNDEFINED* (find-package "MAVROS_MSGS::EXTENDEDSTATE"))
(defconstant mavros_msgs::ExtendedState::*LANDED_STATE_UNDEFINED* 0)
(intern "*LANDED_STATE_ON_GROUND*" (find-package "MAVROS_MSGS::EXTENDEDSTATE"))
(shadow '*LANDED_STATE_ON_GROUND* (find-package "MAVROS_MSGS::EXTENDEDSTATE"))
(defconstant mavros_msgs::ExtendedState::*LANDED_STATE_ON_GROUND* 1)
(intern "*LANDED_STATE_IN_AIR*" (find-package "MAVROS_MSGS::EXTENDEDSTATE"))
(shadow '*LANDED_STATE_IN_AIR* (find-package "MAVROS_MSGS::EXTENDEDSTATE"))
(defconstant mavros_msgs::ExtendedState::*LANDED_STATE_IN_AIR* 2)
(intern "*LANDED_STATE_TAKEOFF*" (find-package "MAVROS_MSGS::EXTENDEDSTATE"))
(shadow '*LANDED_STATE_TAKEOFF* (find-package "MAVROS_MSGS::EXTENDEDSTATE"))
(defconstant mavros_msgs::ExtendedState::*LANDED_STATE_TAKEOFF* 3)
(intern "*LANDED_STATE_LANDING*" (find-package "MAVROS_MSGS::EXTENDEDSTATE"))
(shadow '*LANDED_STATE_LANDING* (find-package "MAVROS_MSGS::EXTENDEDSTATE"))
(defconstant mavros_msgs::ExtendedState::*LANDED_STATE_LANDING* 4)
(defclass mavros_msgs::ExtendedState
  :super ros::object
  :slots (_header _vtol_state _landed_state ))

(defmethod mavros_msgs::ExtendedState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vtol_state __vtol_state) 0)
    ((:landed_state __landed_state) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _vtol_state (round __vtol_state))
   (setq _landed_state (round __landed_state))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vtol_state
   (&optional __vtol_state)
   (if __vtol_state (setq _vtol_state __vtol_state)) _vtol_state)
  (:landed_state
   (&optional __landed_state)
   (if __landed_state (setq _landed_state __landed_state)) _landed_state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _vtol_state
    1
    ;; uint8 _landed_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _vtol_state
       (write-byte _vtol_state s)
     ;; uint8 _landed_state
       (write-byte _landed_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _vtol_state
     (setq _vtol_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _landed_state
     (setq _landed_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mavros_msgs::ExtendedState :md5sum-) "ae780b1800fe17b917369d21b90058bd")
(setf (get mavros_msgs::ExtendedState :datatype-) "mavros_msgs/ExtendedState")
(setf (get mavros_msgs::ExtendedState :definition-)
      "# Extended autopilot state
#
# https://mavlink.io/en/messages/common.html#EXTENDED_SYS_STATE

uint8 VTOL_STATE_UNDEFINED = 0
uint8 VTOL_STATE_TRANSITION_TO_FW = 1
uint8 VTOL_STATE_TRANSITION_TO_MC = 2
uint8 VTOL_STATE_MC = 3
uint8 VTOL_STATE_FW = 4

uint8 LANDED_STATE_UNDEFINED = 0
uint8 LANDED_STATE_ON_GROUND = 1
uint8 LANDED_STATE_IN_AIR = 2
uint8 LANDED_STATE_TAKEOFF = 3
uint8 LANDED_STATE_LANDING = 4

std_msgs/Header header
uint8 vtol_state
uint8 landed_state

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



(provide :mavros_msgs/ExtendedState "ae780b1800fe17b917369d21b90058bd")


