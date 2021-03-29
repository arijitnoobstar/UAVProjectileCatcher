; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude ExtendedState.msg.html

(cl:defclass <ExtendedState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vtol_state
    :reader vtol_state
    :initarg :vtol_state
    :type cl:fixnum
    :initform 0)
   (landed_state
    :reader landed_state
    :initarg :landed_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ExtendedState (<ExtendedState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExtendedState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExtendedState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<ExtendedState> is deprecated: use mavros_msgs-msg:ExtendedState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ExtendedState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vtol_state-val :lambda-list '(m))
(cl:defmethod vtol_state-val ((m <ExtendedState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:vtol_state-val is deprecated.  Use mavros_msgs-msg:vtol_state instead.")
  (vtol_state m))

(cl:ensure-generic-function 'landed_state-val :lambda-list '(m))
(cl:defmethod landed_state-val ((m <ExtendedState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:landed_state-val is deprecated.  Use mavros_msgs-msg:landed_state instead.")
  (landed_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ExtendedState>)))
    "Constants for message type '<ExtendedState>"
  '((:VTOL_STATE_UNDEFINED . 0)
    (:VTOL_STATE_TRANSITION_TO_FW . 1)
    (:VTOL_STATE_TRANSITION_TO_MC . 2)
    (:VTOL_STATE_MC . 3)
    (:VTOL_STATE_FW . 4)
    (:LANDED_STATE_UNDEFINED . 0)
    (:LANDED_STATE_ON_GROUND . 1)
    (:LANDED_STATE_IN_AIR . 2)
    (:LANDED_STATE_TAKEOFF . 3)
    (:LANDED_STATE_LANDING . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ExtendedState)))
    "Constants for message type 'ExtendedState"
  '((:VTOL_STATE_UNDEFINED . 0)
    (:VTOL_STATE_TRANSITION_TO_FW . 1)
    (:VTOL_STATE_TRANSITION_TO_MC . 2)
    (:VTOL_STATE_MC . 3)
    (:VTOL_STATE_FW . 4)
    (:LANDED_STATE_UNDEFINED . 0)
    (:LANDED_STATE_ON_GROUND . 1)
    (:LANDED_STATE_IN_AIR . 2)
    (:LANDED_STATE_TAKEOFF . 3)
    (:LANDED_STATE_LANDING . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExtendedState>) ostream)
  "Serializes a message object of type '<ExtendedState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vtol_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'landed_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExtendedState>) istream)
  "Deserializes a message object of type '<ExtendedState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vtol_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'landed_state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExtendedState>)))
  "Returns string type for a message object of type '<ExtendedState>"
  "mavros_msgs/ExtendedState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExtendedState)))
  "Returns string type for a message object of type 'ExtendedState"
  "mavros_msgs/ExtendedState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExtendedState>)))
  "Returns md5sum for a message object of type '<ExtendedState>"
  "ae780b1800fe17b917369d21b90058bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExtendedState)))
  "Returns md5sum for a message object of type 'ExtendedState"
  "ae780b1800fe17b917369d21b90058bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExtendedState>)))
  "Returns full string definition for message of type '<ExtendedState>"
  (cl:format cl:nil "# Extended autopilot state~%#~%# https://mavlink.io/en/messages/common.html#EXTENDED_SYS_STATE~%~%uint8 VTOL_STATE_UNDEFINED = 0~%uint8 VTOL_STATE_TRANSITION_TO_FW = 1~%uint8 VTOL_STATE_TRANSITION_TO_MC = 2~%uint8 VTOL_STATE_MC = 3~%uint8 VTOL_STATE_FW = 4~%~%uint8 LANDED_STATE_UNDEFINED = 0~%uint8 LANDED_STATE_ON_GROUND = 1~%uint8 LANDED_STATE_IN_AIR = 2~%uint8 LANDED_STATE_TAKEOFF = 3~%uint8 LANDED_STATE_LANDING = 4~%~%std_msgs/Header header~%uint8 vtol_state~%uint8 landed_state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExtendedState)))
  "Returns full string definition for message of type 'ExtendedState"
  (cl:format cl:nil "# Extended autopilot state~%#~%# https://mavlink.io/en/messages/common.html#EXTENDED_SYS_STATE~%~%uint8 VTOL_STATE_UNDEFINED = 0~%uint8 VTOL_STATE_TRANSITION_TO_FW = 1~%uint8 VTOL_STATE_TRANSITION_TO_MC = 2~%uint8 VTOL_STATE_MC = 3~%uint8 VTOL_STATE_FW = 4~%~%uint8 LANDED_STATE_UNDEFINED = 0~%uint8 LANDED_STATE_ON_GROUND = 1~%uint8 LANDED_STATE_IN_AIR = 2~%uint8 LANDED_STATE_TAKEOFF = 3~%uint8 LANDED_STATE_LANDING = 4~%~%std_msgs/Header header~%uint8 vtol_state~%uint8 landed_state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExtendedState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExtendedState>))
  "Converts a ROS message object to a list"
  (cl:list 'ExtendedState
    (cl:cons ':header (header msg))
    (cl:cons ':vtol_state (vtol_state msg))
    (cl:cons ':landed_state (landed_state msg))
))
