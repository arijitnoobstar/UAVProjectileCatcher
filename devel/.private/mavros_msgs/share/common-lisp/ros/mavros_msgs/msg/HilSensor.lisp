; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude HilSensor.msg.html

(cl:defclass <HilSensor> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (acc
    :reader acc
    :initarg :acc
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (gyro
    :reader gyro
    :initarg :gyro
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (mag
    :reader mag
    :initarg :mag
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (abs_pressure
    :reader abs_pressure
    :initarg :abs_pressure
    :type cl:float
    :initform 0.0)
   (diff_pressure
    :reader diff_pressure
    :initarg :diff_pressure
    :type cl:float
    :initform 0.0)
   (pressure_alt
    :reader pressure_alt
    :initarg :pressure_alt
    :type cl:float
    :initform 0.0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0)
   (fields_updated
    :reader fields_updated
    :initarg :fields_updated
    :type cl:integer
    :initform 0))
)

(cl:defclass HilSensor (<HilSensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HilSensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HilSensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<HilSensor> is deprecated: use mavros_msgs-msg:HilSensor instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HilSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <HilSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:acc-val is deprecated.  Use mavros_msgs-msg:acc instead.")
  (acc m))

(cl:ensure-generic-function 'gyro-val :lambda-list '(m))
(cl:defmethod gyro-val ((m <HilSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:gyro-val is deprecated.  Use mavros_msgs-msg:gyro instead.")
  (gyro m))

(cl:ensure-generic-function 'mag-val :lambda-list '(m))
(cl:defmethod mag-val ((m <HilSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:mag-val is deprecated.  Use mavros_msgs-msg:mag instead.")
  (mag m))

(cl:ensure-generic-function 'abs_pressure-val :lambda-list '(m))
(cl:defmethod abs_pressure-val ((m <HilSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:abs_pressure-val is deprecated.  Use mavros_msgs-msg:abs_pressure instead.")
  (abs_pressure m))

(cl:ensure-generic-function 'diff_pressure-val :lambda-list '(m))
(cl:defmethod diff_pressure-val ((m <HilSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:diff_pressure-val is deprecated.  Use mavros_msgs-msg:diff_pressure instead.")
  (diff_pressure m))

(cl:ensure-generic-function 'pressure_alt-val :lambda-list '(m))
(cl:defmethod pressure_alt-val ((m <HilSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:pressure_alt-val is deprecated.  Use mavros_msgs-msg:pressure_alt instead.")
  (pressure_alt m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <HilSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:temperature-val is deprecated.  Use mavros_msgs-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'fields_updated-val :lambda-list '(m))
(cl:defmethod fields_updated-val ((m <HilSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:fields_updated-val is deprecated.  Use mavros_msgs-msg:fields_updated instead.")
  (fields_updated m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HilSensor>) ostream)
  "Serializes a message object of type '<HilSensor>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acc) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gyro) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mag) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'abs_pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pressure_alt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fields_updated)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fields_updated)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fields_updated)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fields_updated)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HilSensor>) istream)
  "Deserializes a message object of type '<HilSensor>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acc) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gyro) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mag) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'abs_pressure) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_pressure) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pressure_alt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fields_updated)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fields_updated)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fields_updated)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fields_updated)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HilSensor>)))
  "Returns string type for a message object of type '<HilSensor>"
  "mavros_msgs/HilSensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HilSensor)))
  "Returns string type for a message object of type 'HilSensor"
  "mavros_msgs/HilSensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HilSensor>)))
  "Returns md5sum for a message object of type '<HilSensor>"
  "2a892891e5c40d6dd1066bf1f394b5dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HilSensor)))
  "Returns md5sum for a message object of type 'HilSensor"
  "2a892891e5c40d6dd1066bf1f394b5dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HilSensor>)))
  "Returns full string definition for message of type '<HilSensor>"
  (cl:format cl:nil "# HilSensor.msg~%#~%# ROS representation of MAVLink HIL_SENSOR~%# See mavlink message documentation here:~%# https://mavlink.io/en/messages/common.html#HIL_SENSOR~%~%std_msgs/Header header~%~%geometry_msgs/Vector3 acc~%geometry_msgs/Vector3 gyro~%geometry_msgs/Vector3 mag~%float32 abs_pressure~%float32 diff_pressure~%float32 pressure_alt~%float32 temperature~%uint32 fields_updated~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HilSensor)))
  "Returns full string definition for message of type 'HilSensor"
  (cl:format cl:nil "# HilSensor.msg~%#~%# ROS representation of MAVLink HIL_SENSOR~%# See mavlink message documentation here:~%# https://mavlink.io/en/messages/common.html#HIL_SENSOR~%~%std_msgs/Header header~%~%geometry_msgs/Vector3 acc~%geometry_msgs/Vector3 gyro~%geometry_msgs/Vector3 mag~%float32 abs_pressure~%float32 diff_pressure~%float32 pressure_alt~%float32 temperature~%uint32 fields_updated~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HilSensor>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acc))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gyro))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mag))
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HilSensor>))
  "Converts a ROS message object to a list"
  (cl:list 'HilSensor
    (cl:cons ':header (header msg))
    (cl:cons ':acc (acc msg))
    (cl:cons ':gyro (gyro msg))
    (cl:cons ':mag (mag msg))
    (cl:cons ':abs_pressure (abs_pressure msg))
    (cl:cons ':diff_pressure (diff_pressure msg))
    (cl:cons ':pressure_alt (pressure_alt msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':fields_updated (fields_updated msg))
))
