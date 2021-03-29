; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude CommandHome-request.msg.html

(cl:defclass <CommandHome-request> (roslisp-msg-protocol:ros-message)
  ((current_gps
    :reader current_gps
    :initarg :current_gps
    :type cl:boolean
    :initform cl:nil)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass CommandHome-request (<CommandHome-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandHome-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandHome-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<CommandHome-request> is deprecated: use mavros_msgs-srv:CommandHome-request instead.")))

(cl:ensure-generic-function 'current_gps-val :lambda-list '(m))
(cl:defmethod current_gps-val ((m <CommandHome-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:current_gps-val is deprecated.  Use mavros_msgs-srv:current_gps instead.")
  (current_gps m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <CommandHome-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:yaw-val is deprecated.  Use mavros_msgs-srv:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <CommandHome-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:latitude-val is deprecated.  Use mavros_msgs-srv:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <CommandHome-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:longitude-val is deprecated.  Use mavros_msgs-srv:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <CommandHome-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:altitude-val is deprecated.  Use mavros_msgs-srv:altitude instead.")
  (altitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandHome-request>) ostream)
  "Serializes a message object of type '<CommandHome-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'current_gps) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandHome-request>) istream)
  "Deserializes a message object of type '<CommandHome-request>"
    (cl:setf (cl:slot-value msg 'current_gps) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandHome-request>)))
  "Returns string type for a service object of type '<CommandHome-request>"
  "mavros_msgs/CommandHomeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandHome-request)))
  "Returns string type for a service object of type 'CommandHome-request"
  "mavros_msgs/CommandHomeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandHome-request>)))
  "Returns md5sum for a message object of type '<CommandHome-request>"
  "05b5da557a6a0cf6c2b958dba173bca1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandHome-request)))
  "Returns md5sum for a message object of type 'CommandHome-request"
  "05b5da557a6a0cf6c2b958dba173bca1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandHome-request>)))
  "Returns full string definition for message of type '<CommandHome-request>"
  (cl:format cl:nil "# request set new home position~%~%bool current_gps~%float32 yaw~%float32 latitude~%float32 longitude~%float32 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandHome-request)))
  "Returns full string definition for message of type 'CommandHome-request"
  (cl:format cl:nil "# request set new home position~%~%bool current_gps~%float32 yaw~%float32 latitude~%float32 longitude~%float32 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandHome-request>))
  (cl:+ 0
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandHome-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandHome-request
    (cl:cons ':current_gps (current_gps msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':altitude (altitude msg))
))
;//! \htmlinclude CommandHome-response.msg.html

(cl:defclass <CommandHome-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass CommandHome-response (<CommandHome-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandHome-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandHome-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<CommandHome-response> is deprecated: use mavros_msgs-srv:CommandHome-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CommandHome-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CommandHome-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:result-val is deprecated.  Use mavros_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandHome-response>) ostream)
  "Serializes a message object of type '<CommandHome-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandHome-response>) istream)
  "Deserializes a message object of type '<CommandHome-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandHome-response>)))
  "Returns string type for a service object of type '<CommandHome-response>"
  "mavros_msgs/CommandHomeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandHome-response)))
  "Returns string type for a service object of type 'CommandHome-response"
  "mavros_msgs/CommandHomeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandHome-response>)))
  "Returns md5sum for a message object of type '<CommandHome-response>"
  "05b5da557a6a0cf6c2b958dba173bca1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandHome-response)))
  "Returns md5sum for a message object of type 'CommandHome-response"
  "05b5da557a6a0cf6c2b958dba173bca1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandHome-response>)))
  "Returns full string definition for message of type '<CommandHome-response>"
  (cl:format cl:nil "bool success~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandHome-response)))
  "Returns full string definition for message of type 'CommandHome-response"
  (cl:format cl:nil "bool success~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandHome-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandHome-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandHome-response
    (cl:cons ':success (success msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CommandHome)))
  'CommandHome-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CommandHome)))
  'CommandHome-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandHome)))
  "Returns string type for a service object of type '<CommandHome>"
  "mavros_msgs/CommandHome")