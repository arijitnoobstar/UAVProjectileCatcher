; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude Trajectory.msg.html

(cl:defclass <Trajectory> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (point_1
    :reader point_1
    :initarg :point_1
    :type mavros_msgs-msg:PositionTarget
    :initform (cl:make-instance 'mavros_msgs-msg:PositionTarget))
   (point_2
    :reader point_2
    :initarg :point_2
    :type mavros_msgs-msg:PositionTarget
    :initform (cl:make-instance 'mavros_msgs-msg:PositionTarget))
   (point_3
    :reader point_3
    :initarg :point_3
    :type mavros_msgs-msg:PositionTarget
    :initform (cl:make-instance 'mavros_msgs-msg:PositionTarget))
   (point_4
    :reader point_4
    :initarg :point_4
    :type mavros_msgs-msg:PositionTarget
    :initform (cl:make-instance 'mavros_msgs-msg:PositionTarget))
   (point_5
    :reader point_5
    :initarg :point_5
    :type mavros_msgs-msg:PositionTarget
    :initform (cl:make-instance 'mavros_msgs-msg:PositionTarget))
   (point_valid
    :reader point_valid
    :initarg :point_valid
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 5 :element-type 'cl:fixnum :initial-element 0))
   (command
    :reader command
    :initarg :command
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 5 :element-type 'cl:fixnum :initial-element 0))
   (time_horizon
    :reader time_horizon
    :initarg :time_horizon
    :type (cl:vector cl:float)
   :initform (cl:make-array 5 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Trajectory (<Trajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<Trajectory> is deprecated: use mavros_msgs-msg:Trajectory instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:type-val is deprecated.  Use mavros_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'point_1-val :lambda-list '(m))
(cl:defmethod point_1-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:point_1-val is deprecated.  Use mavros_msgs-msg:point_1 instead.")
  (point_1 m))

(cl:ensure-generic-function 'point_2-val :lambda-list '(m))
(cl:defmethod point_2-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:point_2-val is deprecated.  Use mavros_msgs-msg:point_2 instead.")
  (point_2 m))

(cl:ensure-generic-function 'point_3-val :lambda-list '(m))
(cl:defmethod point_3-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:point_3-val is deprecated.  Use mavros_msgs-msg:point_3 instead.")
  (point_3 m))

(cl:ensure-generic-function 'point_4-val :lambda-list '(m))
(cl:defmethod point_4-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:point_4-val is deprecated.  Use mavros_msgs-msg:point_4 instead.")
  (point_4 m))

(cl:ensure-generic-function 'point_5-val :lambda-list '(m))
(cl:defmethod point_5-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:point_5-val is deprecated.  Use mavros_msgs-msg:point_5 instead.")
  (point_5 m))

(cl:ensure-generic-function 'point_valid-val :lambda-list '(m))
(cl:defmethod point_valid-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:point_valid-val is deprecated.  Use mavros_msgs-msg:point_valid instead.")
  (point_valid m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:command-val is deprecated.  Use mavros_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'time_horizon-val :lambda-list '(m))
(cl:defmethod time_horizon-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:time_horizon-val is deprecated.  Use mavros_msgs-msg:time_horizon instead.")
  (time_horizon m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Trajectory>)))
    "Constants for message type '<Trajectory>"
  '((:MAV_TRAJECTORY_REPRESENTATION_WAYPOINTS . 0)
    (:MAV_TRAJECTORY_REPRESENTATION_BEZIER . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Trajectory)))
    "Constants for message type 'Trajectory"
  '((:MAV_TRAJECTORY_REPRESENTATION_WAYPOINTS . 0)
    (:MAV_TRAJECTORY_REPRESENTATION_BEZIER . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trajectory>) ostream)
  "Serializes a message object of type '<Trajectory>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_3) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_4) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_5) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'point_valid))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'command))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'time_horizon))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trajectory>) istream)
  "Deserializes a message object of type '<Trajectory>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_3) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_4) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_5) istream)
  (cl:setf (cl:slot-value msg 'point_valid) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'point_valid)))
    (cl:dotimes (i 5)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'command) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'command)))
    (cl:dotimes (i 5)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'time_horizon) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'time_horizon)))
    (cl:dotimes (i 5)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trajectory>)))
  "Returns string type for a message object of type '<Trajectory>"
  "mavros_msgs/Trajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trajectory)))
  "Returns string type for a message object of type 'Trajectory"
  "mavros_msgs/Trajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trajectory>)))
  "Returns md5sum for a message object of type '<Trajectory>"
  "477b47a103394ad6be940e5705f338e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trajectory)))
  "Returns md5sum for a message object of type 'Trajectory"
  "477b47a103394ad6be940e5705f338e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trajectory>)))
  "Returns full string definition for message of type '<Trajectory>"
  (cl:format cl:nil "# MAVLink message: TRAJECTORY~%# https://mavlink.io/en/messages/common.html#TRAJECTORY~%~%std_msgs/Header header~%~%uint8 type # See enum MAV_TRAJECTORY_REPRESENTATION.~%uint8 MAV_TRAJECTORY_REPRESENTATION_WAYPOINTS = 0~%uint8 MAV_TRAJECTORY_REPRESENTATION_BEZIER = 1~%~%mavros_msgs/PositionTarget point_1~%mavros_msgs/PositionTarget point_2~%mavros_msgs/PositionTarget point_3~%mavros_msgs/PositionTarget point_4~%mavros_msgs/PositionTarget point_5~%~%uint8[5] point_valid # States if respective point is valid.~%uint16[5] command # MAV_CMD associated with each point. UINT16_MAX if unused.~%~%float32[5] time_horizon # if type MAV_TRAJECTORY_REPRESENTATION_BEZIER, it represents the time horizon for each point, otherwise set to NaN~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mavros_msgs/PositionTarget~%# Message for SET_POSITION_TARGET_LOCAL_NED~%#~%# Some complex system requires all feautures that mavlink~%# message provide. See issue #402.~%~%std_msgs/Header header~%~%uint8 coordinate_frame~%uint8 FRAME_LOCAL_NED = 1~%uint8 FRAME_LOCAL_OFFSET_NED = 7~%uint8 FRAME_BODY_NED = 8~%uint8 FRAME_BODY_OFFSET_NED = 9~%~%uint16 type_mask~%uint16 IGNORE_PX = 1	# Position ignore flags~%uint16 IGNORE_PY = 2~%uint16 IGNORE_PZ = 4~%uint16 IGNORE_VX = 8	# Velocity vector ignore flags~%uint16 IGNORE_VY = 16~%uint16 IGNORE_VZ = 32~%uint16 IGNORE_AFX = 64	# Acceleration/Force vector ignore flags~%uint16 IGNORE_AFY = 128~%uint16 IGNORE_AFZ = 256~%uint16 FORCE = 512	# Force in af vector flag~%uint16 IGNORE_YAW = 1024~%uint16 IGNORE_YAW_RATE = 2048~%~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration_or_force~%float32 yaw~%float32 yaw_rate~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trajectory)))
  "Returns full string definition for message of type 'Trajectory"
  (cl:format cl:nil "# MAVLink message: TRAJECTORY~%# https://mavlink.io/en/messages/common.html#TRAJECTORY~%~%std_msgs/Header header~%~%uint8 type # See enum MAV_TRAJECTORY_REPRESENTATION.~%uint8 MAV_TRAJECTORY_REPRESENTATION_WAYPOINTS = 0~%uint8 MAV_TRAJECTORY_REPRESENTATION_BEZIER = 1~%~%mavros_msgs/PositionTarget point_1~%mavros_msgs/PositionTarget point_2~%mavros_msgs/PositionTarget point_3~%mavros_msgs/PositionTarget point_4~%mavros_msgs/PositionTarget point_5~%~%uint8[5] point_valid # States if respective point is valid.~%uint16[5] command # MAV_CMD associated with each point. UINT16_MAX if unused.~%~%float32[5] time_horizon # if type MAV_TRAJECTORY_REPRESENTATION_BEZIER, it represents the time horizon for each point, otherwise set to NaN~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mavros_msgs/PositionTarget~%# Message for SET_POSITION_TARGET_LOCAL_NED~%#~%# Some complex system requires all feautures that mavlink~%# message provide. See issue #402.~%~%std_msgs/Header header~%~%uint8 coordinate_frame~%uint8 FRAME_LOCAL_NED = 1~%uint8 FRAME_LOCAL_OFFSET_NED = 7~%uint8 FRAME_BODY_NED = 8~%uint8 FRAME_BODY_OFFSET_NED = 9~%~%uint16 type_mask~%uint16 IGNORE_PX = 1	# Position ignore flags~%uint16 IGNORE_PY = 2~%uint16 IGNORE_PZ = 4~%uint16 IGNORE_VX = 8	# Velocity vector ignore flags~%uint16 IGNORE_VY = 16~%uint16 IGNORE_VZ = 32~%uint16 IGNORE_AFX = 64	# Acceleration/Force vector ignore flags~%uint16 IGNORE_AFY = 128~%uint16 IGNORE_AFZ = 256~%uint16 FORCE = 512	# Force in af vector flag~%uint16 IGNORE_YAW = 1024~%uint16 IGNORE_YAW_RATE = 2048~%~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration_or_force~%float32 yaw~%float32 yaw_rate~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trajectory>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_3))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_4))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_5))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'point_valid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'command) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'time_horizon) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'Trajectory
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':point_1 (point_1 msg))
    (cl:cons ':point_2 (point_2 msg))
    (cl:cons ':point_3 (point_3 msg))
    (cl:cons ':point_4 (point_4 msg))
    (cl:cons ':point_5 (point_5 msg))
    (cl:cons ':point_valid (point_valid msg))
    (cl:cons ':command (command msg))
    (cl:cons ':time_horizon (time_horizon msg))
))
