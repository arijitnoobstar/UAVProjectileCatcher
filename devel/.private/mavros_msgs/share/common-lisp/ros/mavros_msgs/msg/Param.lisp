; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude Param.msg.html

(cl:defclass <Param> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (param_id
    :reader param_id
    :initarg :param_id
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type mavros_msgs-msg:ParamValue
    :initform (cl:make-instance 'mavros_msgs-msg:ParamValue))
   (param_index
    :reader param_index
    :initarg :param_index
    :type cl:fixnum
    :initform 0)
   (param_count
    :reader param_count
    :initarg :param_count
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Param (<Param>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Param>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Param)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<Param> is deprecated: use mavros_msgs-msg:Param instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'param_id-val :lambda-list '(m))
(cl:defmethod param_id-val ((m <Param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:param_id-val is deprecated.  Use mavros_msgs-msg:param_id instead.")
  (param_id m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:value-val is deprecated.  Use mavros_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'param_index-val :lambda-list '(m))
(cl:defmethod param_index-val ((m <Param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:param_index-val is deprecated.  Use mavros_msgs-msg:param_index instead.")
  (param_index m))

(cl:ensure-generic-function 'param_count-val :lambda-list '(m))
(cl:defmethod param_count-val ((m <Param>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:param_count-val is deprecated.  Use mavros_msgs-msg:param_count instead.")
  (param_count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Param>) ostream)
  "Serializes a message object of type '<Param>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'param_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'param_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'param_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'param_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'param_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'param_count)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Param>) istream)
  "Deserializes a message object of type '<Param>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'param_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'param_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'param_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'param_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'param_count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Param>)))
  "Returns string type for a message object of type '<Param>"
  "mavros_msgs/Param")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Param)))
  "Returns string type for a message object of type 'Param"
  "mavros_msgs/Param")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Param>)))
  "Returns md5sum for a message object of type '<Param>"
  "62165a8f212050223dda9583b0f22c3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Param)))
  "Returns md5sum for a message object of type 'Param"
  "62165a8f212050223dda9583b0f22c3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Param>)))
  "Returns full string definition for message of type '<Param>"
  (cl:format cl:nil "# Parameter msg.~%~%std_msgs/Header header~%~%string param_id~%mavros_msgs/ParamValue value~%~%uint16 param_index~%uint16 param_count~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mavros_msgs/ParamValue~%# Parameter value storage type.~%#~%# Integer and float fields:~%#~%# if integer != 0: it is integer value~%# else if real != 0.0: it is float value~%# else: it is zero.~%~%int64 integer~%float64 real~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Param)))
  "Returns full string definition for message of type 'Param"
  (cl:format cl:nil "# Parameter msg.~%~%std_msgs/Header header~%~%string param_id~%mavros_msgs/ParamValue value~%~%uint16 param_index~%uint16 param_count~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mavros_msgs/ParamValue~%# Parameter value storage type.~%#~%# Integer and float fields:~%#~%# if integer != 0: it is integer value~%# else if real != 0.0: it is float value~%# else: it is zero.~%~%int64 integer~%float64 real~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Param>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'param_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Param>))
  "Converts a ROS message object to a list"
  (cl:list 'Param
    (cl:cons ':header (header msg))
    (cl:cons ':param_id (param_id msg))
    (cl:cons ':value (value msg))
    (cl:cons ':param_index (param_index msg))
    (cl:cons ':param_count (param_count msg))
))
