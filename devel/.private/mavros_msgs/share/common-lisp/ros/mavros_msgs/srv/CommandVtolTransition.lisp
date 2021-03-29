; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude CommandVtolTransition-request.msg.html

(cl:defclass <CommandVtolTransition-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommandVtolTransition-request (<CommandVtolTransition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandVtolTransition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandVtolTransition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<CommandVtolTransition-request> is deprecated: use mavros_msgs-srv:CommandVtolTransition-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommandVtolTransition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:header-val is deprecated.  Use mavros_msgs-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <CommandVtolTransition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:state-val is deprecated.  Use mavros_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CommandVtolTransition-request>)))
    "Constants for message type '<CommandVtolTransition-request>"
  '((:STATE_MC . 3)
    (:STATE_FW . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CommandVtolTransition-request)))
    "Constants for message type 'CommandVtolTransition-request"
  '((:STATE_MC . 3)
    (:STATE_FW . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandVtolTransition-request>) ostream)
  "Serializes a message object of type '<CommandVtolTransition-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandVtolTransition-request>) istream)
  "Deserializes a message object of type '<CommandVtolTransition-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandVtolTransition-request>)))
  "Returns string type for a service object of type '<CommandVtolTransition-request>"
  "mavros_msgs/CommandVtolTransitionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandVtolTransition-request)))
  "Returns string type for a service object of type 'CommandVtolTransition-request"
  "mavros_msgs/CommandVtolTransitionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandVtolTransition-request>)))
  "Returns md5sum for a message object of type '<CommandVtolTransition-request>"
  "9fd38be6714b4cc56cabc5f733b6f095")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandVtolTransition-request)))
  "Returns md5sum for a message object of type 'CommandVtolTransition-request"
  "9fd38be6714b4cc56cabc5f733b6f095")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandVtolTransition-request>)))
  "Returns full string definition for message of type '<CommandVtolTransition-request>"
  (cl:format cl:nil "~%# MAVLink command: DO_VTOL_TRANSITION~%# https://mavlink.io/en/messages/common.html#MAV_CMD_DO_VTOL_TRANSITION~%~%std_msgs/Header header~%~%# MAV_VTOL_STATE~%uint8 STATE_MC = 3~%uint8 STATE_FW = 4~%~%uint8 state              # See enum MAV_VTOL_STATE.~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandVtolTransition-request)))
  "Returns full string definition for message of type 'CommandVtolTransition-request"
  (cl:format cl:nil "~%# MAVLink command: DO_VTOL_TRANSITION~%# https://mavlink.io/en/messages/common.html#MAV_CMD_DO_VTOL_TRANSITION~%~%std_msgs/Header header~%~%# MAV_VTOL_STATE~%uint8 STATE_MC = 3~%uint8 STATE_FW = 4~%~%uint8 state              # See enum MAV_VTOL_STATE.~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandVtolTransition-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandVtolTransition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandVtolTransition-request
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
))
;//! \htmlinclude CommandVtolTransition-response.msg.html

(cl:defclass <CommandVtolTransition-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass CommandVtolTransition-response (<CommandVtolTransition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandVtolTransition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandVtolTransition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<CommandVtolTransition-response> is deprecated: use mavros_msgs-srv:CommandVtolTransition-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CommandVtolTransition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CommandVtolTransition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:result-val is deprecated.  Use mavros_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandVtolTransition-response>) ostream)
  "Serializes a message object of type '<CommandVtolTransition-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandVtolTransition-response>) istream)
  "Deserializes a message object of type '<CommandVtolTransition-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandVtolTransition-response>)))
  "Returns string type for a service object of type '<CommandVtolTransition-response>"
  "mavros_msgs/CommandVtolTransitionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandVtolTransition-response)))
  "Returns string type for a service object of type 'CommandVtolTransition-response"
  "mavros_msgs/CommandVtolTransitionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandVtolTransition-response>)))
  "Returns md5sum for a message object of type '<CommandVtolTransition-response>"
  "9fd38be6714b4cc56cabc5f733b6f095")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandVtolTransition-response)))
  "Returns md5sum for a message object of type 'CommandVtolTransition-response"
  "9fd38be6714b4cc56cabc5f733b6f095")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandVtolTransition-response>)))
  "Returns full string definition for message of type '<CommandVtolTransition-response>"
  (cl:format cl:nil "bool success~%uint8 result            # Raw result returned by COMMAND_ACK~% ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandVtolTransition-response)))
  "Returns full string definition for message of type 'CommandVtolTransition-response"
  (cl:format cl:nil "bool success~%uint8 result            # Raw result returned by COMMAND_ACK~% ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandVtolTransition-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandVtolTransition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandVtolTransition-response
    (cl:cons ':success (success msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CommandVtolTransition)))
  'CommandVtolTransition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CommandVtolTransition)))
  'CommandVtolTransition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandVtolTransition)))
  "Returns string type for a service object of type '<CommandVtolTransition>"
  "mavros_msgs/CommandVtolTransition")