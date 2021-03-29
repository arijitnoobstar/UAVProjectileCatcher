; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude LandingTarget.msg.html

(cl:defclass <LandingTarget> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (target_num
    :reader target_num
    :initarg :target_num
    :type cl:fixnum
    :initform 0)
   (frame
    :reader frame
    :initarg :frame
    :type cl:fixnum
    :initform 0)
   (angle
    :reader angle
    :initarg :angle
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (size
    :reader size
    :initarg :size
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LandingTarget (<LandingTarget>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LandingTarget>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LandingTarget)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<LandingTarget> is deprecated: use mavros_msgs-msg:LandingTarget instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LandingTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'target_num-val :lambda-list '(m))
(cl:defmethod target_num-val ((m <LandingTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:target_num-val is deprecated.  Use mavros_msgs-msg:target_num instead.")
  (target_num m))

(cl:ensure-generic-function 'frame-val :lambda-list '(m))
(cl:defmethod frame-val ((m <LandingTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:frame-val is deprecated.  Use mavros_msgs-msg:frame instead.")
  (frame m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <LandingTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:angle-val is deprecated.  Use mavros_msgs-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <LandingTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:distance-val is deprecated.  Use mavros_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <LandingTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:size-val is deprecated.  Use mavros_msgs-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <LandingTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:pose-val is deprecated.  Use mavros_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LandingTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:type-val is deprecated.  Use mavros_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LandingTarget>)))
    "Constants for message type '<LandingTarget>"
  '((:GLOBAL . 0)
    (:LOCAL_NED . 2)
    (:MISSION . 3)
    (:GLOBAL_RELATIVE_ALT . 4)
    (:LOCAL_ENU . 5)
    (:GLOBAL_INT . 6)
    (:GLOBAL_RELATIVE_ALT_INT . 7)
    (:LOCAL_OFFSET_NED . 8)
    (:BODY_NED . 9)
    (:BODY_OFFSET_NED . 10)
    (:GLOBAL_TERRAIN_ALT . 11)
    (:GLOBAL_TERRAIN_ALT_INT . 12)
    (:LIGHT_BEACON . 0)
    (:RADIO_BEACON . 1)
    (:VISION_FIDUCIAL . 2)
    (:VISION_OTHER . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LandingTarget)))
    "Constants for message type 'LandingTarget"
  '((:GLOBAL . 0)
    (:LOCAL_NED . 2)
    (:MISSION . 3)
    (:GLOBAL_RELATIVE_ALT . 4)
    (:LOCAL_ENU . 5)
    (:GLOBAL_INT . 6)
    (:GLOBAL_RELATIVE_ALT_INT . 7)
    (:LOCAL_OFFSET_NED . 8)
    (:BODY_NED . 9)
    (:BODY_OFFSET_NED . 10)
    (:GLOBAL_TERRAIN_ALT . 11)
    (:GLOBAL_TERRAIN_ALT_INT . 12)
    (:LIGHT_BEACON . 0)
    (:RADIO_BEACON . 1)
    (:VISION_FIDUCIAL . 2)
    (:VISION_OTHER . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LandingTarget>) ostream)
  "Serializes a message object of type '<LandingTarget>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'angle))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'size))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LandingTarget>) istream)
  "Deserializes a message object of type '<LandingTarget>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'angle) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'angle)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'size) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'size)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LandingTarget>)))
  "Returns string type for a message object of type '<LandingTarget>"
  "mavros_msgs/LandingTarget")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LandingTarget)))
  "Returns string type for a message object of type 'LandingTarget"
  "mavros_msgs/LandingTarget")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LandingTarget>)))
  "Returns md5sum for a message object of type '<LandingTarget>"
  "76548ee08437914830bb7319d04d5490")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LandingTarget)))
  "Returns md5sum for a message object of type 'LandingTarget"
  "76548ee08437914830bb7319d04d5490")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LandingTarget>)))
  "Returns full string definition for message of type '<LandingTarget>"
  (cl:format cl:nil "# MAVLink message: LANDING_TARGET~%# https://mavlink.io/en/messages/common.html~%~%std_msgs/Header header~%~%## MAV_FRAME enum~%uint8 GLOBAL = 0                   # Global coordinate frame, WGS84 coordinate system. First value / x: latitude, second value / y: longitude, third value / z: positive altitude over mean sea level (MSL)~%uint8 LOCAL_NED = 2                # Local coordinate frame, Z-up (x: north, y: east, z: down).~%uint8 MISSION = 3                  # NOT a coordinate frame, indicates a mission command.~%uint8 GLOBAL_RELATIVE_ALT = 4      # Global coordinate frame, WGS84 coordinate system, relative altitude over ground with respect to the home position. First value / x: latitude, second value / y: longitude, third value / z: positive altitude with 0 being at the altitude of the home location.~%uint8 LOCAL_ENU = 5                # Local coordinate frame, Z-down (x: east, y: north, z: up)~%uint8 GLOBAL_INT = 6               # Global coordinate frame, WGS84 coordinate system. First value / x: latitude in degrees*1.0e-7, second value / y: longitude in degrees*1.0e-7, third value / z: positive altitude over mean sea level (MSL)~%uint8 GLOBAL_RELATIVE_ALT_INT = 7  # Global coordinate frame, WGS84 coordinate system, relative altitude over ground with respect to the home position. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude with 0 being at the altitude of the home location.~%uint8 LOCAL_OFFSET_NED = 8         # Offset to the current local frame. Anything expressed in this frame should be added to the current local frame position.~%uint8 BODY_NED = 9                 # Setpoint in body NED frame. This makes sense if all position control is externalized - e.g. useful to command 2 m/s^2 acceleration to the right.~%uint8 BODY_OFFSET_NED = 10         # Offset in body NED frame. This makes sense if adding setpoints to the current flight path, to avoid an obstacle - e.g. useful to command 2 m/s^2 acceleration to the east.~%uint8 GLOBAL_TERRAIN_ALT = 11      # Global coordinate frame with above terrain level altitude. WGS84 coordinate system, relative altitude over terrain with respect to the waypoint coordinate. First value / x: latitude in degrees, second value / y: longitude in degrees, third value / z: positive altitude in meters with 0 being at ground level in terrain model.~%uint8 GLOBAL_TERRAIN_ALT_INT = 12  # Global coordinate frame with above terrain level altitude. WGS84 coordinate system, relative altitude over terrain with respect to the waypoint coordinate. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude in meters with 0 being at ground level in terrain model.~%~%## LANDING_TARGET_TYPE enum~%uint8 LIGHT_BEACON = 0             # Landing target signaled by light beacon (ex: IR-LOCK)~%uint8 RADIO_BEACON = 1             # Landing target signaled by radio beacon (ex: ILS, NDB)~%uint8 VISION_FIDUCIAL = 2          # Landing target represented by a fiducial marker (ex: ARTag)~%uint8 VISION_OTHER = 3             # Landing target represented by a pre-defined visual shape/feature (ex: X-marker, H-marker, square)~%~%uint8 target_num~%uint8 frame~%float32[2] angle~%float32 distance~%float32[2] size~%geometry_msgs/Pose pose~%uint8 type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LandingTarget)))
  "Returns full string definition for message of type 'LandingTarget"
  (cl:format cl:nil "# MAVLink message: LANDING_TARGET~%# https://mavlink.io/en/messages/common.html~%~%std_msgs/Header header~%~%## MAV_FRAME enum~%uint8 GLOBAL = 0                   # Global coordinate frame, WGS84 coordinate system. First value / x: latitude, second value / y: longitude, third value / z: positive altitude over mean sea level (MSL)~%uint8 LOCAL_NED = 2                # Local coordinate frame, Z-up (x: north, y: east, z: down).~%uint8 MISSION = 3                  # NOT a coordinate frame, indicates a mission command.~%uint8 GLOBAL_RELATIVE_ALT = 4      # Global coordinate frame, WGS84 coordinate system, relative altitude over ground with respect to the home position. First value / x: latitude, second value / y: longitude, third value / z: positive altitude with 0 being at the altitude of the home location.~%uint8 LOCAL_ENU = 5                # Local coordinate frame, Z-down (x: east, y: north, z: up)~%uint8 GLOBAL_INT = 6               # Global coordinate frame, WGS84 coordinate system. First value / x: latitude in degrees*1.0e-7, second value / y: longitude in degrees*1.0e-7, third value / z: positive altitude over mean sea level (MSL)~%uint8 GLOBAL_RELATIVE_ALT_INT = 7  # Global coordinate frame, WGS84 coordinate system, relative altitude over ground with respect to the home position. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude with 0 being at the altitude of the home location.~%uint8 LOCAL_OFFSET_NED = 8         # Offset to the current local frame. Anything expressed in this frame should be added to the current local frame position.~%uint8 BODY_NED = 9                 # Setpoint in body NED frame. This makes sense if all position control is externalized - e.g. useful to command 2 m/s^2 acceleration to the right.~%uint8 BODY_OFFSET_NED = 10         # Offset in body NED frame. This makes sense if adding setpoints to the current flight path, to avoid an obstacle - e.g. useful to command 2 m/s^2 acceleration to the east.~%uint8 GLOBAL_TERRAIN_ALT = 11      # Global coordinate frame with above terrain level altitude. WGS84 coordinate system, relative altitude over terrain with respect to the waypoint coordinate. First value / x: latitude in degrees, second value / y: longitude in degrees, third value / z: positive altitude in meters with 0 being at ground level in terrain model.~%uint8 GLOBAL_TERRAIN_ALT_INT = 12  # Global coordinate frame with above terrain level altitude. WGS84 coordinate system, relative altitude over terrain with respect to the waypoint coordinate. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude in meters with 0 being at ground level in terrain model.~%~%## LANDING_TARGET_TYPE enum~%uint8 LIGHT_BEACON = 0             # Landing target signaled by light beacon (ex: IR-LOCK)~%uint8 RADIO_BEACON = 1             # Landing target signaled by radio beacon (ex: ILS, NDB)~%uint8 VISION_FIDUCIAL = 2          # Landing target represented by a fiducial marker (ex: ARTag)~%uint8 VISION_OTHER = 3             # Landing target represented by a pre-defined visual shape/feature (ex: X-marker, H-marker, square)~%~%uint8 target_num~%uint8 frame~%float32[2] angle~%float32 distance~%float32[2] size~%geometry_msgs/Pose pose~%uint8 type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LandingTarget>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'angle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'size) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LandingTarget>))
  "Converts a ROS message object to a list"
  (cl:list 'LandingTarget
    (cl:cons ':header (header msg))
    (cl:cons ':target_num (target_num msg))
    (cl:cons ':frame (frame msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':size (size msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':type (type msg))
))
