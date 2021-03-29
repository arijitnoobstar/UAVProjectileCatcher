; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude ParamGet-request.msg.html

(cl:defclass <ParamGet-request> (roslisp-msg-protocol:ros-message)
  ((param_id
    :reader param_id
    :initarg :param_id
    :type cl:string
    :initform ""))
)

(cl:defclass ParamGet-request (<ParamGet-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamGet-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamGet-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<ParamGet-request> is deprecated: use mavros_msgs-srv:ParamGet-request instead.")))

(cl:ensure-generic-function 'param_id-val :lambda-list '(m))
(cl:defmethod param_id-val ((m <ParamGet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:param_id-val is deprecated.  Use mavros_msgs-srv:param_id instead.")
  (param_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamGet-request>) ostream)
  "Serializes a message object of type '<ParamGet-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'param_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'param_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamGet-request>) istream)
  "Deserializes a message object of type '<ParamGet-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'param_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamGet-request>)))
  "Returns string type for a service object of type '<ParamGet-request>"
  "mavros_msgs/ParamGetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamGet-request)))
  "Returns string type for a service object of type 'ParamGet-request"
  "mavros_msgs/ParamGetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamGet-request>)))
  "Returns md5sum for a message object of type '<ParamGet-request>"
  "777d24d2a7ab1765ef009a69f464d2bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamGet-request)))
  "Returns md5sum for a message object of type 'ParamGet-request"
  "777d24d2a7ab1765ef009a69f464d2bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamGet-request>)))
  "Returns full string definition for message of type '<ParamGet-request>"
  (cl:format cl:nil "# Request parameter from attached device~%~%string param_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamGet-request)))
  "Returns full string definition for message of type 'ParamGet-request"
  (cl:format cl:nil "# Request parameter from attached device~%~%string param_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamGet-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'param_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamGet-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamGet-request
    (cl:cons ':param_id (param_id msg))
))
;//! \htmlinclude ParamGet-response.msg.html

(cl:defclass <ParamGet-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ParamGet-response (<ParamGet-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamGet-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamGet-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<ParamGet-response> is deprecated: use mavros_msgs-srv:ParamGet-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ParamGet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ParamGet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:value-val is deprecated.  Use mavros_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamGet-response>) ostream)
  "Serializes a message object of type '<ParamGet-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamGet-response>) istream)
  "Deserializes a message object of type '<ParamGet-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamGet-response>)))
  "Returns string type for a service object of type '<ParamGet-response>"
  "mavros_msgs/ParamGetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamGet-response)))
  "Returns string type for a service object of type 'ParamGet-response"
  "mavros_msgs/ParamGetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamGet-response>)))
  "Returns md5sum for a message object of type '<ParamGet-response>"
  "777d24d2a7ab1765ef009a69f464d2bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamGet-response)))
  "Returns md5sum for a message object of type 'ParamGet-response"
  "777d24d2a7ab1765ef009a69f464d2bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamGet-response>)))
  "Returns full string definition for message of type '<ParamGet-response>"
  (cl:format cl:nil "bool success~%ParamValue value~%~%~%================================================================================~%MSG: mavros_msgs/ParamValue~%# Parameter value storage type.~%#~%# Integer and float fields:~%#~%# if integer != 0: it is integer value~%# else if real != 0.0: it is float value~%# else: it is zero.~%~%int64 integer~%float64 real~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamGet-response)))
  "Returns full string definition for message of type 'ParamGet-response"
  (cl:format cl:nil "bool success~%ParamValue value~%~%~%================================================================================~%MSG: mavros_msgs/ParamValue~%# Parameter value storage type.~%#~%# Integer and float fields:~%#~%# if integer != 0: it is integer value~%# else if real != 0.0: it is float value~%# else: it is zero.~%~%int64 integer~%float64 real~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamGet-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamGet-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamGet-response
    (cl:cons ':success (success msg))
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ParamGet)))
  'ParamGet-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ParamGet)))
  'ParamGet-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamGet)))
  "Returns string type for a service object of type '<ParamGet>"
  "mavros_msgs/ParamGet")