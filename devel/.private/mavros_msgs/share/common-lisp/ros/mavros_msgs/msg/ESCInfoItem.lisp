; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude ESCInfoItem.msg.html

(cl:defclass <ESCInfoItem> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (failure_flags
    :reader failure_flags
    :initarg :failure_flags
    :type cl:fixnum
    :initform 0)
   (error_count
    :reader error_count
    :initarg :error_count
    :type cl:integer
    :initform 0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ESCInfoItem (<ESCInfoItem>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ESCInfoItem>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ESCInfoItem)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<ESCInfoItem> is deprecated: use mavros_msgs-msg:ESCInfoItem instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ESCInfoItem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'failure_flags-val :lambda-list '(m))
(cl:defmethod failure_flags-val ((m <ESCInfoItem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:failure_flags-val is deprecated.  Use mavros_msgs-msg:failure_flags instead.")
  (failure_flags m))

(cl:ensure-generic-function 'error_count-val :lambda-list '(m))
(cl:defmethod error_count-val ((m <ESCInfoItem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:error_count-val is deprecated.  Use mavros_msgs-msg:error_count instead.")
  (error_count m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <ESCInfoItem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:temperature-val is deprecated.  Use mavros_msgs-msg:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ESCInfoItem>) ostream)
  "Serializes a message object of type '<ESCInfoItem>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'failure_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'failure_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'temperature)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ESCInfoItem>) istream)
  "Deserializes a message object of type '<ESCInfoItem>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'failure_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'failure_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'temperature)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ESCInfoItem>)))
  "Returns string type for a message object of type '<ESCInfoItem>"
  "mavros_msgs/ESCInfoItem")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ESCInfoItem)))
  "Returns string type for a message object of type 'ESCInfoItem"
  "mavros_msgs/ESCInfoItem")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ESCInfoItem>)))
  "Returns md5sum for a message object of type '<ESCInfoItem>"
  "75e1464eb4b4334c3d96e6d91545afe5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ESCInfoItem)))
  "Returns md5sum for a message object of type 'ESCInfoItem"
  "75e1464eb4b4334c3d96e6d91545afe5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ESCInfoItem>)))
  "Returns full string definition for message of type '<ESCInfoItem>"
  (cl:format cl:nil "# ESCInfoItem.msg~%#~%#~%# See mavlink message documentation here:~%# https://mavlink.io/en/messages/common.html#ESC_INFO~%~%std_msgs/Header header~%~%uint16 failure_flags~%uint32 error_count~%uint8 temperature~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ESCInfoItem)))
  "Returns full string definition for message of type 'ESCInfoItem"
  (cl:format cl:nil "# ESCInfoItem.msg~%#~%#~%# See mavlink message documentation here:~%# https://mavlink.io/en/messages/common.html#ESC_INFO~%~%std_msgs/Header header~%~%uint16 failure_flags~%uint32 error_count~%uint8 temperature~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ESCInfoItem>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ESCInfoItem>))
  "Converts a ROS message object to a list"
  (cl:list 'ESCInfoItem
    (cl:cons ':header (header msg))
    (cl:cons ':failure_flags (failure_flags msg))
    (cl:cons ':error_count (error_count msg))
    (cl:cons ':temperature (temperature msg))
))
