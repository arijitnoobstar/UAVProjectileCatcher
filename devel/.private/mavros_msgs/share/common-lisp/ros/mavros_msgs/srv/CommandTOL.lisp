; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude CommandTOL-request.msg.html

(cl:defclass <CommandTOL-request> (roslisp-msg-protocol:ros-message)
  ((min_pitch
    :reader min_pitch
    :initarg :min_pitch
    :type cl:float
    :initform 0.0)
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

(cl:defclass CommandTOL-request (<CommandTOL-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandTOL-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandTOL-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<CommandTOL-request> is deprecated: use mavros_msgs-srv:CommandTOL-request instead.")))

(cl:ensure-generic-function 'min_pitch-val :lambda-list '(m))
(cl:defmethod min_pitch-val ((m <CommandTOL-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:min_pitch-val is deprecated.  Use mavros_msgs-srv:min_pitch instead.")
  (min_pitch m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <CommandTOL-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:yaw-val is deprecated.  Use mavros_msgs-srv:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <CommandTOL-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:latitude-val is deprecated.  Use mavros_msgs-srv:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <CommandTOL-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:longitude-val is deprecated.  Use mavros_msgs-srv:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <CommandTOL-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:altitude-val is deprecated.  Use mavros_msgs-srv:altitude instead.")
  (altitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandTOL-request>) ostream)
  "Serializes a message object of type '<CommandTOL-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandTOL-request>) istream)
  "Deserializes a message object of type '<CommandTOL-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_pitch) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandTOL-request>)))
  "Returns string type for a service object of type '<CommandTOL-request>"
  "mavros_msgs/CommandTOLRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandTOL-request)))
  "Returns string type for a service object of type 'CommandTOL-request"
  "mavros_msgs/CommandTOLRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandTOL-request>)))
  "Returns md5sum for a message object of type '<CommandTOL-request>"
  "93ff4eaa9907f58c0e7a909cddce23e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandTOL-request)))
  "Returns md5sum for a message object of type 'CommandTOL-request"
  "93ff4eaa9907f58c0e7a909cddce23e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandTOL-request>)))
  "Returns full string definition for message of type '<CommandTOL-request>"
  (cl:format cl:nil "# Common type for Take Off and Landing~%~%float32 min_pitch	# used by takeoff~%float32 yaw~%float32 latitude~%float32 longitude~%float32 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandTOL-request)))
  "Returns full string definition for message of type 'CommandTOL-request"
  (cl:format cl:nil "# Common type for Take Off and Landing~%~%float32 min_pitch	# used by takeoff~%float32 yaw~%float32 latitude~%float32 longitude~%float32 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandTOL-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandTOL-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandTOL-request
    (cl:cons ':min_pitch (min_pitch msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':altitude (altitude msg))
))
;//! \htmlinclude CommandTOL-response.msg.html

(cl:defclass <CommandTOL-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass CommandTOL-response (<CommandTOL-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandTOL-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandTOL-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<CommandTOL-response> is deprecated: use mavros_msgs-srv:CommandTOL-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CommandTOL-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CommandTOL-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:result-val is deprecated.  Use mavros_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandTOL-response>) ostream)
  "Serializes a message object of type '<CommandTOL-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandTOL-response>) istream)
  "Deserializes a message object of type '<CommandTOL-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandTOL-response>)))
  "Returns string type for a service object of type '<CommandTOL-response>"
  "mavros_msgs/CommandTOLResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandTOL-response)))
  "Returns string type for a service object of type 'CommandTOL-response"
  "mavros_msgs/CommandTOLResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandTOL-response>)))
  "Returns md5sum for a message object of type '<CommandTOL-response>"
  "93ff4eaa9907f58c0e7a909cddce23e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandTOL-response)))
  "Returns md5sum for a message object of type 'CommandTOL-response"
  "93ff4eaa9907f58c0e7a909cddce23e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandTOL-response>)))
  "Returns full string definition for message of type '<CommandTOL-response>"
  (cl:format cl:nil "bool success~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandTOL-response)))
  "Returns full string definition for message of type 'CommandTOL-response"
  (cl:format cl:nil "bool success~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandTOL-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandTOL-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandTOL-response
    (cl:cons ':success (success msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CommandTOL)))
  'CommandTOL-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CommandTOL)))
  'CommandTOL-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandTOL)))
  "Returns string type for a service object of type '<CommandTOL>"
  "mavros_msgs/CommandTOL")