; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude ParamSet-request.msg.html

(cl:defclass <ParamSet-request> (roslisp-msg-protocol:ros-message)
  ((param_id
    :reader param_id
    :initarg :param_id
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type mavros_msgs-msg:ParamValue
    :initform (cl:make-instance 'mavros_msgs-msg:ParamValue)))
)

(cl:defclass ParamSet-request (<ParamSet-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamSet-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamSet-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<ParamSet-request> is deprecated: use mavros_msgs-srv:ParamSet-request instead.")))

(cl:ensure-generic-function 'param_id-val :lambda-list '(m))
(cl:defmethod param_id-val ((m <ParamSet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:param_id-val is deprecated.  Use mavros_msgs-srv:param_id instead.")
  (param_id m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ParamSet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:value-val is deprecated.  Use mavros_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamSet-request>) ostream)
  "Serializes a message object of type '<ParamSet-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'param_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'param_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamSet-request>) istream)
  "Deserializes a message object of type '<ParamSet-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'param_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamSet-request>)))
  "Returns string type for a service object of type '<ParamSet-request>"
  "mavros_msgs/ParamSetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamSet-request)))
  "Returns string type for a service object of type 'ParamSet-request"
  "mavros_msgs/ParamSetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamSet-request>)))
  "Returns md5sum for a message object of type '<ParamSet-request>"
  "c423cafb898fff374cbe8530ecd4d285")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamSet-request)))
  "Returns md5sum for a message object of type 'ParamSet-request"
  "c423cafb898fff374cbe8530ecd4d285")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamSet-request>)))
  "Returns full string definition for message of type '<ParamSet-request>"
  (cl:format cl:nil "# Request set parameter value~%~%string param_id~%mavros_msgs/ParamValue value~%~%================================================================================~%MSG: mavros_msgs/ParamValue~%# Parameter value storage type.~%#~%# Integer and float fields:~%#~%# if integer != 0: it is integer value~%# else if real != 0.0: it is float value~%# else: it is zero.~%~%int64 integer~%float64 real~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamSet-request)))
  "Returns full string definition for message of type 'ParamSet-request"
  (cl:format cl:nil "# Request set parameter value~%~%string param_id~%mavros_msgs/ParamValue value~%~%================================================================================~%MSG: mavros_msgs/ParamValue~%# Parameter value storage type.~%#~%# Integer and float fields:~%#~%# if integer != 0: it is integer value~%# else if real != 0.0: it is float value~%# else: it is zero.~%~%int64 integer~%float64 real~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamSet-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'param_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamSet-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamSet-request
    (cl:cons ':param_id (param_id msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude ParamSet-response.msg.html

(cl:defclass <ParamSet-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (value
    :reader value
    :initarg :value
    :type mavros_msgs-msg:ParamValue
    :initform (cl:make-instance 'mavros_msgs-msg:ParamValue)))
)

(cl:defclass ParamSet-response (<ParamSet-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamSet-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamSet-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<ParamSet-response> is deprecated: use mavros_msgs-srv:ParamSet-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ParamSet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ParamSet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:value-val is deprecated.  Use mavros_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamSet-response>) ostream)
  "Serializes a message object of type '<ParamSet-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamSet-response>) istream)
  "Deserializes a message object of type '<ParamSet-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamSet-response>)))
  "Returns string type for a service object of type '<ParamSet-response>"
  "mavros_msgs/ParamSetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamSet-response)))
  "Returns string type for a service object of type 'ParamSet-response"
  "mavros_msgs/ParamSetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamSet-response>)))
  "Returns md5sum for a message object of type '<ParamSet-response>"
  "c423cafb898fff374cbe8530ecd4d285")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamSet-response)))
  "Returns md5sum for a message object of type 'ParamSet-response"
  "c423cafb898fff374cbe8530ecd4d285")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamSet-response>)))
  "Returns full string definition for message of type '<ParamSet-response>"
  (cl:format cl:nil "bool success~%mavros_msgs/ParamValue value~%~%~%================================================================================~%MSG: mavros_msgs/ParamValue~%# Parameter value storage type.~%#~%# Integer and float fields:~%#~%# if integer != 0: it is integer value~%# else if real != 0.0: it is float value~%# else: it is zero.~%~%int64 integer~%float64 real~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamSet-response)))
  "Returns full string definition for message of type 'ParamSet-response"
  (cl:format cl:nil "bool success~%mavros_msgs/ParamValue value~%~%~%================================================================================~%MSG: mavros_msgs/ParamValue~%# Parameter value storage type.~%#~%# Integer and float fields:~%#~%# if integer != 0: it is integer value~%# else if real != 0.0: it is float value~%# else: it is zero.~%~%int64 integer~%float64 real~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamSet-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamSet-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamSet-response
    (cl:cons ':success (success msg))
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ParamSet)))
  'ParamSet-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ParamSet)))
  'ParamSet-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamSet)))
  "Returns string type for a service object of type '<ParamSet>"
  "mavros_msgs/ParamSet")