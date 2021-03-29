; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude CommandTriggerInterval-request.msg.html

(cl:defclass <CommandTriggerInterval-request> (roslisp-msg-protocol:ros-message)
  ((cycle_time
    :reader cycle_time
    :initarg :cycle_time
    :type cl:float
    :initform 0.0)
   (integration_time
    :reader integration_time
    :initarg :integration_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass CommandTriggerInterval-request (<CommandTriggerInterval-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandTriggerInterval-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandTriggerInterval-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<CommandTriggerInterval-request> is deprecated: use mavros_msgs-srv:CommandTriggerInterval-request instead.")))

(cl:ensure-generic-function 'cycle_time-val :lambda-list '(m))
(cl:defmethod cycle_time-val ((m <CommandTriggerInterval-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:cycle_time-val is deprecated.  Use mavros_msgs-srv:cycle_time instead.")
  (cycle_time m))

(cl:ensure-generic-function 'integration_time-val :lambda-list '(m))
(cl:defmethod integration_time-val ((m <CommandTriggerInterval-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:integration_time-val is deprecated.  Use mavros_msgs-srv:integration_time instead.")
  (integration_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandTriggerInterval-request>) ostream)
  "Serializes a message object of type '<CommandTriggerInterval-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cycle_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'integration_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandTriggerInterval-request>) istream)
  "Deserializes a message object of type '<CommandTriggerInterval-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cycle_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'integration_time) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandTriggerInterval-request>)))
  "Returns string type for a service object of type '<CommandTriggerInterval-request>"
  "mavros_msgs/CommandTriggerIntervalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandTriggerInterval-request)))
  "Returns string type for a service object of type 'CommandTriggerInterval-request"
  "mavros_msgs/CommandTriggerIntervalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandTriggerInterval-request>)))
  "Returns md5sum for a message object of type '<CommandTriggerInterval-request>"
  "b16f28a04389d5d47ddaa9e025e7383a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandTriggerInterval-request)))
  "Returns md5sum for a message object of type 'CommandTriggerInterval-request"
  "b16f28a04389d5d47ddaa9e025e7383a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandTriggerInterval-request>)))
  "Returns full string definition for message of type '<CommandTriggerInterval-request>"
  (cl:format cl:nil "# Type for controlling camera trigger interval and integration time~%~%float32   cycle_time			# Trigger cycle_time (interval between to triggers) - set to 0 to ignore command~%float32   integration_time	# Camera shutter integration_time - set to 0 to ignore command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandTriggerInterval-request)))
  "Returns full string definition for message of type 'CommandTriggerInterval-request"
  (cl:format cl:nil "# Type for controlling camera trigger interval and integration time~%~%float32   cycle_time			# Trigger cycle_time (interval between to triggers) - set to 0 to ignore command~%float32   integration_time	# Camera shutter integration_time - set to 0 to ignore command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandTriggerInterval-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandTriggerInterval-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandTriggerInterval-request
    (cl:cons ':cycle_time (cycle_time msg))
    (cl:cons ':integration_time (integration_time msg))
))
;//! \htmlinclude CommandTriggerInterval-response.msg.html

(cl:defclass <CommandTriggerInterval-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass CommandTriggerInterval-response (<CommandTriggerInterval-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandTriggerInterval-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandTriggerInterval-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<CommandTriggerInterval-response> is deprecated: use mavros_msgs-srv:CommandTriggerInterval-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CommandTriggerInterval-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CommandTriggerInterval-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:result-val is deprecated.  Use mavros_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandTriggerInterval-response>) ostream)
  "Serializes a message object of type '<CommandTriggerInterval-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandTriggerInterval-response>) istream)
  "Deserializes a message object of type '<CommandTriggerInterval-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandTriggerInterval-response>)))
  "Returns string type for a service object of type '<CommandTriggerInterval-response>"
  "mavros_msgs/CommandTriggerIntervalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandTriggerInterval-response)))
  "Returns string type for a service object of type 'CommandTriggerInterval-response"
  "mavros_msgs/CommandTriggerIntervalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandTriggerInterval-response>)))
  "Returns md5sum for a message object of type '<CommandTriggerInterval-response>"
  "b16f28a04389d5d47ddaa9e025e7383a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandTriggerInterval-response)))
  "Returns md5sum for a message object of type 'CommandTriggerInterval-response"
  "b16f28a04389d5d47ddaa9e025e7383a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandTriggerInterval-response>)))
  "Returns full string definition for message of type '<CommandTriggerInterval-response>"
  (cl:format cl:nil "bool success~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandTriggerInterval-response)))
  "Returns full string definition for message of type 'CommandTriggerInterval-response"
  (cl:format cl:nil "bool success~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandTriggerInterval-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandTriggerInterval-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandTriggerInterval-response
    (cl:cons ':success (success msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CommandTriggerInterval)))
  'CommandTriggerInterval-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CommandTriggerInterval)))
  'CommandTriggerInterval-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandTriggerInterval)))
  "Returns string type for a service object of type '<CommandTriggerInterval>"
  "mavros_msgs/CommandTriggerInterval")