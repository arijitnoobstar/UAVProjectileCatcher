; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude PositionTarget.msg.html

(cl:defclass <PositionTarget> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (coordinate_frame
    :reader coordinate_frame
    :initarg :coordinate_frame
    :type cl:fixnum
    :initform 0)
   (type_mask
    :reader type_mask
    :initarg :type_mask
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (acceleration_or_force
    :reader acceleration_or_force
    :initarg :acceleration_or_force
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (yaw_rate
    :reader yaw_rate
    :initarg :yaw_rate
    :type cl:float
    :initform 0.0))
)

(cl:defclass PositionTarget (<PositionTarget>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionTarget>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionTarget)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<PositionTarget> is deprecated: use mavros_msgs-msg:PositionTarget instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PositionTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'coordinate_frame-val :lambda-list '(m))
(cl:defmethod coordinate_frame-val ((m <PositionTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:coordinate_frame-val is deprecated.  Use mavros_msgs-msg:coordinate_frame instead.")
  (coordinate_frame m))

(cl:ensure-generic-function 'type_mask-val :lambda-list '(m))
(cl:defmethod type_mask-val ((m <PositionTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:type_mask-val is deprecated.  Use mavros_msgs-msg:type_mask instead.")
  (type_mask m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <PositionTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:position-val is deprecated.  Use mavros_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <PositionTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:velocity-val is deprecated.  Use mavros_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration_or_force-val :lambda-list '(m))
(cl:defmethod acceleration_or_force-val ((m <PositionTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:acceleration_or_force-val is deprecated.  Use mavros_msgs-msg:acceleration_or_force instead.")
  (acceleration_or_force m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <PositionTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:yaw-val is deprecated.  Use mavros_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'yaw_rate-val :lambda-list '(m))
(cl:defmethod yaw_rate-val ((m <PositionTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:yaw_rate-val is deprecated.  Use mavros_msgs-msg:yaw_rate instead.")
  (yaw_rate m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PositionTarget>)))
    "Constants for message type '<PositionTarget>"
  '((:FRAME_LOCAL_NED . 1)
    (:FRAME_LOCAL_OFFSET_NED . 7)
    (:FRAME_BODY_NED . 8)
    (:FRAME_BODY_OFFSET_NED . 9)
    (:IGNORE_PX . 1)
    (:IGNORE_PY . 2)
    (:IGNORE_PZ . 4)
    (:IGNORE_VX . 8)
    (:IGNORE_VY . 16)
    (:IGNORE_VZ . 32)
    (:IGNORE_AFX . 64)
    (:IGNORE_AFY . 128)
    (:IGNORE_AFZ . 256)
    (:FORCE . 512)
    (:IGNORE_YAW . 1024)
    (:IGNORE_YAW_RATE . 2048))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PositionTarget)))
    "Constants for message type 'PositionTarget"
  '((:FRAME_LOCAL_NED . 1)
    (:FRAME_LOCAL_OFFSET_NED . 7)
    (:FRAME_BODY_NED . 8)
    (:FRAME_BODY_OFFSET_NED . 9)
    (:IGNORE_PX . 1)
    (:IGNORE_PY . 2)
    (:IGNORE_PZ . 4)
    (:IGNORE_VX . 8)
    (:IGNORE_VY . 16)
    (:IGNORE_VZ . 32)
    (:IGNORE_AFX . 64)
    (:IGNORE_AFY . 128)
    (:IGNORE_AFZ . 256)
    (:FORCE . 512)
    (:IGNORE_YAW . 1024)
    (:IGNORE_YAW_RATE . 2048))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionTarget>) ostream)
  "Serializes a message object of type '<PositionTarget>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinate_frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_mask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type_mask)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration_or_force) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionTarget>) istream)
  "Deserializes a message object of type '<PositionTarget>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinate_frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_mask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type_mask)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration_or_force) istream)
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
    (cl:setf (cl:slot-value msg 'yaw_rate) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionTarget>)))
  "Returns string type for a message object of type '<PositionTarget>"
  "mavros_msgs/PositionTarget")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionTarget)))
  "Returns string type for a message object of type 'PositionTarget"
  "mavros_msgs/PositionTarget")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionTarget>)))
  "Returns md5sum for a message object of type '<PositionTarget>"
  "dedb0081aaf8cb20209737746bb49117")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionTarget)))
  "Returns md5sum for a message object of type 'PositionTarget"
  "dedb0081aaf8cb20209737746bb49117")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionTarget>)))
  "Returns full string definition for message of type '<PositionTarget>"
  (cl:format cl:nil "# Message for SET_POSITION_TARGET_LOCAL_NED~%#~%# Some complex system requires all feautures that mavlink~%# message provide. See issue #402.~%~%std_msgs/Header header~%~%uint8 coordinate_frame~%uint8 FRAME_LOCAL_NED = 1~%uint8 FRAME_LOCAL_OFFSET_NED = 7~%uint8 FRAME_BODY_NED = 8~%uint8 FRAME_BODY_OFFSET_NED = 9~%~%uint16 type_mask~%uint16 IGNORE_PX = 1	# Position ignore flags~%uint16 IGNORE_PY = 2~%uint16 IGNORE_PZ = 4~%uint16 IGNORE_VX = 8	# Velocity vector ignore flags~%uint16 IGNORE_VY = 16~%uint16 IGNORE_VZ = 32~%uint16 IGNORE_AFX = 64	# Acceleration/Force vector ignore flags~%uint16 IGNORE_AFY = 128~%uint16 IGNORE_AFZ = 256~%uint16 FORCE = 512	# Force in af vector flag~%uint16 IGNORE_YAW = 1024~%uint16 IGNORE_YAW_RATE = 2048~%~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration_or_force~%float32 yaw~%float32 yaw_rate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionTarget)))
  "Returns full string definition for message of type 'PositionTarget"
  (cl:format cl:nil "# Message for SET_POSITION_TARGET_LOCAL_NED~%#~%# Some complex system requires all feautures that mavlink~%# message provide. See issue #402.~%~%std_msgs/Header header~%~%uint8 coordinate_frame~%uint8 FRAME_LOCAL_NED = 1~%uint8 FRAME_LOCAL_OFFSET_NED = 7~%uint8 FRAME_BODY_NED = 8~%uint8 FRAME_BODY_OFFSET_NED = 9~%~%uint16 type_mask~%uint16 IGNORE_PX = 1	# Position ignore flags~%uint16 IGNORE_PY = 2~%uint16 IGNORE_PZ = 4~%uint16 IGNORE_VX = 8	# Velocity vector ignore flags~%uint16 IGNORE_VY = 16~%uint16 IGNORE_VZ = 32~%uint16 IGNORE_AFX = 64	# Acceleration/Force vector ignore flags~%uint16 IGNORE_AFY = 128~%uint16 IGNORE_AFZ = 256~%uint16 FORCE = 512	# Force in af vector flag~%uint16 IGNORE_YAW = 1024~%uint16 IGNORE_YAW_RATE = 2048~%~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration_or_force~%float32 yaw~%float32 yaw_rate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionTarget>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration_or_force))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionTarget>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionTarget
    (cl:cons ':header (header msg))
    (cl:cons ':coordinate_frame (coordinate_frame msg))
    (cl:cons ':type_mask (type_mask msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration_or_force (acceleration_or_force msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':yaw_rate (yaw_rate msg))
))
