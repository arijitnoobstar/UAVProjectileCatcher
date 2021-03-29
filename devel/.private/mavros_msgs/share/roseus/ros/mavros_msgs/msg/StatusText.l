;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::StatusText)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'StatusText (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::STATUSTEXT")
  (make-package "MAVROS_MSGS::STATUSTEXT"))

(in-package "ROS")
;;//! \htmlinclude StatusText.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*EMERGENCY*" (find-package "MAVROS_MSGS::STATUSTEXT"))
(shadow '*EMERGENCY* (find-package "MAVROS_MSGS::STATUSTEXT"))
(defconstant mavros_msgs::StatusText::*EMERGENCY* 0)
(intern "*ALERT*" (find-package "MAVROS_MSGS::STATUSTEXT"))
(shadow '*ALERT* (find-package "MAVROS_MSGS::STATUSTEXT"))
(defconstant mavros_msgs::StatusText::*ALERT* 1)
(intern "*CRITICAL*" (find-package "MAVROS_MSGS::STATUSTEXT"))
(shadow '*CRITICAL* (find-package "MAVROS_MSGS::STATUSTEXT"))
(defconstant mavros_msgs::StatusText::*CRITICAL* 2)
(intern "*ERROR*" (find-package "MAVROS_MSGS::STATUSTEXT"))
(shadow '*ERROR* (find-package "MAVROS_MSGS::STATUSTEXT"))
(defconstant mavros_msgs::StatusText::*ERROR* 3)
(intern "*WARNING*" (find-package "MAVROS_MSGS::STATUSTEXT"))
(shadow '*WARNING* (find-package "MAVROS_MSGS::STATUSTEXT"))
(defconstant mavros_msgs::StatusText::*WARNING* 4)
(intern "*NOTICE*" (find-package "MAVROS_MSGS::STATUSTEXT"))
(shadow '*NOTICE* (find-package "MAVROS_MSGS::STATUSTEXT"))
(defconstant mavros_msgs::StatusText::*NOTICE* 5)
(intern "*INFO*" (find-package "MAVROS_MSGS::STATUSTEXT"))
(shadow '*INFO* (find-package "MAVROS_MSGS::STATUSTEXT"))
(defconstant mavros_msgs::StatusText::*INFO* 6)
(intern "*DEBUG*" (find-package "MAVROS_MSGS::STATUSTEXT"))
(shadow '*DEBUG* (find-package "MAVROS_MSGS::STATUSTEXT"))
(defconstant mavros_msgs::StatusText::*DEBUG* 7)
(defclass mavros_msgs::StatusText
  :super ros::object
  :slots (_header _severity _text ))

(defmethod mavros_msgs::StatusText
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:severity __severity) 0)
    ((:text __text) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _severity (round __severity))
   (setq _text (string __text))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:severity
   (&optional __severity)
   (if __severity (setq _severity __severity)) _severity)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _severity
    1
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _severity
       (write-byte _severity s)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _severity
     (setq _severity (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mavros_msgs::StatusText :md5sum-) "6cfd33cd09e4abf5841d7be3c770a969")
(setf (get mavros_msgs::StatusText :datatype-) "mavros_msgs/StatusText")
(setf (get mavros_msgs::StatusText :definition-)
      "# STATUSTEXT message representation
# https://mavlink.io/en/messages/common.html#STATUSTEXT

# Severity levels
uint8 EMERGENCY = 0
uint8 ALERT = 1
uint8 CRITICAL = 2
uint8 ERROR = 3
uint8 WARNING = 4
uint8 NOTICE = 5
uint8 INFO = 6
uint8 DEBUG = 7

# Fields
std_msgs/Header header
uint8 severity
string text

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



(provide :mavros_msgs/StatusText "6cfd33cd09e4abf5841d7be3c770a969")


