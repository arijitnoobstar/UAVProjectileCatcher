; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude CompanionProcessStatus.msg.html

(cl:defclass <CompanionProcessStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (component
    :reader component
    :initarg :component
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CompanionProcessStatus (<CompanionProcessStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CompanionProcessStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CompanionProcessStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<CompanionProcessStatus> is deprecated: use mavros_msgs-msg:CompanionProcessStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CompanionProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <CompanionProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:state-val is deprecated.  Use mavros_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'component-val :lambda-list '(m))
(cl:defmethod component-val ((m <CompanionProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:component-val is deprecated.  Use mavros_msgs-msg:component instead.")
  (component m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CompanionProcessStatus>)))
    "Constants for message type '<CompanionProcessStatus>"
  '((:MAV_STATE_UNINIT . 0)
    (:MAV_STATE_BOOT . 1)
    (:MAV_STATE_CALIBRATING . 2)
    (:MAV_STATE_STANDBY . 3)
    (:MAV_STATE_ACTIVE . 4)
    (:MAV_STATE_CRITICAL . 5)
    (:MAV_STATE_EMERGENCY . 6)
    (:MAV_STATE_POWEROFF . 7)
    (:MAV_STATE_FLIGHT_TERMINATION . 8)
    (:MAV_COMP_ID_OBSTACLE_AVOIDANCE . 196)
    (:MAV_COMP_ID_VISUAL_INERTIAL_ODOMETRY . 197))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CompanionProcessStatus)))
    "Constants for message type 'CompanionProcessStatus"
  '((:MAV_STATE_UNINIT . 0)
    (:MAV_STATE_BOOT . 1)
    (:MAV_STATE_CALIBRATING . 2)
    (:MAV_STATE_STANDBY . 3)
    (:MAV_STATE_ACTIVE . 4)
    (:MAV_STATE_CRITICAL . 5)
    (:MAV_STATE_EMERGENCY . 6)
    (:MAV_STATE_POWEROFF . 7)
    (:MAV_STATE_FLIGHT_TERMINATION . 8)
    (:MAV_COMP_ID_OBSTACLE_AVOIDANCE . 196)
    (:MAV_COMP_ID_VISUAL_INERTIAL_ODOMETRY . 197))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CompanionProcessStatus>) ostream)
  "Serializes a message object of type '<CompanionProcessStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'component)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CompanionProcessStatus>) istream)
  "Deserializes a message object of type '<CompanionProcessStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'component)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CompanionProcessStatus>)))
  "Returns string type for a message object of type '<CompanionProcessStatus>"
  "mavros_msgs/CompanionProcessStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CompanionProcessStatus)))
  "Returns string type for a message object of type 'CompanionProcessStatus"
  "mavros_msgs/CompanionProcessStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CompanionProcessStatus>)))
  "Returns md5sum for a message object of type '<CompanionProcessStatus>"
  "b6dd787fcd873e87778987b1845f4cb5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CompanionProcessStatus)))
  "Returns md5sum for a message object of type 'CompanionProcessStatus"
  "b6dd787fcd873e87778987b1845f4cb5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CompanionProcessStatus>)))
  "Returns full string definition for message of type '<CompanionProcessStatus>"
  (cl:format cl:nil "# Mavros message: COMPANIONPROCESSSTATUS~%~%std_msgs/Header header~%~%uint8 state			# See enum COMPANION_PROCESS_STATE~%uint8 component		# See enum MAV_COMPONENT~%~%uint8 MAV_STATE_UNINIT = 0~%uint8 MAV_STATE_BOOT = 1~%uint8 MAV_STATE_CALIBRATING = 2~%uint8 MAV_STATE_STANDBY = 3~%uint8 MAV_STATE_ACTIVE = 4~%uint8 MAV_STATE_CRITICAL = 5~%uint8 MAV_STATE_EMERGENCY = 6~%uint8 MAV_STATE_POWEROFF = 7~%uint8 MAV_STATE_FLIGHT_TERMINATION = 8~%~%uint8 MAV_COMP_ID_OBSTACLE_AVOIDANCE = 196~%uint8 MAV_COMP_ID_VISUAL_INERTIAL_ODOMETRY = 197~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CompanionProcessStatus)))
  "Returns full string definition for message of type 'CompanionProcessStatus"
  (cl:format cl:nil "# Mavros message: COMPANIONPROCESSSTATUS~%~%std_msgs/Header header~%~%uint8 state			# See enum COMPANION_PROCESS_STATE~%uint8 component		# See enum MAV_COMPONENT~%~%uint8 MAV_STATE_UNINIT = 0~%uint8 MAV_STATE_BOOT = 1~%uint8 MAV_STATE_CALIBRATING = 2~%uint8 MAV_STATE_STANDBY = 3~%uint8 MAV_STATE_ACTIVE = 4~%uint8 MAV_STATE_CRITICAL = 5~%uint8 MAV_STATE_EMERGENCY = 6~%uint8 MAV_STATE_POWEROFF = 7~%uint8 MAV_STATE_FLIGHT_TERMINATION = 8~%~%uint8 MAV_COMP_ID_OBSTACLE_AVOIDANCE = 196~%uint8 MAV_COMP_ID_VISUAL_INERTIAL_ODOMETRY = 197~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CompanionProcessStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CompanionProcessStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'CompanionProcessStatus
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
    (cl:cons ':component (component msg))
))
