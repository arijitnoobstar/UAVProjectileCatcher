; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude DebugValue.msg.html

(cl:defclass <DebugValue> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (value_float
    :reader value_float
    :initarg :value_float
    :type cl:float
    :initform 0.0)
   (value_int
    :reader value_int
    :initarg :value_int
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DebugValue (<DebugValue>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DebugValue>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DebugValue)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<DebugValue> is deprecated: use mavros_msgs-msg:DebugValue instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DebugValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <DebugValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:index-val is deprecated.  Use mavros_msgs-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DebugValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:name-val is deprecated.  Use mavros_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'value_float-val :lambda-list '(m))
(cl:defmethod value_float-val ((m <DebugValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:value_float-val is deprecated.  Use mavros_msgs-msg:value_float instead.")
  (value_float m))

(cl:ensure-generic-function 'value_int-val :lambda-list '(m))
(cl:defmethod value_int-val ((m <DebugValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:value_int-val is deprecated.  Use mavros_msgs-msg:value_int instead.")
  (value_int m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <DebugValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:data-val is deprecated.  Use mavros_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <DebugValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:type-val is deprecated.  Use mavros_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DebugValue>)))
    "Constants for message type '<DebugValue>"
  '((:TYPE_DEBUG . 0)
    (:TYPE_DEBUG_VECT . 1)
    (:TYPE_DEBUG_ARRAY . 2)
    (:TYPE_NAMED_VALUE_FLOAT . 3)
    (:TYPE_NAMED_VALUE_INT . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DebugValue)))
    "Constants for message type 'DebugValue"
  '((:TYPE_DEBUG . 0)
    (:TYPE_DEBUG_VECT . 1)
    (:TYPE_DEBUG_ARRAY . 2)
    (:TYPE_NAMED_VALUE_FLOAT . 3)
    (:TYPE_NAMED_VALUE_INT . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DebugValue>) ostream)
  "Serializes a message object of type '<DebugValue>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value_float))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'value_int)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'data))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DebugValue>) istream)
  "Deserializes a message object of type '<DebugValue>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value_float) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value_int) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DebugValue>)))
  "Returns string type for a message object of type '<DebugValue>"
  "mavros_msgs/DebugValue")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DebugValue)))
  "Returns string type for a message object of type 'DebugValue"
  "mavros_msgs/DebugValue")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DebugValue>)))
  "Returns md5sum for a message object of type '<DebugValue>"
  "af412ff7223c64155e7e3c6b7508eaaa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DebugValue)))
  "Returns md5sum for a message object of type 'DebugValue"
  "af412ff7223c64155e7e3c6b7508eaaa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DebugValue>)))
  "Returns full string definition for message of type '<DebugValue>"
  (cl:format cl:nil "# Msg for Debug MAVLink API~%#~%# Supported types:~%# DEBUG			https://mavlink.io/en/messages/common.html#DEBUG~%# DEBUG_VECTOR			https://mavlink.io/en/messages/common.html#DEBUG_VECT~%# NAMED_VALUE_FLOAT		https://mavlink.io/en/messages/common.html#NAMED_VALUE_FLOAT~%# NAMED_VALUE_INT		https://mavlink.io/en/messages/common.html#NAMED_VALUE_INT~%# @TODO: add support for DEBUG_ARRAY (https://github.com/mavlink/mavlink/pull/734)~%~%std_msgs/Header header~%~%int32 index			# index value of DEBUG value (-1 if not indexed)~%~%string name			# value name/key~%~%float32 value_float		# float value for NAMED_VALUE_FLOAT and DEBUG~%int32 value_int		# int value for NAMED_VALUE_INT~%float32[] data			# DEBUG vector or array~%~%uint8 type~%uint8 TYPE_DEBUG		= 0~%uint8 TYPE_DEBUG_VECT		= 1~%uint8 TYPE_DEBUG_ARRAY		= 2~%uint8 TYPE_NAMED_VALUE_FLOAT	= 3~%uint8 TYPE_NAMED_VALUE_INT	= 4~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DebugValue)))
  "Returns full string definition for message of type 'DebugValue"
  (cl:format cl:nil "# Msg for Debug MAVLink API~%#~%# Supported types:~%# DEBUG			https://mavlink.io/en/messages/common.html#DEBUG~%# DEBUG_VECTOR			https://mavlink.io/en/messages/common.html#DEBUG_VECT~%# NAMED_VALUE_FLOAT		https://mavlink.io/en/messages/common.html#NAMED_VALUE_FLOAT~%# NAMED_VALUE_INT		https://mavlink.io/en/messages/common.html#NAMED_VALUE_INT~%# @TODO: add support for DEBUG_ARRAY (https://github.com/mavlink/mavlink/pull/734)~%~%std_msgs/Header header~%~%int32 index			# index value of DEBUG value (-1 if not indexed)~%~%string name			# value name/key~%~%float32 value_float		# float value for NAMED_VALUE_FLOAT and DEBUG~%int32 value_int		# int value for NAMED_VALUE_INT~%float32[] data			# DEBUG vector or array~%~%uint8 type~%uint8 TYPE_DEBUG		= 0~%uint8 TYPE_DEBUG_VECT		= 1~%uint8 TYPE_DEBUG_ARRAY		= 2~%uint8 TYPE_NAMED_VALUE_FLOAT	= 3~%uint8 TYPE_NAMED_VALUE_INT	= 4~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DebugValue>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DebugValue>))
  "Converts a ROS message object to a list"
  (cl:list 'DebugValue
    (cl:cons ':header (header msg))
    (cl:cons ':index (index msg))
    (cl:cons ':name (name msg))
    (cl:cons ':value_float (value_float msg))
    (cl:cons ':value_int (value_int msg))
    (cl:cons ':data (data msg))
    (cl:cons ':type (type msg))
))
