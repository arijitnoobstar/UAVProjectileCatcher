; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude ESCInfo.msg.html

(cl:defclass <ESCInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (counter
    :reader counter
    :initarg :counter
    :type cl:fixnum
    :initform 0)
   (count
    :reader count
    :initarg :count
    :type cl:fixnum
    :initform 0)
   (connection_type
    :reader connection_type
    :initarg :connection_type
    :type cl:fixnum
    :initform 0)
   (info
    :reader info
    :initarg :info
    :type cl:fixnum
    :initform 0)
   (esc_info
    :reader esc_info
    :initarg :esc_info
    :type (cl:vector mavros_msgs-msg:ESCInfoItem)
   :initform (cl:make-array 0 :element-type 'mavros_msgs-msg:ESCInfoItem :initial-element (cl:make-instance 'mavros_msgs-msg:ESCInfoItem))))
)

(cl:defclass ESCInfo (<ESCInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ESCInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ESCInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<ESCInfo> is deprecated: use mavros_msgs-msg:ESCInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ESCInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'counter-val :lambda-list '(m))
(cl:defmethod counter-val ((m <ESCInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:counter-val is deprecated.  Use mavros_msgs-msg:counter instead.")
  (counter m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <ESCInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:count-val is deprecated.  Use mavros_msgs-msg:count instead.")
  (count m))

(cl:ensure-generic-function 'connection_type-val :lambda-list '(m))
(cl:defmethod connection_type-val ((m <ESCInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:connection_type-val is deprecated.  Use mavros_msgs-msg:connection_type instead.")
  (connection_type m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <ESCInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:info-val is deprecated.  Use mavros_msgs-msg:info instead.")
  (info m))

(cl:ensure-generic-function 'esc_info-val :lambda-list '(m))
(cl:defmethod esc_info-val ((m <ESCInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:esc_info-val is deprecated.  Use mavros_msgs-msg:esc_info instead.")
  (esc_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ESCInfo>) ostream)
  "Serializes a message object of type '<ESCInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'counter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'counter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'connection_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'info)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'esc_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'esc_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ESCInfo>) istream)
  "Deserializes a message object of type '<ESCInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'counter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'counter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'connection_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'info)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'esc_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'esc_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mavros_msgs-msg:ESCInfoItem))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ESCInfo>)))
  "Returns string type for a message object of type '<ESCInfo>"
  "mavros_msgs/ESCInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ESCInfo)))
  "Returns string type for a message object of type 'ESCInfo"
  "mavros_msgs/ESCInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ESCInfo>)))
  "Returns md5sum for a message object of type '<ESCInfo>"
  "0dadbe17da7077cfe645928710920e5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ESCInfo)))
  "Returns md5sum for a message object of type 'ESCInfo"
  "0dadbe17da7077cfe645928710920e5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ESCInfo>)))
  "Returns full string definition for message of type '<ESCInfo>"
  (cl:format cl:nil "# ESCInfo.msg~%#~%#~%# See mavlink message documentation here:~%# https://mavlink.io/en/messages/common.html#ESC_INFO~%~%std_msgs/Header header~%~%uint16 counter~%uint8 count~%uint8 connection_type~%uint8 info~%mavros_msgs/ESCInfoItem[] esc_info~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mavros_msgs/ESCInfoItem~%# ESCInfoItem.msg~%#~%#~%# See mavlink message documentation here:~%# https://mavlink.io/en/messages/common.html#ESC_INFO~%~%std_msgs/Header header~%~%uint16 failure_flags~%uint32 error_count~%uint8 temperature~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ESCInfo)))
  "Returns full string definition for message of type 'ESCInfo"
  (cl:format cl:nil "# ESCInfo.msg~%#~%#~%# See mavlink message documentation here:~%# https://mavlink.io/en/messages/common.html#ESC_INFO~%~%std_msgs/Header header~%~%uint16 counter~%uint8 count~%uint8 connection_type~%uint8 info~%mavros_msgs/ESCInfoItem[] esc_info~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mavros_msgs/ESCInfoItem~%# ESCInfoItem.msg~%#~%#~%# See mavlink message documentation here:~%# https://mavlink.io/en/messages/common.html#ESC_INFO~%~%std_msgs/Header header~%~%uint16 failure_flags~%uint32 error_count~%uint8 temperature~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ESCInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'esc_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ESCInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ESCInfo
    (cl:cons ':header (header msg))
    (cl:cons ':counter (counter msg))
    (cl:cons ':count (count msg))
    (cl:cons ':connection_type (connection_type msg))
    (cl:cons ':info (info msg))
    (cl:cons ':esc_info (esc_info msg))
))
