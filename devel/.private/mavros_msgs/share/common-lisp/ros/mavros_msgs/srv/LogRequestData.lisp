; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude LogRequestData-request.msg.html

(cl:defclass <LogRequestData-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (offset
    :reader offset
    :initarg :offset
    :type cl:integer
    :initform 0)
   (count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass LogRequestData-request (<LogRequestData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogRequestData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogRequestData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<LogRequestData-request> is deprecated: use mavros_msgs-srv:LogRequestData-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LogRequestData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:id-val is deprecated.  Use mavros_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <LogRequestData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:offset-val is deprecated.  Use mavros_msgs-srv:offset instead.")
  (offset m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <LogRequestData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:count-val is deprecated.  Use mavros_msgs-srv:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogRequestData-request>) ostream)
  "Serializes a message object of type '<LogRequestData-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogRequestData-request>) istream)
  "Deserializes a message object of type '<LogRequestData-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogRequestData-request>)))
  "Returns string type for a service object of type '<LogRequestData-request>"
  "mavros_msgs/LogRequestDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogRequestData-request)))
  "Returns string type for a service object of type 'LogRequestData-request"
  "mavros_msgs/LogRequestDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogRequestData-request>)))
  "Returns md5sum for a message object of type '<LogRequestData-request>"
  "91170669bcd08438f0440f9b4d12a11a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogRequestData-request)))
  "Returns md5sum for a message object of type 'LogRequestData-request"
  "91170669bcd08438f0440f9b4d12a11a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogRequestData-request>)))
  "Returns full string definition for message of type '<LogRequestData-request>"
  (cl:format cl:nil "# Request a chunk of a log~%#~%#  :id: - log id from LogEntry message~%#  :offset: - offset into the log~%#  :count: - number of bytes to get~%~%uint16 id~%uint32 offset~%uint32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogRequestData-request)))
  "Returns full string definition for message of type 'LogRequestData-request"
  (cl:format cl:nil "# Request a chunk of a log~%#~%#  :id: - log id from LogEntry message~%#  :offset: - offset into the log~%#  :count: - number of bytes to get~%~%uint16 id~%uint32 offset~%uint32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogRequestData-request>))
  (cl:+ 0
     2
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogRequestData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LogRequestData-request
    (cl:cons ':id (id msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':count (count msg))
))
;//! \htmlinclude LogRequestData-response.msg.html

(cl:defclass <LogRequestData-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LogRequestData-response (<LogRequestData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogRequestData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogRequestData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<LogRequestData-response> is deprecated: use mavros_msgs-srv:LogRequestData-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <LogRequestData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogRequestData-response>) ostream)
  "Serializes a message object of type '<LogRequestData-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogRequestData-response>) istream)
  "Deserializes a message object of type '<LogRequestData-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogRequestData-response>)))
  "Returns string type for a service object of type '<LogRequestData-response>"
  "mavros_msgs/LogRequestDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogRequestData-response)))
  "Returns string type for a service object of type 'LogRequestData-response"
  "mavros_msgs/LogRequestDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogRequestData-response>)))
  "Returns md5sum for a message object of type '<LogRequestData-response>"
  "91170669bcd08438f0440f9b4d12a11a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogRequestData-response)))
  "Returns md5sum for a message object of type 'LogRequestData-response"
  "91170669bcd08438f0440f9b4d12a11a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogRequestData-response>)))
  "Returns full string definition for message of type '<LogRequestData-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogRequestData-response)))
  "Returns full string definition for message of type 'LogRequestData-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogRequestData-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogRequestData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LogRequestData-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LogRequestData)))
  'LogRequestData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LogRequestData)))
  'LogRequestData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogRequestData)))
  "Returns string type for a service object of type '<LogRequestData>"
  "mavros_msgs/LogRequestData")