;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::CommandVtolTransition)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'CommandVtolTransition (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::COMMANDVTOLTRANSITION")
  (make-package "MAVROS_MSGS::COMMANDVTOLTRANSITION"))
(unless (find-package "MAVROS_MSGS::COMMANDVTOLTRANSITIONREQUEST")
  (make-package "MAVROS_MSGS::COMMANDVTOLTRANSITIONREQUEST"))
(unless (find-package "MAVROS_MSGS::COMMANDVTOLTRANSITIONRESPONSE")
  (make-package "MAVROS_MSGS::COMMANDVTOLTRANSITIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(intern "*STATE_MC*" (find-package "MAVROS_MSGS::COMMANDVTOLTRANSITIONREQUEST"))
(shadow '*STATE_MC* (find-package "MAVROS_MSGS::COMMANDVTOLTRANSITIONREQUEST"))
(defconstant mavros_msgs::CommandVtolTransitionRequest::*STATE_MC* 3)
(intern "*STATE_FW*" (find-package "MAVROS_MSGS::COMMANDVTOLTRANSITIONREQUEST"))
(shadow '*STATE_FW* (find-package "MAVROS_MSGS::COMMANDVTOLTRANSITIONREQUEST"))
(defconstant mavros_msgs::CommandVtolTransitionRequest::*STATE_FW* 4)
(defclass mavros_msgs::CommandVtolTransitionRequest
  :super ros::object
  :slots (_header _state ))

(defmethod mavros_msgs::CommandVtolTransitionRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _state (round __state))
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
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _state
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros_msgs::CommandVtolTransitionResponse
  :super ros::object
  :slots (_success _result ))

(defmethod mavros_msgs::CommandVtolTransitionResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _result (round __result))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros_msgs::CommandVtolTransition
  :super ros::object
  :slots ())

(setf (get mavros_msgs::CommandVtolTransition :md5sum-) "9fd38be6714b4cc56cabc5f733b6f095")
(setf (get mavros_msgs::CommandVtolTransition :datatype-) "mavros_msgs/CommandVtolTransition")
(setf (get mavros_msgs::CommandVtolTransition :request) mavros_msgs::CommandVtolTransitionRequest)
(setf (get mavros_msgs::CommandVtolTransition :response) mavros_msgs::CommandVtolTransitionResponse)

(defmethod mavros_msgs::CommandVtolTransitionRequest
  (:response () (instance mavros_msgs::CommandVtolTransitionResponse :init)))

(setf (get mavros_msgs::CommandVtolTransitionRequest :md5sum-) "9fd38be6714b4cc56cabc5f733b6f095")
(setf (get mavros_msgs::CommandVtolTransitionRequest :datatype-) "mavros_msgs/CommandVtolTransitionRequest")
(setf (get mavros_msgs::CommandVtolTransitionRequest :definition-)
      "
# MAVLink command: DO_VTOL_TRANSITION
# https://mavlink.io/en/messages/common.html#MAV_CMD_DO_VTOL_TRANSITION

std_msgs/Header header

# MAV_VTOL_STATE
uint8 STATE_MC = 3
uint8 STATE_FW = 4

uint8 state              # See enum MAV_VTOL_STATE.


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
---
bool success
uint8 result            # Raw result returned by COMMAND_ACK
 
")

(setf (get mavros_msgs::CommandVtolTransitionResponse :md5sum-) "9fd38be6714b4cc56cabc5f733b6f095")
(setf (get mavros_msgs::CommandVtolTransitionResponse :datatype-) "mavros_msgs/CommandVtolTransitionResponse")
(setf (get mavros_msgs::CommandVtolTransitionResponse :definition-)
      "
# MAVLink command: DO_VTOL_TRANSITION
# https://mavlink.io/en/messages/common.html#MAV_CMD_DO_VTOL_TRANSITION

std_msgs/Header header

# MAV_VTOL_STATE
uint8 STATE_MC = 3
uint8 STATE_FW = 4

uint8 state              # See enum MAV_VTOL_STATE.


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
---
bool success
uint8 result            # Raw result returned by COMMAND_ACK
 
")



(provide :mavros_msgs/CommandVtolTransition "9fd38be6714b4cc56cabc5f733b6f095")


