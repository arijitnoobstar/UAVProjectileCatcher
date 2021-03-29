; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude ActuatorControl.msg.html

(cl:defclass <ActuatorControl> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (group_mix
    :reader group_mix
    :initarg :group_mix
    :type cl:fixnum
    :initform 0)
   (controls
    :reader controls
    :initarg :controls
    :type (cl:vector cl:float)
   :initform (cl:make-array 8 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ActuatorControl (<ActuatorControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActuatorControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActuatorControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<ActuatorControl> is deprecated: use mavros_msgs-msg:ActuatorControl instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ActuatorControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'group_mix-val :lambda-list '(m))
(cl:defmethod group_mix-val ((m <ActuatorControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:group_mix-val is deprecated.  Use mavros_msgs-msg:group_mix instead.")
  (group_mix m))

(cl:ensure-generic-function 'controls-val :lambda-list '(m))
(cl:defmethod controls-val ((m <ActuatorControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:controls-val is deprecated.  Use mavros_msgs-msg:controls instead.")
  (controls m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ActuatorControl>)))
    "Constants for message type '<ActuatorControl>"
  '((:PX4_MIX_FLIGHT_CONTROL . 0)
    (:PX4_MIX_FLIGHT_CONTROL_VTOL_ALT . 1)
    (:PX4_MIX_PAYLOAD . 2)
    (:PX4_MIX_MANUAL_PASSTHROUGH . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ActuatorControl)))
    "Constants for message type 'ActuatorControl"
  '((:PX4_MIX_FLIGHT_CONTROL . 0)
    (:PX4_MIX_FLIGHT_CONTROL_VTOL_ALT . 1)
    (:PX4_MIX_PAYLOAD . 2)
    (:PX4_MIX_MANUAL_PASSTHROUGH . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActuatorControl>) ostream)
  "Serializes a message object of type '<ActuatorControl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'group_mix)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'controls))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActuatorControl>) istream)
  "Deserializes a message object of type '<ActuatorControl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'group_mix)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'controls) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'controls)))
    (cl:dotimes (i 8)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActuatorControl>)))
  "Returns string type for a message object of type '<ActuatorControl>"
  "mavros_msgs/ActuatorControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActuatorControl)))
  "Returns string type for a message object of type 'ActuatorControl"
  "mavros_msgs/ActuatorControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActuatorControl>)))
  "Returns md5sum for a message object of type '<ActuatorControl>"
  "9eea0a80c88944fe2fb67f3b3768854b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActuatorControl)))
  "Returns md5sum for a message object of type 'ActuatorControl"
  "9eea0a80c88944fe2fb67f3b3768854b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActuatorControl>)))
  "Returns full string definition for message of type '<ActuatorControl>"
  (cl:format cl:nil "# raw servo values for direct actuator controls~%#~%# about groups, mixing and channels:~%# https://pixhawk.org/dev/mixing~%~%# constant for mixer group~%uint8 PX4_MIX_FLIGHT_CONTROL = 0~%uint8 PX4_MIX_FLIGHT_CONTROL_VTOL_ALT = 1~%uint8 PX4_MIX_PAYLOAD = 2~%uint8 PX4_MIX_MANUAL_PASSTHROUGH = 3~%#uint8 PX4_MIX_FC_MC_VIRT = 4~%#uint8 PX4_MIX_FC_FW_VIRT = 5~%~%std_msgs/Header header~%uint8 group_mix~%float32[8] controls~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActuatorControl)))
  "Returns full string definition for message of type 'ActuatorControl"
  (cl:format cl:nil "# raw servo values for direct actuator controls~%#~%# about groups, mixing and channels:~%# https://pixhawk.org/dev/mixing~%~%# constant for mixer group~%uint8 PX4_MIX_FLIGHT_CONTROL = 0~%uint8 PX4_MIX_FLIGHT_CONTROL_VTOL_ALT = 1~%uint8 PX4_MIX_PAYLOAD = 2~%uint8 PX4_MIX_MANUAL_PASSTHROUGH = 3~%#uint8 PX4_MIX_FC_MC_VIRT = 4~%#uint8 PX4_MIX_FC_FW_VIRT = 5~%~%std_msgs/Header header~%uint8 group_mix~%float32[8] controls~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActuatorControl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'controls) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActuatorControl>))
  "Converts a ROS message object to a list"
  (cl:list 'ActuatorControl
    (cl:cons ':header (header msg))
    (cl:cons ':group_mix (group_mix msg))
    (cl:cons ':controls (controls msg))
))
