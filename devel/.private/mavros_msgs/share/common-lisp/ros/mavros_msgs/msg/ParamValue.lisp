; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude ParamValue.msg.html

(cl:defclass <ParamValue> (roslisp-msg-protocol:ros-message)
  ((integer
    :reader integer
    :initarg :integer
    :type cl:integer
    :initform 0)
   (real
    :reader real
    :initarg :real
    :type cl:float
    :initform 0.0))
)

(cl:defclass ParamValue (<ParamValue>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamValue>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamValue)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<ParamValue> is deprecated: use mavros_msgs-msg:ParamValue instead.")))

(cl:ensure-generic-function 'integer-val :lambda-list '(m))
(cl:defmethod integer-val ((m <ParamValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:integer-val is deprecated.  Use mavros_msgs-msg:integer instead.")
  (integer m))

(cl:ensure-generic-function 'real-val :lambda-list '(m))
(cl:defmethod real-val ((m <ParamValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:real-val is deprecated.  Use mavros_msgs-msg:real instead.")
  (real m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamValue>) ostream)
  "Serializes a message object of type '<ParamValue>"
  (cl:let* ((signed (cl:slot-value msg 'integer)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'real))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamValue>) istream)
  "Deserializes a message object of type '<ParamValue>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'integer) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'real) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamValue>)))
  "Returns string type for a message object of type '<ParamValue>"
  "mavros_msgs/ParamValue")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamValue)))
  "Returns string type for a message object of type 'ParamValue"
  "mavros_msgs/ParamValue")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamValue>)))
  "Returns md5sum for a message object of type '<ParamValue>"
  "e2cb1c7a0f6ef0c62d450cd9362c980d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamValue)))
  "Returns md5sum for a message object of type 'ParamValue"
  "e2cb1c7a0f6ef0c62d450cd9362c980d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamValue>)))
  "Returns full string definition for message of type '<ParamValue>"
  (cl:format cl:nil "# Parameter value storage type.~%#~%# Integer and float fields:~%#~%# if integer != 0: it is integer value~%# else if real != 0.0: it is float value~%# else: it is zero.~%~%int64 integer~%float64 real~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamValue)))
  "Returns full string definition for message of type 'ParamValue"
  (cl:format cl:nil "# Parameter value storage type.~%#~%# Integer and float fields:~%#~%# if integer != 0: it is integer value~%# else if real != 0.0: it is float value~%# else: it is zero.~%~%int64 integer~%float64 real~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamValue>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamValue>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamValue
    (cl:cons ':integer (integer msg))
    (cl:cons ':real (real msg))
))
