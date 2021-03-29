; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude CommandTriggerControl-request.msg.html

(cl:defclass <CommandTriggerControl-request> (roslisp-msg-protocol:ros-message)
  ((trigger_enable
    :reader trigger_enable
    :initarg :trigger_enable
    :type cl:boolean
    :initform cl:nil)
   (sequence_reset
    :reader sequence_reset
    :initarg :sequence_reset
    :type cl:boolean
    :initform cl:nil)
   (trigger_pause
    :reader trigger_pause
    :initarg :trigger_pause
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CommandTriggerControl-request (<CommandTriggerControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandTriggerControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandTriggerControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<CommandTriggerControl-request> is deprecated: use mavros_msgs-srv:CommandTriggerControl-request instead.")))

(cl:ensure-generic-function 'trigger_enable-val :lambda-list '(m))
(cl:defmethod trigger_enable-val ((m <CommandTriggerControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:trigger_enable-val is deprecated.  Use mavros_msgs-srv:trigger_enable instead.")
  (trigger_enable m))

(cl:ensure-generic-function 'sequence_reset-val :lambda-list '(m))
(cl:defmethod sequence_reset-val ((m <CommandTriggerControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:sequence_reset-val is deprecated.  Use mavros_msgs-srv:sequence_reset instead.")
  (sequence_reset m))

(cl:ensure-generic-function 'trigger_pause-val :lambda-list '(m))
(cl:defmethod trigger_pause-val ((m <CommandTriggerControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:trigger_pause-val is deprecated.  Use mavros_msgs-srv:trigger_pause instead.")
  (trigger_pause m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandTriggerControl-request>) ostream)
  "Serializes a message object of type '<CommandTriggerControl-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'trigger_enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sequence_reset) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'trigger_pause) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandTriggerControl-request>) istream)
  "Deserializes a message object of type '<CommandTriggerControl-request>"
    (cl:setf (cl:slot-value msg 'trigger_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sequence_reset) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'trigger_pause) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandTriggerControl-request>)))
  "Returns string type for a service object of type '<CommandTriggerControl-request>"
  "mavros_msgs/CommandTriggerControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandTriggerControl-request)))
  "Returns string type for a service object of type 'CommandTriggerControl-request"
  "mavros_msgs/CommandTriggerControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandTriggerControl-request>)))
  "Returns md5sum for a message object of type '<CommandTriggerControl-request>"
  "65be46a6918cb61b7dceb7c9ba9b1c97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandTriggerControl-request)))
  "Returns md5sum for a message object of type 'CommandTriggerControl-request"
  "65be46a6918cb61b7dceb7c9ba9b1c97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandTriggerControl-request>)))
  "Returns full string definition for message of type '<CommandTriggerControl-request>"
  (cl:format cl:nil "# Type for controlling onboard camera triggering system~%~%bool    trigger_enable		# Trigger enable/disable~%bool    sequence_reset		# Reset the trigger sequence~%bool    trigger_pause		# Pause triggering, but without switching the camera off or retracting it.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandTriggerControl-request)))
  "Returns full string definition for message of type 'CommandTriggerControl-request"
  (cl:format cl:nil "# Type for controlling onboard camera triggering system~%~%bool    trigger_enable		# Trigger enable/disable~%bool    sequence_reset		# Reset the trigger sequence~%bool    trigger_pause		# Pause triggering, but without switching the camera off or retracting it.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandTriggerControl-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandTriggerControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandTriggerControl-request
    (cl:cons ':trigger_enable (trigger_enable msg))
    (cl:cons ':sequence_reset (sequence_reset msg))
    (cl:cons ':trigger_pause (trigger_pause msg))
))
;//! \htmlinclude CommandTriggerControl-response.msg.html

(cl:defclass <CommandTriggerControl-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass CommandTriggerControl-response (<CommandTriggerControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandTriggerControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandTriggerControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<CommandTriggerControl-response> is deprecated: use mavros_msgs-srv:CommandTriggerControl-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CommandTriggerControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CommandTriggerControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:result-val is deprecated.  Use mavros_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandTriggerControl-response>) ostream)
  "Serializes a message object of type '<CommandTriggerControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandTriggerControl-response>) istream)
  "Deserializes a message object of type '<CommandTriggerControl-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandTriggerControl-response>)))
  "Returns string type for a service object of type '<CommandTriggerControl-response>"
  "mavros_msgs/CommandTriggerControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandTriggerControl-response)))
  "Returns string type for a service object of type 'CommandTriggerControl-response"
  "mavros_msgs/CommandTriggerControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandTriggerControl-response>)))
  "Returns md5sum for a message object of type '<CommandTriggerControl-response>"
  "65be46a6918cb61b7dceb7c9ba9b1c97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandTriggerControl-response)))
  "Returns md5sum for a message object of type 'CommandTriggerControl-response"
  "65be46a6918cb61b7dceb7c9ba9b1c97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandTriggerControl-response>)))
  "Returns full string definition for message of type '<CommandTriggerControl-response>"
  (cl:format cl:nil "bool success~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandTriggerControl-response)))
  "Returns full string definition for message of type 'CommandTriggerControl-response"
  (cl:format cl:nil "bool success~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandTriggerControl-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandTriggerControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandTriggerControl-response
    (cl:cons ':success (success msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CommandTriggerControl)))
  'CommandTriggerControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CommandTriggerControl)))
  'CommandTriggerControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandTriggerControl)))
  "Returns string type for a service object of type '<CommandTriggerControl>"
  "mavros_msgs/CommandTriggerControl")