; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude StatusText.msg.html

(cl:defclass <StatusText> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (severity
    :reader severity
    :initarg :severity
    :type cl:fixnum
    :initform 0)
   (text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass StatusText (<StatusText>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StatusText>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StatusText)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<StatusText> is deprecated: use mavros_msgs-msg:StatusText instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StatusText>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'severity-val :lambda-list '(m))
(cl:defmethod severity-val ((m <StatusText>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:severity-val is deprecated.  Use mavros_msgs-msg:severity instead.")
  (severity m))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <StatusText>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:text-val is deprecated.  Use mavros_msgs-msg:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StatusText>)))
    "Constants for message type '<StatusText>"
  '((:EMERGENCY . 0)
    (:ALERT . 1)
    (:CRITICAL . 2)
    (:ERROR . 3)
    (:WARNING . 4)
    (:NOTICE . 5)
    (:INFO . 6)
    (:DEBUG . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StatusText)))
    "Constants for message type 'StatusText"
  '((:EMERGENCY . 0)
    (:ALERT . 1)
    (:CRITICAL . 2)
    (:ERROR . 3)
    (:WARNING . 4)
    (:NOTICE . 5)
    (:INFO . 6)
    (:DEBUG . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StatusText>) ostream)
  "Serializes a message object of type '<StatusText>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'severity)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StatusText>) istream)
  "Deserializes a message object of type '<StatusText>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'severity)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StatusText>)))
  "Returns string type for a message object of type '<StatusText>"
  "mavros_msgs/StatusText")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatusText)))
  "Returns string type for a message object of type 'StatusText"
  "mavros_msgs/StatusText")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StatusText>)))
  "Returns md5sum for a message object of type '<StatusText>"
  "6cfd33cd09e4abf5841d7be3c770a969")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StatusText)))
  "Returns md5sum for a message object of type 'StatusText"
  "6cfd33cd09e4abf5841d7be3c770a969")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StatusText>)))
  "Returns full string definition for message of type '<StatusText>"
  (cl:format cl:nil "# STATUSTEXT message representation~%# https://mavlink.io/en/messages/common.html#STATUSTEXT~%~%# Severity levels~%uint8 EMERGENCY = 0~%uint8 ALERT = 1~%uint8 CRITICAL = 2~%uint8 ERROR = 3~%uint8 WARNING = 4~%uint8 NOTICE = 5~%uint8 INFO = 6~%uint8 DEBUG = 7~%~%# Fields~%std_msgs/Header header~%uint8 severity~%string text~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StatusText)))
  "Returns full string definition for message of type 'StatusText"
  (cl:format cl:nil "# STATUSTEXT message representation~%# https://mavlink.io/en/messages/common.html#STATUSTEXT~%~%# Severity levels~%uint8 EMERGENCY = 0~%uint8 ALERT = 1~%uint8 CRITICAL = 2~%uint8 ERROR = 3~%uint8 WARNING = 4~%uint8 NOTICE = 5~%uint8 INFO = 6~%uint8 DEBUG = 7~%~%# Fields~%std_msgs/Header header~%uint8 severity~%string text~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StatusText>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StatusText>))
  "Converts a ROS message object to a list"
  (cl:list 'StatusText
    (cl:cons ':header (header msg))
    (cl:cons ':severity (severity msg))
    (cl:cons ':text (text msg))
))
