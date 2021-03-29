; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude LogRequestEnd-request.msg.html

(cl:defclass <LogRequestEnd-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LogRequestEnd-request (<LogRequestEnd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogRequestEnd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogRequestEnd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<LogRequestEnd-request> is deprecated: use mavros_msgs-srv:LogRequestEnd-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogRequestEnd-request>) ostream)
  "Serializes a message object of type '<LogRequestEnd-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogRequestEnd-request>) istream)
  "Deserializes a message object of type '<LogRequestEnd-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogRequestEnd-request>)))
  "Returns string type for a service object of type '<LogRequestEnd-request>"
  "mavros_msgs/LogRequestEndRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogRequestEnd-request)))
  "Returns string type for a service object of type 'LogRequestEnd-request"
  "mavros_msgs/LogRequestEndRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogRequestEnd-request>)))
  "Returns md5sum for a message object of type '<LogRequestEnd-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogRequestEnd-request)))
  "Returns md5sum for a message object of type 'LogRequestEnd-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogRequestEnd-request>)))
  "Returns full string definition for message of type '<LogRequestEnd-request>"
  (cl:format cl:nil "# Stop log transfer and resume normal logging~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogRequestEnd-request)))
  "Returns full string definition for message of type 'LogRequestEnd-request"
  (cl:format cl:nil "# Stop log transfer and resume normal logging~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogRequestEnd-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogRequestEnd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LogRequestEnd-request
))
;//! \htmlinclude LogRequestEnd-response.msg.html

(cl:defclass <LogRequestEnd-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LogRequestEnd-response (<LogRequestEnd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogRequestEnd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogRequestEnd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<LogRequestEnd-response> is deprecated: use mavros_msgs-srv:LogRequestEnd-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <LogRequestEnd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogRequestEnd-response>) ostream)
  "Serializes a message object of type '<LogRequestEnd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogRequestEnd-response>) istream)
  "Deserializes a message object of type '<LogRequestEnd-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogRequestEnd-response>)))
  "Returns string type for a service object of type '<LogRequestEnd-response>"
  "mavros_msgs/LogRequestEndResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogRequestEnd-response)))
  "Returns string type for a service object of type 'LogRequestEnd-response"
  "mavros_msgs/LogRequestEndResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogRequestEnd-response>)))
  "Returns md5sum for a message object of type '<LogRequestEnd-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogRequestEnd-response)))
  "Returns md5sum for a message object of type 'LogRequestEnd-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogRequestEnd-response>)))
  "Returns full string definition for message of type '<LogRequestEnd-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogRequestEnd-response)))
  "Returns full string definition for message of type 'LogRequestEnd-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogRequestEnd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogRequestEnd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LogRequestEnd-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LogRequestEnd)))
  'LogRequestEnd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LogRequestEnd)))
  'LogRequestEnd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogRequestEnd)))
  "Returns string type for a service object of type '<LogRequestEnd>"
  "mavros_msgs/LogRequestEnd")