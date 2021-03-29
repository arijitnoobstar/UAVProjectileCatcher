; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude MountConfigure-request.msg.html

(cl:defclass <MountConfigure-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (stabilize_roll
    :reader stabilize_roll
    :initarg :stabilize_roll
    :type cl:boolean
    :initform cl:nil)
   (stabilize_pitch
    :reader stabilize_pitch
    :initarg :stabilize_pitch
    :type cl:boolean
    :initform cl:nil)
   (stabilize_yaw
    :reader stabilize_yaw
    :initarg :stabilize_yaw
    :type cl:boolean
    :initform cl:nil)
   (roll_input
    :reader roll_input
    :initarg :roll_input
    :type cl:fixnum
    :initform 0)
   (pitch_input
    :reader pitch_input
    :initarg :pitch_input
    :type cl:fixnum
    :initform 0)
   (yaw_input
    :reader yaw_input
    :initarg :yaw_input
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MountConfigure-request (<MountConfigure-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MountConfigure-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MountConfigure-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<MountConfigure-request> is deprecated: use mavros_msgs-srv:MountConfigure-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MountConfigure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:header-val is deprecated.  Use mavros_msgs-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <MountConfigure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:mode-val is deprecated.  Use mavros_msgs-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'stabilize_roll-val :lambda-list '(m))
(cl:defmethod stabilize_roll-val ((m <MountConfigure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:stabilize_roll-val is deprecated.  Use mavros_msgs-srv:stabilize_roll instead.")
  (stabilize_roll m))

(cl:ensure-generic-function 'stabilize_pitch-val :lambda-list '(m))
(cl:defmethod stabilize_pitch-val ((m <MountConfigure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:stabilize_pitch-val is deprecated.  Use mavros_msgs-srv:stabilize_pitch instead.")
  (stabilize_pitch m))

(cl:ensure-generic-function 'stabilize_yaw-val :lambda-list '(m))
(cl:defmethod stabilize_yaw-val ((m <MountConfigure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:stabilize_yaw-val is deprecated.  Use mavros_msgs-srv:stabilize_yaw instead.")
  (stabilize_yaw m))

(cl:ensure-generic-function 'roll_input-val :lambda-list '(m))
(cl:defmethod roll_input-val ((m <MountConfigure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:roll_input-val is deprecated.  Use mavros_msgs-srv:roll_input instead.")
  (roll_input m))

(cl:ensure-generic-function 'pitch_input-val :lambda-list '(m))
(cl:defmethod pitch_input-val ((m <MountConfigure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:pitch_input-val is deprecated.  Use mavros_msgs-srv:pitch_input instead.")
  (pitch_input m))

(cl:ensure-generic-function 'yaw_input-val :lambda-list '(m))
(cl:defmethod yaw_input-val ((m <MountConfigure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:yaw_input-val is deprecated.  Use mavros_msgs-srv:yaw_input instead.")
  (yaw_input m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MountConfigure-request>)))
    "Constants for message type '<MountConfigure-request>"
  '((:MODE_RETRACT . 0)
    (:MODE_NEUTRAL . 1)
    (:MODE_MAVLINK_TARGETING . 2)
    (:MODE_RC_TARGETING . 3)
    (:MODE_GPS_POINT . 4)
    (:INPUT_ANGLE_BODY_FRAME . 0)
    (:INPUT_ANGULAR_RATE . 1)
    (:INPUT_ANGLE_ABSOLUTE_FRAME . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MountConfigure-request)))
    "Constants for message type 'MountConfigure-request"
  '((:MODE_RETRACT . 0)
    (:MODE_NEUTRAL . 1)
    (:MODE_MAVLINK_TARGETING . 2)
    (:MODE_RC_TARGETING . 3)
    (:MODE_GPS_POINT . 4)
    (:INPUT_ANGLE_BODY_FRAME . 0)
    (:INPUT_ANGULAR_RATE . 1)
    (:INPUT_ANGLE_ABSOLUTE_FRAME . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MountConfigure-request>) ostream)
  "Serializes a message object of type '<MountConfigure-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stabilize_roll) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stabilize_pitch) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stabilize_yaw) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'roll_input)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pitch_input)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'yaw_input)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MountConfigure-request>) istream)
  "Deserializes a message object of type '<MountConfigure-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stabilize_roll) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stabilize_pitch) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stabilize_yaw) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'roll_input)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pitch_input)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'yaw_input)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MountConfigure-request>)))
  "Returns string type for a service object of type '<MountConfigure-request>"
  "mavros_msgs/MountConfigureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MountConfigure-request)))
  "Returns string type for a service object of type 'MountConfigure-request"
  "mavros_msgs/MountConfigureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MountConfigure-request>)))
  "Returns md5sum for a message object of type '<MountConfigure-request>"
  "8d724be18b06cd8e10d8c97c487c546a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MountConfigure-request)))
  "Returns md5sum for a message object of type 'MountConfigure-request"
  "8d724be18b06cd8e10d8c97c487c546a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MountConfigure-request>)))
  "Returns full string definition for message of type '<MountConfigure-request>"
  (cl:format cl:nil "# MAVLink message: DO_MOUNT_CONTROL~%# https://mavlink.io/en/messages/common.html#MAV_CMD_DO_MOUNT_CONFIGURE~%~%std_msgs/Header header~%~%uint8 mode              # See enum MAV_MOUNT_MODE.~%#MAV_MOUNT_MODE~%uint8 MODE_RETRACT = 0~%uint8 MODE_NEUTRAL = 1~%uint8 MODE_MAVLINK_TARGETING = 2~%uint8 MODE_RC_TARGETING = 3~%uint8 MODE_GPS_POINT = 4~%~%bool stabilize_roll     # stabilize roll? (1 = yes, 0 = no)~%bool stabilize_pitch    # stabilize pitch? (1 = yes, 0 = no)~%bool stabilize_yaw      # stabilize yaw? (1 = yes, 0 = no)~%uint8 roll_input        # roll input (See enum MOUNT_INPUT)~%uint8 pitch_input       # pitch input (See enum MOUNT_INPUT)~%uint8 yaw_input         # yaw input (See enum MOUNT_INPUT)~%~%#MOUNT_INPUT~%uint8 INPUT_ANGLE_BODY_FRAME = 0~%uint8 INPUT_ANGULAR_RATE = 1~%uint8 INPUT_ANGLE_ABSOLUTE_FRAME = 2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MountConfigure-request)))
  "Returns full string definition for message of type 'MountConfigure-request"
  (cl:format cl:nil "# MAVLink message: DO_MOUNT_CONTROL~%# https://mavlink.io/en/messages/common.html#MAV_CMD_DO_MOUNT_CONFIGURE~%~%std_msgs/Header header~%~%uint8 mode              # See enum MAV_MOUNT_MODE.~%#MAV_MOUNT_MODE~%uint8 MODE_RETRACT = 0~%uint8 MODE_NEUTRAL = 1~%uint8 MODE_MAVLINK_TARGETING = 2~%uint8 MODE_RC_TARGETING = 3~%uint8 MODE_GPS_POINT = 4~%~%bool stabilize_roll     # stabilize roll? (1 = yes, 0 = no)~%bool stabilize_pitch    # stabilize pitch? (1 = yes, 0 = no)~%bool stabilize_yaw      # stabilize yaw? (1 = yes, 0 = no)~%uint8 roll_input        # roll input (See enum MOUNT_INPUT)~%uint8 pitch_input       # pitch input (See enum MOUNT_INPUT)~%uint8 yaw_input         # yaw input (See enum MOUNT_INPUT)~%~%#MOUNT_INPUT~%uint8 INPUT_ANGLE_BODY_FRAME = 0~%uint8 INPUT_ANGULAR_RATE = 1~%uint8 INPUT_ANGLE_ABSOLUTE_FRAME = 2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MountConfigure-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MountConfigure-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MountConfigure-request
    (cl:cons ':header (header msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':stabilize_roll (stabilize_roll msg))
    (cl:cons ':stabilize_pitch (stabilize_pitch msg))
    (cl:cons ':stabilize_yaw (stabilize_yaw msg))
    (cl:cons ':roll_input (roll_input msg))
    (cl:cons ':pitch_input (pitch_input msg))
    (cl:cons ':yaw_input (yaw_input msg))
))
;//! \htmlinclude MountConfigure-response.msg.html

(cl:defclass <MountConfigure-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MountConfigure-response (<MountConfigure-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MountConfigure-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MountConfigure-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<MountConfigure-response> is deprecated: use mavros_msgs-srv:MountConfigure-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MountConfigure-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MountConfigure-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:result-val is deprecated.  Use mavros_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MountConfigure-response>) ostream)
  "Serializes a message object of type '<MountConfigure-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MountConfigure-response>) istream)
  "Deserializes a message object of type '<MountConfigure-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MountConfigure-response>)))
  "Returns string type for a service object of type '<MountConfigure-response>"
  "mavros_msgs/MountConfigureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MountConfigure-response)))
  "Returns string type for a service object of type 'MountConfigure-response"
  "mavros_msgs/MountConfigureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MountConfigure-response>)))
  "Returns md5sum for a message object of type '<MountConfigure-response>"
  "8d724be18b06cd8e10d8c97c487c546a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MountConfigure-response)))
  "Returns md5sum for a message object of type 'MountConfigure-response"
  "8d724be18b06cd8e10d8c97c487c546a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MountConfigure-response>)))
  "Returns full string definition for message of type '<MountConfigure-response>"
  (cl:format cl:nil "bool success~%# raw result returned by COMMAND_ACK~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MountConfigure-response)))
  "Returns full string definition for message of type 'MountConfigure-response"
  (cl:format cl:nil "bool success~%# raw result returned by COMMAND_ACK~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MountConfigure-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MountConfigure-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MountConfigure-response
    (cl:cons ':success (success msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MountConfigure)))
  'MountConfigure-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MountConfigure)))
  'MountConfigure-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MountConfigure)))
  "Returns string type for a service object of type '<MountConfigure>"
  "mavros_msgs/MountConfigure")