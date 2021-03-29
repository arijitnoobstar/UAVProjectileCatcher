; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude LogRequestList-request.msg.html

(cl:defclass <LogRequestList-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type cl:fixnum
    :initform 0)
   (end
    :reader end
    :initarg :end
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LogRequestList-request (<LogRequestList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogRequestList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogRequestList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<LogRequestList-request> is deprecated: use mavros_msgs-srv:LogRequestList-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <LogRequestList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:start-val is deprecated.  Use mavros_msgs-srv:start instead.")
  (start m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <LogRequestList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:end-val is deprecated.  Use mavros_msgs-srv:end instead.")
  (end m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogRequestList-request>) ostream)
  "Serializes a message object of type '<LogRequestList-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogRequestList-request>) istream)
  "Deserializes a message object of type '<LogRequestList-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogRequestList-request>)))
  "Returns string type for a service object of type '<LogRequestList-request>"
  "mavros_msgs/LogRequestListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogRequestList-request)))
  "Returns string type for a service object of type 'LogRequestList-request"
  "mavros_msgs/LogRequestListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogRequestList-request>)))
  "Returns md5sum for a message object of type '<LogRequestList-request>"
  "3e2e88c935b3047e14f450bc4a90c4d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogRequestList-request)))
  "Returns md5sum for a message object of type 'LogRequestList-request"
  "3e2e88c935b3047e14f450bc4a90c4d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogRequestList-request>)))
  "Returns full string definition for message of type '<LogRequestList-request>"
  (cl:format cl:nil "# Request a list of available logs~%#~%#  :start: - first log id (0 for first available)~%#  :end: - last log id (0xffff for last available)~%~%uint16 start~%uint16 end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogRequestList-request)))
  "Returns full string definition for message of type 'LogRequestList-request"
  (cl:format cl:nil "# Request a list of available logs~%#~%#  :start: - first log id (0 for first available)~%#  :end: - last log id (0xffff for last available)~%~%uint16 start~%uint16 end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogRequestList-request>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogRequestList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LogRequestList-request
    (cl:cons ':start (start msg))
    (cl:cons ':end (end msg))
))
;//! \htmlinclude LogRequestList-response.msg.html

(cl:defclass <LogRequestList-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LogRequestList-response (<LogRequestList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogRequestList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogRequestList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<LogRequestList-response> is deprecated: use mavros_msgs-srv:LogRequestList-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <LogRequestList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogRequestList-response>) ostream)
  "Serializes a message object of type '<LogRequestList-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogRequestList-response>) istream)
  "Deserializes a message object of type '<LogRequestList-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogRequestList-response>)))
  "Returns string type for a service object of type '<LogRequestList-response>"
  "mavros_msgs/LogRequestListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogRequestList-response)))
  "Returns string type for a service object of type 'LogRequestList-response"
  "mavros_msgs/LogRequestListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogRequestList-response>)))
  "Returns md5sum for a message object of type '<LogRequestList-response>"
  "3e2e88c935b3047e14f450bc4a90c4d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogRequestList-response)))
  "Returns md5sum for a message object of type 'LogRequestList-response"
  "3e2e88c935b3047e14f450bc4a90c4d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogRequestList-response>)))
  "Returns full string definition for message of type '<LogRequestList-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogRequestList-response)))
  "Returns full string definition for message of type 'LogRequestList-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogRequestList-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogRequestList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LogRequestList-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LogRequestList)))
  'LogRequestList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LogRequestList)))
  'LogRequestList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogRequestList)))
  "Returns string type for a service object of type '<LogRequestList>"
  "mavros_msgs/LogRequestList")