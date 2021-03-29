; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude HilControls.msg.html

(cl:defclass <HilControls> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (roll_ailerons
    :reader roll_ailerons
    :initarg :roll_ailerons
    :type cl:float
    :initform 0.0)
   (pitch_elevator
    :reader pitch_elevator
    :initarg :pitch_elevator
    :type cl:float
    :initform 0.0)
   (yaw_rudder
    :reader yaw_rudder
    :initarg :yaw_rudder
    :type cl:float
    :initform 0.0)
   (throttle
    :reader throttle
    :initarg :throttle
    :type cl:float
    :initform 0.0)
   (aux1
    :reader aux1
    :initarg :aux1
    :type cl:float
    :initform 0.0)
   (aux2
    :reader aux2
    :initarg :aux2
    :type cl:float
    :initform 0.0)
   (aux3
    :reader aux3
    :initarg :aux3
    :type cl:float
    :initform 0.0)
   (aux4
    :reader aux4
    :initarg :aux4
    :type cl:float
    :initform 0.0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (nav_mode
    :reader nav_mode
    :initarg :nav_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HilControls (<HilControls>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HilControls>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HilControls)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<HilControls> is deprecated: use mavros_msgs-msg:HilControls instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HilControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'roll_ailerons-val :lambda-list '(m))
(cl:defmethod roll_ailerons-val ((m <HilControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:roll_ailerons-val is deprecated.  Use mavros_msgs-msg:roll_ailerons instead.")
  (roll_ailerons m))

(cl:ensure-generic-function 'pitch_elevator-val :lambda-list '(m))
(cl:defmethod pitch_elevator-val ((m <HilControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:pitch_elevator-val is deprecated.  Use mavros_msgs-msg:pitch_elevator instead.")
  (pitch_elevator m))

(cl:ensure-generic-function 'yaw_rudder-val :lambda-list '(m))
(cl:defmethod yaw_rudder-val ((m <HilControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:yaw_rudder-val is deprecated.  Use mavros_msgs-msg:yaw_rudder instead.")
  (yaw_rudder m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <HilControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:throttle-val is deprecated.  Use mavros_msgs-msg:throttle instead.")
  (throttle m))

(cl:ensure-generic-function 'aux1-val :lambda-list '(m))
(cl:defmethod aux1-val ((m <HilControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:aux1-val is deprecated.  Use mavros_msgs-msg:aux1 instead.")
  (aux1 m))

(cl:ensure-generic-function 'aux2-val :lambda-list '(m))
(cl:defmethod aux2-val ((m <HilControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:aux2-val is deprecated.  Use mavros_msgs-msg:aux2 instead.")
  (aux2 m))

(cl:ensure-generic-function 'aux3-val :lambda-list '(m))
(cl:defmethod aux3-val ((m <HilControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:aux3-val is deprecated.  Use mavros_msgs-msg:aux3 instead.")
  (aux3 m))

(cl:ensure-generic-function 'aux4-val :lambda-list '(m))
(cl:defmethod aux4-val ((m <HilControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:aux4-val is deprecated.  Use mavros_msgs-msg:aux4 instead.")
  (aux4 m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <HilControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:mode-val is deprecated.  Use mavros_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'nav_mode-val :lambda-list '(m))
(cl:defmethod nav_mode-val ((m <HilControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:nav_mode-val is deprecated.  Use mavros_msgs-msg:nav_mode instead.")
  (nav_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HilControls>) ostream)
  "Serializes a message object of type '<HilControls>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll_ailerons))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch_elevator))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_rudder))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'aux1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'aux2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'aux3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'aux4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nav_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HilControls>) istream)
  "Deserializes a message object of type '<HilControls>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll_ailerons) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch_elevator) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_rudder) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aux1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aux2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aux3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aux4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nav_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HilControls>)))
  "Returns string type for a message object of type '<HilControls>"
  "mavros_msgs/HilControls")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HilControls)))
  "Returns string type for a message object of type 'HilControls"
  "mavros_msgs/HilControls")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HilControls>)))
  "Returns md5sum for a message object of type '<HilControls>"
  "698148349c3a2e5720afcae2d934acca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HilControls)))
  "Returns md5sum for a message object of type 'HilControls"
  "698148349c3a2e5720afcae2d934acca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HilControls>)))
  "Returns full string definition for message of type '<HilControls>"
  (cl:format cl:nil "# HilControls.msg~%#~%# ROS representation of MAVLink HIL_CONTROLS~%# (deprecated, use HIL_ACTUATOR_CONTROLS instead)~%# See mavlink message documentation here:~%# https://mavlink.io/en/messages/common.html#HIL_CONTROLS~%~%std_msgs/Header header~%float32 roll_ailerons~%float32 pitch_elevator~%float32 yaw_rudder~%float32 throttle~%float32 aux1~%float32 aux2~%float32 aux3~%float32 aux4~%uint8 mode~%uint8 nav_mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HilControls)))
  "Returns full string definition for message of type 'HilControls"
  (cl:format cl:nil "# HilControls.msg~%#~%# ROS representation of MAVLink HIL_CONTROLS~%# (deprecated, use HIL_ACTUATOR_CONTROLS instead)~%# See mavlink message documentation here:~%# https://mavlink.io/en/messages/common.html#HIL_CONTROLS~%~%std_msgs/Header header~%float32 roll_ailerons~%float32 pitch_elevator~%float32 yaw_rudder~%float32 throttle~%float32 aux1~%float32 aux2~%float32 aux3~%float32 aux4~%uint8 mode~%uint8 nav_mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HilControls>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HilControls>))
  "Converts a ROS message object to a list"
  (cl:list 'HilControls
    (cl:cons ':header (header msg))
    (cl:cons ':roll_ailerons (roll_ailerons msg))
    (cl:cons ':pitch_elevator (pitch_elevator msg))
    (cl:cons ':yaw_rudder (yaw_rudder msg))
    (cl:cons ':throttle (throttle msg))
    (cl:cons ':aux1 (aux1 msg))
    (cl:cons ':aux2 (aux2 msg))
    (cl:cons ':aux3 (aux3 msg))
    (cl:cons ':aux4 (aux4 msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':nav_mode (nav_mode msg))
))
