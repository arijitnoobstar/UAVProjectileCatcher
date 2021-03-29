;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::MountConfigure)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'MountConfigure (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::MOUNTCONFIGURE")
  (make-package "MAVROS_MSGS::MOUNTCONFIGURE"))
(unless (find-package "MAVROS_MSGS::MOUNTCONFIGUREREQUEST")
  (make-package "MAVROS_MSGS::MOUNTCONFIGUREREQUEST"))
(unless (find-package "MAVROS_MSGS::MOUNTCONFIGURERESPONSE")
  (make-package "MAVROS_MSGS::MOUNTCONFIGURERESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(intern "*MODE_RETRACT*" (find-package "MAVROS_MSGS::MOUNTCONFIGUREREQUEST"))
(shadow '*MODE_RETRACT* (find-package "MAVROS_MSGS::MOUNTCONFIGUREREQUEST"))
(defconstant mavros_msgs::MountConfigureRequest::*MODE_RETRACT* 0)
(intern "*MODE_NEUTRAL*" (find-package "MAVROS_MSGS::MOUNTCONFIGUREREQUEST"))
(shadow '*MODE_NEUTRAL* (find-package "MAVROS_MSGS::MOUNTCONFIGUREREQUEST"))
(defconstant mavros_msgs::MountConfigureRequest::*MODE_NEUTRAL* 1)
(intern "*MODE_MAVLINK_TARGETING*" (find-package "MAVROS_MSGS::MOUNTCONFIGUREREQUEST"))
(shadow '*MODE_MAVLINK_TARGETING* (find-package "MAVROS_MSGS::MOUNTCONFIGUREREQUEST"))
(defconstant mavros_msgs::MountConfigureRequest::*MODE_MAVLINK_TARGETING* 2)
(intern "*MODE_RC_TARGETING*" (find-package "MAVROS_MSGS::MOUNTCONFIGUREREQUEST"))
(shadow '*MODE_RC_TARGETING* (find-package "MAVROS_MSGS::MOUNTCONFIGUREREQUEST"))
(defconstant mavros_msgs::MountConfigureRequest::*MODE_RC_TARGETING* 3)
(intern "*MODE_GPS_POINT*" (find-package "MAVROS_MSGS::MOUNTCONFIGUREREQUEST"))
(shadow '*MODE_GPS_POINT* (find-package "MAVROS_MSGS::MOUNTCONFIGUREREQUEST"))
(defconstant mavros_msgs::MountConfigureRequest::*MODE_GPS_POINT* 4)
(intern "*INPUT_ANGLE_BODY_FRAME*" (find-package "MAVROS_MSGS::MOUNTCONFIGUREREQUEST"))
(shadow '*INPUT_ANGLE_BODY_FRAME* (find-package "MAVROS_MSGS::MOUNTCONFIGUREREQUEST"))
(defconstant mavros_msgs::MountConfigureRequest::*INPUT_ANGLE_BODY_FRAME* 0)
(intern "*INPUT_ANGULAR_RATE*" (find-package "MAVROS_MSGS::MOUNTCONFIGUREREQUEST"))
(shadow '*INPUT_ANGULAR_RATE* (find-package "MAVROS_MSGS::MOUNTCONFIGUREREQUEST"))
(defconstant mavros_msgs::MountConfigureRequest::*INPUT_ANGULAR_RATE* 1)
(intern "*INPUT_ANGLE_ABSOLUTE_FRAME*" (find-package "MAVROS_MSGS::MOUNTCONFIGUREREQUEST"))
(shadow '*INPUT_ANGLE_ABSOLUTE_FRAME* (find-package "MAVROS_MSGS::MOUNTCONFIGUREREQUEST"))
(defconstant mavros_msgs::MountConfigureRequest::*INPUT_ANGLE_ABSOLUTE_FRAME* 2)
(defclass mavros_msgs::MountConfigureRequest
  :super ros::object
  :slots (_header _mode _stabilize_roll _stabilize_pitch _stabilize_yaw _roll_input _pitch_input _yaw_input ))

(defmethod mavros_msgs::MountConfigureRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) 0)
    ((:stabilize_roll __stabilize_roll) nil)
    ((:stabilize_pitch __stabilize_pitch) nil)
    ((:stabilize_yaw __stabilize_yaw) nil)
    ((:roll_input __roll_input) 0)
    ((:pitch_input __pitch_input) 0)
    ((:yaw_input __yaw_input) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode (round __mode))
   (setq _stabilize_roll __stabilize_roll)
   (setq _stabilize_pitch __stabilize_pitch)
   (setq _stabilize_yaw __stabilize_yaw)
   (setq _roll_input (round __roll_input))
   (setq _pitch_input (round __pitch_input))
   (setq _yaw_input (round __yaw_input))
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
  (:stabilize_roll
   (&optional __stabilize_roll)
   (if __stabilize_roll (setq _stabilize_roll __stabilize_roll)) _stabilize_roll)
  (:stabilize_pitch
   (&optional __stabilize_pitch)
   (if __stabilize_pitch (setq _stabilize_pitch __stabilize_pitch)) _stabilize_pitch)
  (:stabilize_yaw
   (&optional __stabilize_yaw)
   (if __stabilize_yaw (setq _stabilize_yaw __stabilize_yaw)) _stabilize_yaw)
  (:roll_input
   (&optional __roll_input)
   (if __roll_input (setq _roll_input __roll_input)) _roll_input)
  (:pitch_input
   (&optional __pitch_input)
   (if __pitch_input (setq _pitch_input __pitch_input)) _pitch_input)
  (:yaw_input
   (&optional __yaw_input)
   (if __yaw_input (setq _yaw_input __yaw_input)) _yaw_input)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _mode
    1
    ;; bool _stabilize_roll
    1
    ;; bool _stabilize_pitch
    1
    ;; bool _stabilize_yaw
    1
    ;; uint8 _roll_input
    1
    ;; uint8 _pitch_input
    1
    ;; uint8 _yaw_input
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; bool _stabilize_roll
       (if _stabilize_roll (write-byte -1 s) (write-byte 0 s))
     ;; bool _stabilize_pitch
       (if _stabilize_pitch (write-byte -1 s) (write-byte 0 s))
     ;; bool _stabilize_yaw
       (if _stabilize_yaw (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _roll_input
       (write-byte _roll_input s)
     ;; uint8 _pitch_input
       (write-byte _pitch_input s)
     ;; uint8 _yaw_input
       (write-byte _yaw_input s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _stabilize_roll
     (setq _stabilize_roll (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stabilize_pitch
     (setq _stabilize_pitch (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stabilize_yaw
     (setq _stabilize_yaw (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _roll_input
     (setq _roll_input (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _pitch_input
     (setq _pitch_input (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _yaw_input
     (setq _yaw_input (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros_msgs::MountConfigureResponse
  :super ros::object
  :slots (_success _result ))

(defmethod mavros_msgs::MountConfigureResponse
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

(defclass mavros_msgs::MountConfigure
  :super ros::object
  :slots ())

(setf (get mavros_msgs::MountConfigure :md5sum-) "8d724be18b06cd8e10d8c97c487c546a")
(setf (get mavros_msgs::MountConfigure :datatype-) "mavros_msgs/MountConfigure")
(setf (get mavros_msgs::MountConfigure :request) mavros_msgs::MountConfigureRequest)
(setf (get mavros_msgs::MountConfigure :response) mavros_msgs::MountConfigureResponse)

(defmethod mavros_msgs::MountConfigureRequest
  (:response () (instance mavros_msgs::MountConfigureResponse :init)))

(setf (get mavros_msgs::MountConfigureRequest :md5sum-) "8d724be18b06cd8e10d8c97c487c546a")
(setf (get mavros_msgs::MountConfigureRequest :datatype-) "mavros_msgs/MountConfigureRequest")
(setf (get mavros_msgs::MountConfigureRequest :definition-)
      "# MAVLink message: DO_MOUNT_CONTROL
# https://mavlink.io/en/messages/common.html#MAV_CMD_DO_MOUNT_CONFIGURE

std_msgs/Header header

uint8 mode              # See enum MAV_MOUNT_MODE.
#MAV_MOUNT_MODE
uint8 MODE_RETRACT = 0
uint8 MODE_NEUTRAL = 1
uint8 MODE_MAVLINK_TARGETING = 2
uint8 MODE_RC_TARGETING = 3
uint8 MODE_GPS_POINT = 4

bool stabilize_roll     # stabilize roll? (1 = yes, 0 = no)
bool stabilize_pitch    # stabilize pitch? (1 = yes, 0 = no)
bool stabilize_yaw      # stabilize yaw? (1 = yes, 0 = no)
uint8 roll_input        # roll input (See enum MOUNT_INPUT)
uint8 pitch_input       # pitch input (See enum MOUNT_INPUT)
uint8 yaw_input         # yaw input (See enum MOUNT_INPUT)

#MOUNT_INPUT
uint8 INPUT_ANGLE_BODY_FRAME = 0
uint8 INPUT_ANGULAR_RATE = 1
uint8 INPUT_ANGLE_ABSOLUTE_FRAME = 2

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
# raw result returned by COMMAND_ACK
uint8 result
")

(setf (get mavros_msgs::MountConfigureResponse :md5sum-) "8d724be18b06cd8e10d8c97c487c546a")
(setf (get mavros_msgs::MountConfigureResponse :datatype-) "mavros_msgs/MountConfigureResponse")
(setf (get mavros_msgs::MountConfigureResponse :definition-)
      "# MAVLink message: DO_MOUNT_CONTROL
# https://mavlink.io/en/messages/common.html#MAV_CMD_DO_MOUNT_CONFIGURE

std_msgs/Header header

uint8 mode              # See enum MAV_MOUNT_MODE.
#MAV_MOUNT_MODE
uint8 MODE_RETRACT = 0
uint8 MODE_NEUTRAL = 1
uint8 MODE_MAVLINK_TARGETING = 2
uint8 MODE_RC_TARGETING = 3
uint8 MODE_GPS_POINT = 4

bool stabilize_roll     # stabilize roll? (1 = yes, 0 = no)
bool stabilize_pitch    # stabilize pitch? (1 = yes, 0 = no)
bool stabilize_yaw      # stabilize yaw? (1 = yes, 0 = no)
uint8 roll_input        # roll input (See enum MOUNT_INPUT)
uint8 pitch_input       # pitch input (See enum MOUNT_INPUT)
uint8 yaw_input         # yaw input (See enum MOUNT_INPUT)

#MOUNT_INPUT
uint8 INPUT_ANGLE_BODY_FRAME = 0
uint8 INPUT_ANGULAR_RATE = 1
uint8 INPUT_ANGLE_ABSOLUTE_FRAME = 2

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
# raw result returned by COMMAND_ACK
uint8 result
")



(provide :mavros_msgs/MountConfigure "8d724be18b06cd8e10d8c97c487c546a")


