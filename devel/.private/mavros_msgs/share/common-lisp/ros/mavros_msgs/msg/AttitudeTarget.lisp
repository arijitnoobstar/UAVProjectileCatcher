; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude AttitudeTarget.msg.html

(cl:defclass <AttitudeTarget> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (type_mask
    :reader type_mask
    :initarg :type_mask
    :type cl:fixnum
    :initform 0)
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (body_rate
    :reader body_rate
    :initarg :body_rate
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (thrust
    :reader thrust
    :initarg :thrust
    :type cl:float
    :initform 0.0))
)

(cl:defclass AttitudeTarget (<AttitudeTarget>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AttitudeTarget>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AttitudeTarget)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<AttitudeTarget> is deprecated: use mavros_msgs-msg:AttitudeTarget instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AttitudeTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type_mask-val :lambda-list '(m))
(cl:defmethod type_mask-val ((m <AttitudeTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:type_mask-val is deprecated.  Use mavros_msgs-msg:type_mask instead.")
  (type_mask m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <AttitudeTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:orientation-val is deprecated.  Use mavros_msgs-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'body_rate-val :lambda-list '(m))
(cl:defmethod body_rate-val ((m <AttitudeTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:body_rate-val is deprecated.  Use mavros_msgs-msg:body_rate instead.")
  (body_rate m))

(cl:ensure-generic-function 'thrust-val :lambda-list '(m))
(cl:defmethod thrust-val ((m <AttitudeTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:thrust-val is deprecated.  Use mavros_msgs-msg:thrust instead.")
  (thrust m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AttitudeTarget>)))
    "Constants for message type '<AttitudeTarget>"
  '((:IGNORE_ROLL_RATE . 1)
    (:IGNORE_PITCH_RATE . 2)
    (:IGNORE_YAW_RATE . 4)
    (:IGNORE_THRUST . 64)
    (:IGNORE_ATTITUDE . 128))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AttitudeTarget)))
    "Constants for message type 'AttitudeTarget"
  '((:IGNORE_ROLL_RATE . 1)
    (:IGNORE_PITCH_RATE . 2)
    (:IGNORE_YAW_RATE . 4)
    (:IGNORE_THRUST . 64)
    (:IGNORE_ATTITUDE . 128))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AttitudeTarget>) ostream)
  "Serializes a message object of type '<AttitudeTarget>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_mask)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'body_rate) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'thrust))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AttitudeTarget>) istream)
  "Deserializes a message object of type '<AttitudeTarget>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_mask)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'body_rate) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'thrust) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AttitudeTarget>)))
  "Returns string type for a message object of type '<AttitudeTarget>"
  "mavros_msgs/AttitudeTarget")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AttitudeTarget)))
  "Returns string type for a message object of type 'AttitudeTarget"
  "mavros_msgs/AttitudeTarget")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AttitudeTarget>)))
  "Returns md5sum for a message object of type '<AttitudeTarget>"
  "456f3af666b22ccd0222ea053a86b548")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AttitudeTarget)))
  "Returns md5sum for a message object of type 'AttitudeTarget"
  "456f3af666b22ccd0222ea053a86b548")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AttitudeTarget>)))
  "Returns full string definition for message of type '<AttitudeTarget>"
  (cl:format cl:nil "# Message for SET_ATTITUDE_TARGET~%#~%# Some complex system requires all feautures that mavlink~%# message provide. See issue #402, #418.~%~%std_msgs/Header header~%~%uint8 type_mask~%uint8 IGNORE_ROLL_RATE = 1	# body_rate.x~%uint8 IGNORE_PITCH_RATE = 2	# body_rate.y~%uint8 IGNORE_YAW_RATE = 4	# body_rate.z~%uint8 IGNORE_THRUST = 64~%uint8 IGNORE_ATTITUDE = 128	# orientation field~%~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 body_rate~%float32 thrust~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AttitudeTarget)))
  "Returns full string definition for message of type 'AttitudeTarget"
  (cl:format cl:nil "# Message for SET_ATTITUDE_TARGET~%#~%# Some complex system requires all feautures that mavlink~%# message provide. See issue #402, #418.~%~%std_msgs/Header header~%~%uint8 type_mask~%uint8 IGNORE_ROLL_RATE = 1	# body_rate.x~%uint8 IGNORE_PITCH_RATE = 2	# body_rate.y~%uint8 IGNORE_YAW_RATE = 4	# body_rate.z~%uint8 IGNORE_THRUST = 64~%uint8 IGNORE_ATTITUDE = 128	# orientation field~%~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 body_rate~%float32 thrust~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AttitudeTarget>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'body_rate))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AttitudeTarget>))
  "Converts a ROS message object to a list"
  (cl:list 'AttitudeTarget
    (cl:cons ':header (header msg))
    (cl:cons ':type_mask (type_mask msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':body_rate (body_rate msg))
    (cl:cons ':thrust (thrust msg))
))
