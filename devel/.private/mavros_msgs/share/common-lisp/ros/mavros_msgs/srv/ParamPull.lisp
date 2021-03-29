; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude ParamPull-request.msg.html

(cl:defclass <ParamPull-request> (roslisp-msg-protocol:ros-message)
  ((force_pull
    :reader force_pull
    :initarg :force_pull
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ParamPull-request (<ParamPull-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamPull-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamPull-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<ParamPull-request> is deprecated: use mavros_msgs-srv:ParamPull-request instead.")))

(cl:ensure-generic-function 'force_pull-val :lambda-list '(m))
(cl:defmethod force_pull-val ((m <ParamPull-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:force_pull-val is deprecated.  Use mavros_msgs-srv:force_pull instead.")
  (force_pull m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamPull-request>) ostream)
  "Serializes a message object of type '<ParamPull-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'force_pull) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamPull-request>) istream)
  "Deserializes a message object of type '<ParamPull-request>"
    (cl:setf (cl:slot-value msg 'force_pull) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamPull-request>)))
  "Returns string type for a service object of type '<ParamPull-request>"
  "mavros_msgs/ParamPullRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamPull-request)))
  "Returns string type for a service object of type 'ParamPull-request"
  "mavros_msgs/ParamPullRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamPull-request>)))
  "Returns md5sum for a message object of type '<ParamPull-request>"
  "c9628aea2226088718fd240fbd62afc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamPull-request)))
  "Returns md5sum for a message object of type 'ParamPull-request"
  "c9628aea2226088718fd240fbd62afc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamPull-request>)))
  "Returns full string definition for message of type '<ParamPull-request>"
  (cl:format cl:nil "# Request parameters from device~%#~%# Returns success status and param_recived count~%~%bool force_pull~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamPull-request)))
  "Returns full string definition for message of type 'ParamPull-request"
  (cl:format cl:nil "# Request parameters from device~%#~%# Returns success status and param_recived count~%~%bool force_pull~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamPull-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamPull-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamPull-request
    (cl:cons ':force_pull (force_pull msg))
))
;//! \htmlinclude ParamPull-response.msg.html

(cl:defclass <ParamPull-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (param_received
    :reader param_received
    :initarg :param_received
    :type cl:integer
    :initform 0))
)

(cl:defclass ParamPull-response (<ParamPull-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamPull-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamPull-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<ParamPull-response> is deprecated: use mavros_msgs-srv:ParamPull-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ParamPull-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'param_received-val :lambda-list '(m))
(cl:defmethod param_received-val ((m <ParamPull-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:param_received-val is deprecated.  Use mavros_msgs-srv:param_received instead.")
  (param_received m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamPull-response>) ostream)
  "Serializes a message object of type '<ParamPull-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'param_received)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'param_received)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'param_received)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'param_received)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamPull-response>) istream)
  "Deserializes a message object of type '<ParamPull-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'param_received)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'param_received)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'param_received)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'param_received)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamPull-response>)))
  "Returns string type for a service object of type '<ParamPull-response>"
  "mavros_msgs/ParamPullResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamPull-response)))
  "Returns string type for a service object of type 'ParamPull-response"
  "mavros_msgs/ParamPullResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamPull-response>)))
  "Returns md5sum for a message object of type '<ParamPull-response>"
  "c9628aea2226088718fd240fbd62afc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamPull-response)))
  "Returns md5sum for a message object of type 'ParamPull-response"
  "c9628aea2226088718fd240fbd62afc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamPull-response>)))
  "Returns full string definition for message of type '<ParamPull-response>"
  (cl:format cl:nil "bool success~%uint32 param_received~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamPull-response)))
  "Returns full string definition for message of type 'ParamPull-response"
  (cl:format cl:nil "bool success~%uint32 param_received~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamPull-response>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamPull-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamPull-response
    (cl:cons ':success (success msg))
    (cl:cons ':param_received (param_received msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ParamPull)))
  'ParamPull-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ParamPull)))
  'ParamPull-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamPull)))
  "Returns string type for a service object of type '<ParamPull>"
  "mavros_msgs/ParamPull")