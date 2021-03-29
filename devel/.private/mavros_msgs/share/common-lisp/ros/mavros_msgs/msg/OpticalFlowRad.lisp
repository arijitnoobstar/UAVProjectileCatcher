; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude OpticalFlowRad.msg.html

(cl:defclass <OpticalFlowRad> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (integration_time_us
    :reader integration_time_us
    :initarg :integration_time_us
    :type cl:integer
    :initform 0)
   (integrated_x
    :reader integrated_x
    :initarg :integrated_x
    :type cl:float
    :initform 0.0)
   (integrated_y
    :reader integrated_y
    :initarg :integrated_y
    :type cl:float
    :initform 0.0)
   (integrated_xgyro
    :reader integrated_xgyro
    :initarg :integrated_xgyro
    :type cl:float
    :initform 0.0)
   (integrated_ygyro
    :reader integrated_ygyro
    :initarg :integrated_ygyro
    :type cl:float
    :initform 0.0)
   (integrated_zgyro
    :reader integrated_zgyro
    :initarg :integrated_zgyro
    :type cl:float
    :initform 0.0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:fixnum
    :initform 0)
   (quality
    :reader quality
    :initarg :quality
    :type cl:fixnum
    :initform 0)
   (time_delta_distance_us
    :reader time_delta_distance_us
    :initarg :time_delta_distance_us
    :type cl:integer
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass OpticalFlowRad (<OpticalFlowRad>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpticalFlowRad>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpticalFlowRad)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<OpticalFlowRad> is deprecated: use mavros_msgs-msg:OpticalFlowRad instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OpticalFlowRad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'integration_time_us-val :lambda-list '(m))
(cl:defmethod integration_time_us-val ((m <OpticalFlowRad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:integration_time_us-val is deprecated.  Use mavros_msgs-msg:integration_time_us instead.")
  (integration_time_us m))

(cl:ensure-generic-function 'integrated_x-val :lambda-list '(m))
(cl:defmethod integrated_x-val ((m <OpticalFlowRad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:integrated_x-val is deprecated.  Use mavros_msgs-msg:integrated_x instead.")
  (integrated_x m))

(cl:ensure-generic-function 'integrated_y-val :lambda-list '(m))
(cl:defmethod integrated_y-val ((m <OpticalFlowRad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:integrated_y-val is deprecated.  Use mavros_msgs-msg:integrated_y instead.")
  (integrated_y m))

(cl:ensure-generic-function 'integrated_xgyro-val :lambda-list '(m))
(cl:defmethod integrated_xgyro-val ((m <OpticalFlowRad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:integrated_xgyro-val is deprecated.  Use mavros_msgs-msg:integrated_xgyro instead.")
  (integrated_xgyro m))

(cl:ensure-generic-function 'integrated_ygyro-val :lambda-list '(m))
(cl:defmethod integrated_ygyro-val ((m <OpticalFlowRad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:integrated_ygyro-val is deprecated.  Use mavros_msgs-msg:integrated_ygyro instead.")
  (integrated_ygyro m))

(cl:ensure-generic-function 'integrated_zgyro-val :lambda-list '(m))
(cl:defmethod integrated_zgyro-val ((m <OpticalFlowRad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:integrated_zgyro-val is deprecated.  Use mavros_msgs-msg:integrated_zgyro instead.")
  (integrated_zgyro m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <OpticalFlowRad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:temperature-val is deprecated.  Use mavros_msgs-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <OpticalFlowRad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:quality-val is deprecated.  Use mavros_msgs-msg:quality instead.")
  (quality m))

(cl:ensure-generic-function 'time_delta_distance_us-val :lambda-list '(m))
(cl:defmethod time_delta_distance_us-val ((m <OpticalFlowRad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:time_delta_distance_us-val is deprecated.  Use mavros_msgs-msg:time_delta_distance_us instead.")
  (time_delta_distance_us m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <OpticalFlowRad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:distance-val is deprecated.  Use mavros_msgs-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpticalFlowRad>) ostream)
  "Serializes a message object of type '<OpticalFlowRad>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'integration_time_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'integration_time_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'integration_time_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'integration_time_us)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'integrated_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'integrated_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'integrated_xgyro))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'integrated_ygyro))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'integrated_zgyro))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'quality)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_delta_distance_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_delta_distance_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_delta_distance_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_delta_distance_us)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpticalFlowRad>) istream)
  "Deserializes a message object of type '<OpticalFlowRad>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'integration_time_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'integration_time_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'integration_time_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'integration_time_us)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'integrated_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'integrated_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'integrated_xgyro) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'integrated_ygyro) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'integrated_zgyro) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temperature) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'quality)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_delta_distance_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_delta_distance_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_delta_distance_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_delta_distance_us)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpticalFlowRad>)))
  "Returns string type for a message object of type '<OpticalFlowRad>"
  "mavros_msgs/OpticalFlowRad")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpticalFlowRad)))
  "Returns string type for a message object of type 'OpticalFlowRad"
  "mavros_msgs/OpticalFlowRad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpticalFlowRad>)))
  "Returns md5sum for a message object of type '<OpticalFlowRad>"
  "65d93e03c6188c7ee30415b2a39ad40d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpticalFlowRad)))
  "Returns md5sum for a message object of type 'OpticalFlowRad"
  "65d93e03c6188c7ee30415b2a39ad40d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpticalFlowRad>)))
  "Returns full string definition for message of type '<OpticalFlowRad>"
  (cl:format cl:nil "# OPTICAL_FLOW_RAD message data~%~%std_msgs/Header header~%~%uint32 integration_time_us~%float32 integrated_x~%float32 integrated_y~%float32 integrated_xgyro~%float32 integrated_ygyro~%float32 integrated_zgyro~%int16 temperature~%uint8 quality~%uint32 time_delta_distance_us~%float32 distance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpticalFlowRad)))
  "Returns full string definition for message of type 'OpticalFlowRad"
  (cl:format cl:nil "# OPTICAL_FLOW_RAD message data~%~%std_msgs/Header header~%~%uint32 integration_time_us~%float32 integrated_x~%float32 integrated_y~%float32 integrated_xgyro~%float32 integrated_ygyro~%float32 integrated_zgyro~%int16 temperature~%uint8 quality~%uint32 time_delta_distance_us~%float32 distance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpticalFlowRad>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     2
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpticalFlowRad>))
  "Converts a ROS message object to a list"
  (cl:list 'OpticalFlowRad
    (cl:cons ':header (header msg))
    (cl:cons ':integration_time_us (integration_time_us msg))
    (cl:cons ':integrated_x (integrated_x msg))
    (cl:cons ':integrated_y (integrated_y msg))
    (cl:cons ':integrated_xgyro (integrated_xgyro msg))
    (cl:cons ':integrated_ygyro (integrated_ygyro msg))
    (cl:cons ':integrated_zgyro (integrated_zgyro msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':quality (quality msg))
    (cl:cons ':time_delta_distance_us (time_delta_distance_us msg))
    (cl:cons ':distance (distance msg))
))
