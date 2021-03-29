; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude ParamPush-request.msg.html

(cl:defclass <ParamPush-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ParamPush-request (<ParamPush-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamPush-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamPush-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<ParamPush-request> is deprecated: use mavros_msgs-srv:ParamPush-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamPush-request>) ostream)
  "Serializes a message object of type '<ParamPush-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamPush-request>) istream)
  "Deserializes a message object of type '<ParamPush-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamPush-request>)))
  "Returns string type for a service object of type '<ParamPush-request>"
  "mavros_msgs/ParamPushRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamPush-request)))
  "Returns string type for a service object of type 'ParamPush-request"
  "mavros_msgs/ParamPushRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamPush-request>)))
  "Returns md5sum for a message object of type '<ParamPush-request>"
  "d3fc4d8cefa193382985a92a041a2a3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamPush-request)))
  "Returns md5sum for a message object of type 'ParamPush-request"
  "d3fc4d8cefa193382985a92a041a2a3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamPush-request>)))
  "Returns full string definition for message of type '<ParamPush-request>"
  (cl:format cl:nil "# Send current send~%#~%# Returns success status and param_transfered count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamPush-request)))
  "Returns full string definition for message of type 'ParamPush-request"
  (cl:format cl:nil "# Send current send~%#~%# Returns success status and param_transfered count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamPush-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamPush-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamPush-request
))
;//! \htmlinclude ParamPush-response.msg.html

(cl:defclass <ParamPush-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (param_transfered
    :reader param_transfered
    :initarg :param_transfered
    :type cl:integer
    :initform 0))
)

(cl:defclass ParamPush-response (<ParamPush-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamPush-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamPush-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<ParamPush-response> is deprecated: use mavros_msgs-srv:ParamPush-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ParamPush-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'param_transfered-val :lambda-list '(m))
(cl:defmethod param_transfered-val ((m <ParamPush-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:param_transfered-val is deprecated.  Use mavros_msgs-srv:param_transfered instead.")
  (param_transfered m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamPush-response>) ostream)
  "Serializes a message object of type '<ParamPush-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'param_transfered)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'param_transfered)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'param_transfered)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'param_transfered)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamPush-response>) istream)
  "Deserializes a message object of type '<ParamPush-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'param_transfered)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'param_transfered)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'param_transfered)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'param_transfered)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamPush-response>)))
  "Returns string type for a service object of type '<ParamPush-response>"
  "mavros_msgs/ParamPushResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamPush-response)))
  "Returns string type for a service object of type 'ParamPush-response"
  "mavros_msgs/ParamPushResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamPush-response>)))
  "Returns md5sum for a message object of type '<ParamPush-response>"
  "d3fc4d8cefa193382985a92a041a2a3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamPush-response)))
  "Returns md5sum for a message object of type 'ParamPush-response"
  "d3fc4d8cefa193382985a92a041a2a3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamPush-response>)))
  "Returns full string definition for message of type '<ParamPush-response>"
  (cl:format cl:nil "bool success~%uint32 param_transfered~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamPush-response)))
  "Returns full string definition for message of type 'ParamPush-response"
  (cl:format cl:nil "bool success~%uint32 param_transfered~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamPush-response>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamPush-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamPush-response
    (cl:cons ':success (success msg))
    (cl:cons ':param_transfered (param_transfered msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ParamPush)))
  'ParamPush-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ParamPush)))
  'ParamPush-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamPush)))
  "Returns string type for a service object of type '<ParamPush>"
  "mavros_msgs/ParamPush")