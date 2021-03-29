; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude MessageInterval-request.msg.html

(cl:defclass <MessageInterval-request> (roslisp-msg-protocol:ros-message)
  ((message_id
    :reader message_id
    :initarg :message_id
    :type cl:integer
    :initform 0)
   (message_rate
    :reader message_rate
    :initarg :message_rate
    :type cl:float
    :initform 0.0))
)

(cl:defclass MessageInterval-request (<MessageInterval-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MessageInterval-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MessageInterval-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<MessageInterval-request> is deprecated: use mavros_msgs-srv:MessageInterval-request instead.")))

(cl:ensure-generic-function 'message_id-val :lambda-list '(m))
(cl:defmethod message_id-val ((m <MessageInterval-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:message_id-val is deprecated.  Use mavros_msgs-srv:message_id instead.")
  (message_id m))

(cl:ensure-generic-function 'message_rate-val :lambda-list '(m))
(cl:defmethod message_rate-val ((m <MessageInterval-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:message_rate-val is deprecated.  Use mavros_msgs-srv:message_rate instead.")
  (message_rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MessageInterval-request>) ostream)
  "Serializes a message object of type '<MessageInterval-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'message_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'message_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'message_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'message_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MessageInterval-request>) istream)
  "Deserializes a message object of type '<MessageInterval-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'message_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'message_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'message_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'message_rate) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MessageInterval-request>)))
  "Returns string type for a service object of type '<MessageInterval-request>"
  "mavros_msgs/MessageIntervalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MessageInterval-request)))
  "Returns string type for a service object of type 'MessageInterval-request"
  "mavros_msgs/MessageIntervalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MessageInterval-request>)))
  "Returns md5sum for a message object of type '<MessageInterval-request>"
  "99e633e185b7ee6b477bc9843a87b5ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MessageInterval-request)))
  "Returns md5sum for a message object of type 'MessageInterval-request"
  "99e633e185b7ee6b477bc9843a87b5ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MessageInterval-request>)))
  "Returns full string definition for message of type '<MessageInterval-request>"
  (cl:format cl:nil "# sets message interval~%# See MAV_CMD_SET_MESSAGE_INTERVAL~%~%uint32 message_id~%float32 message_rate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MessageInterval-request)))
  "Returns full string definition for message of type 'MessageInterval-request"
  (cl:format cl:nil "# sets message interval~%# See MAV_CMD_SET_MESSAGE_INTERVAL~%~%uint32 message_id~%float32 message_rate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MessageInterval-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MessageInterval-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MessageInterval-request
    (cl:cons ':message_id (message_id msg))
    (cl:cons ':message_rate (message_rate msg))
))
;//! \htmlinclude MessageInterval-response.msg.html

(cl:defclass <MessageInterval-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MessageInterval-response (<MessageInterval-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MessageInterval-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MessageInterval-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<MessageInterval-response> is deprecated: use mavros_msgs-srv:MessageInterval-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MessageInterval-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MessageInterval-response>) ostream)
  "Serializes a message object of type '<MessageInterval-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MessageInterval-response>) istream)
  "Deserializes a message object of type '<MessageInterval-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MessageInterval-response>)))
  "Returns string type for a service object of type '<MessageInterval-response>"
  "mavros_msgs/MessageIntervalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MessageInterval-response)))
  "Returns string type for a service object of type 'MessageInterval-response"
  "mavros_msgs/MessageIntervalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MessageInterval-response>)))
  "Returns md5sum for a message object of type '<MessageInterval-response>"
  "99e633e185b7ee6b477bc9843a87b5ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MessageInterval-response)))
  "Returns md5sum for a message object of type 'MessageInterval-response"
  "99e633e185b7ee6b477bc9843a87b5ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MessageInterval-response>)))
  "Returns full string definition for message of type '<MessageInterval-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MessageInterval-response)))
  "Returns full string definition for message of type 'MessageInterval-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MessageInterval-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MessageInterval-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MessageInterval-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MessageInterval)))
  'MessageInterval-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MessageInterval)))
  'MessageInterval-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MessageInterval)))
  "Returns string type for a service object of type '<MessageInterval>"
  "mavros_msgs/MessageInterval")