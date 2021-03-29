; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude CommandBool-request.msg.html

(cl:defclass <CommandBool-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CommandBool-request (<CommandBool-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandBool-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandBool-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<CommandBool-request> is deprecated: use mavros_msgs-srv:CommandBool-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <CommandBool-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:value-val is deprecated.  Use mavros_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandBool-request>) ostream)
  "Serializes a message object of type '<CommandBool-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandBool-request>) istream)
  "Deserializes a message object of type '<CommandBool-request>"
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandBool-request>)))
  "Returns string type for a service object of type '<CommandBool-request>"
  "mavros_msgs/CommandBoolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandBool-request)))
  "Returns string type for a service object of type 'CommandBool-request"
  "mavros_msgs/CommandBoolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandBool-request>)))
  "Returns md5sum for a message object of type '<CommandBool-request>"
  "e09abbb4e5bae6b558e5010966eb6e9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandBool-request)))
  "Returns md5sum for a message object of type 'CommandBool-request"
  "e09abbb4e5bae6b558e5010966eb6e9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandBool-request>)))
  "Returns full string definition for message of type '<CommandBool-request>"
  (cl:format cl:nil "# Common type for switch commands~%~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandBool-request)))
  "Returns full string definition for message of type 'CommandBool-request"
  (cl:format cl:nil "# Common type for switch commands~%~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandBool-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandBool-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandBool-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude CommandBool-response.msg.html

(cl:defclass <CommandBool-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommandBool-response (<CommandBool-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandBool-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandBool-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<CommandBool-response> is deprecated: use mavros_msgs-srv:CommandBool-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CommandBool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CommandBool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:result-val is deprecated.  Use mavros_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandBool-response>) ostream)
  "Serializes a message object of type '<CommandBool-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandBool-response>) istream)
  "Deserializes a message object of type '<CommandBool-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandBool-response>)))
  "Returns string type for a service object of type '<CommandBool-response>"
  "mavros_msgs/CommandBoolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandBool-response)))
  "Returns string type for a service object of type 'CommandBool-response"
  "mavros_msgs/CommandBoolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandBool-response>)))
  "Returns md5sum for a message object of type '<CommandBool-response>"
  "e09abbb4e5bae6b558e5010966eb6e9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandBool-response)))
  "Returns md5sum for a message object of type 'CommandBool-response"
  "e09abbb4e5bae6b558e5010966eb6e9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandBool-response>)))
  "Returns full string definition for message of type '<CommandBool-response>"
  (cl:format cl:nil "bool success~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandBool-response)))
  "Returns full string definition for message of type 'CommandBool-response"
  (cl:format cl:nil "bool success~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandBool-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandBool-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandBool-response
    (cl:cons ':success (success msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CommandBool)))
  'CommandBool-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CommandBool)))
  'CommandBool-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandBool)))
  "Returns string type for a service object of type '<CommandBool>"
  "mavros_msgs/CommandBool")