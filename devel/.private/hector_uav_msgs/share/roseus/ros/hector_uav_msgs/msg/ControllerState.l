;; Auto-generated. Do not edit!


(when (boundp 'hector_uav_msgs::ControllerState)
  (if (not (find-package "HECTOR_UAV_MSGS"))
    (make-package "HECTOR_UAV_MSGS"))
  (shadow 'ControllerState (find-package "HECTOR_UAV_MSGS")))
(unless (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE")
  (make-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))

(in-package "ROS")
;;//! \htmlinclude ControllerState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MOTORS*" (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(shadow '*MOTORS* (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(defconstant hector_uav_msgs::ControllerState::*MOTORS* 1)
(intern "*ATTITUDE*" (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(shadow '*ATTITUDE* (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(defconstant hector_uav_msgs::ControllerState::*ATTITUDE* 2)
(intern "*VELOCITY*" (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(shadow '*VELOCITY* (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(defconstant hector_uav_msgs::ControllerState::*VELOCITY* 4)
(intern "*POSITION*" (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(shadow '*POSITION* (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(defconstant hector_uav_msgs::ControllerState::*POSITION* 8)
(intern "*TURNRATE*" (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(shadow '*TURNRATE* (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(defconstant hector_uav_msgs::ControllerState::*TURNRATE* 16)
(intern "*HEADING*" (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(shadow '*HEADING* (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(defconstant hector_uav_msgs::ControllerState::*HEADING* 32)
(intern "*CLIMBRATE*" (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(shadow '*CLIMBRATE* (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(defconstant hector_uav_msgs::ControllerState::*CLIMBRATE* 64)
(intern "*HEIGHT*" (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(shadow '*HEIGHT* (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(defconstant hector_uav_msgs::ControllerState::*HEIGHT* 128)
(intern "*MOTORS_RUNNING*" (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(shadow '*MOTORS_RUNNING* (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(defconstant hector_uav_msgs::ControllerState::*MOTORS_RUNNING* 1)
(intern "*FLYING*" (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(shadow '*FLYING* (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(defconstant hector_uav_msgs::ControllerState::*FLYING* 2)
(intern "*AIRBORNE*" (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(shadow '*AIRBORNE* (find-package "HECTOR_UAV_MSGS::CONTROLLERSTATE"))
(defconstant hector_uav_msgs::ControllerState::*AIRBORNE* 4)
(defclass hector_uav_msgs::ControllerState
  :super ros::object
  :slots (_header _source _mode _state ))

(defmethod hector_uav_msgs::ControllerState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:source __source) 0)
    ((:mode __mode) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _source (round __source))
   (setq _mode (round __mode))
   (setq _state (round __state))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _source
    1
    ;; uint8 _mode
    1
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _source
       (write-byte _source s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _source
     (setq _source (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hector_uav_msgs::ControllerState :md5sum-) "cf55b8af1d9e1de941887ee78e23079c")
(setf (get hector_uav_msgs::ControllerState :datatype-) "hector_uav_msgs/ControllerState")
(setf (get hector_uav_msgs::ControllerState :definition-)
      "Header header
uint8 source

uint8 mode
uint8 MOTORS = 1
uint8 ATTITUDE = 2
uint8 VELOCITY = 4
uint8 POSITION = 8
uint8 TURNRATE = 16
uint8 HEADING = 32
uint8 CLIMBRATE = 64
uint8 HEIGHT = 128

uint8 state
uint8 MOTORS_RUNNING = 1
uint8 FLYING = 2
uint8 AIRBORNE = 4

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



(provide :hector_uav_msgs/ControllerState "cf55b8af1d9e1de941887ee78e23079c")


