; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude State.msg.html

(cl:defclass <State> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (connected
    :reader connected
    :initarg :connected
    :type cl:boolean
    :initform cl:nil)
   (armed
    :reader armed
    :initarg :armed
    :type cl:boolean
    :initform cl:nil)
   (guided
    :reader guided
    :initarg :guided
    :type cl:boolean
    :initform cl:nil)
   (manual_input
    :reader manual_input
    :initarg :manual_input
    :type cl:boolean
    :initform cl:nil)
   (mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (system_status
    :reader system_status
    :initarg :system_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass State (<State>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <State>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'State)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<State> is deprecated: use mavros_msgs-msg:State instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'connected-val :lambda-list '(m))
(cl:defmethod connected-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:connected-val is deprecated.  Use mavros_msgs-msg:connected instead.")
  (connected m))

(cl:ensure-generic-function 'armed-val :lambda-list '(m))
(cl:defmethod armed-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:armed-val is deprecated.  Use mavros_msgs-msg:armed instead.")
  (armed m))

(cl:ensure-generic-function 'guided-val :lambda-list '(m))
(cl:defmethod guided-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:guided-val is deprecated.  Use mavros_msgs-msg:guided instead.")
  (guided m))

(cl:ensure-generic-function 'manual_input-val :lambda-list '(m))
(cl:defmethod manual_input-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:manual_input-val is deprecated.  Use mavros_msgs-msg:manual_input instead.")
  (manual_input m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:mode-val is deprecated.  Use mavros_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'system_status-val :lambda-list '(m))
(cl:defmethod system_status-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:system_status-val is deprecated.  Use mavros_msgs-msg:system_status instead.")
  (system_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<State>)))
    "Constants for message type '<State>"
  '((:MODE_APM_PLANE_MANUAL . MANUAL)
    (:MODE_APM_PLANE_CIRCLE . CIRCLE)
    (:MODE_APM_PLANE_STABILIZE . STABILIZE)
    (:MODE_APM_PLANE_TRAINING . TRAINING)
    (:MODE_APM_PLANE_ACRO . ACRO)
    (:MODE_APM_PLANE_FBWA . FBWA)
    (:MODE_APM_PLANE_FBWB . FBWB)
    (:MODE_APM_PLANE_CRUISE . CRUISE)
    (:MODE_APM_PLANE_AUTOTUNE . AUTOTUNE)
    (:MODE_APM_PLANE_AUTO . AUTO)
    (:MODE_APM_PLANE_RTL . RTL)
    (:MODE_APM_PLANE_LOITER . LOITER)
    (:MODE_APM_PLANE_LAND . LAND)
    (:MODE_APM_PLANE_GUIDED . GUIDED)
    (:MODE_APM_PLANE_INITIALISING . INITIALISING)
    (:MODE_APM_PLANE_QSTABILIZE . QSTABILIZE)
    (:MODE_APM_PLANE_QHOVER . QHOVER)
    (:MODE_APM_PLANE_QLOITER . QLOITER)
    (:MODE_APM_PLANE_QLAND . QLAND)
    (:MODE_APM_PLANE_QRTL . QRTL)
    (:MODE_APM_COPTER_STABILIZE . STABILIZE)
    (:MODE_APM_COPTER_ACRO . ACRO)
    (:MODE_APM_COPTER_ALT_HOLD . ALT_HOLD)
    (:MODE_APM_COPTER_AUTO . AUTO)
    (:MODE_APM_COPTER_GUIDED . GUIDED)
    (:MODE_APM_COPTER_LOITER . LOITER)
    (:MODE_APM_COPTER_RTL . RTL)
    (:MODE_APM_COPTER_CIRCLE . CIRCLE)
    (:MODE_APM_COPTER_POSITION . POSITION)
    (:MODE_APM_COPTER_LAND . LAND)
    (:MODE_APM_COPTER_OF_LOITER . OF_LOITER)
    (:MODE_APM_COPTER_DRIFT . DRIFT)
    (:MODE_APM_COPTER_SPORT . SPORT)
    (:MODE_APM_COPTER_FLIP . FLIP)
    (:MODE_APM_COPTER_AUTOTUNE . AUTOTUNE)
    (:MODE_APM_COPTER_POSHOLD . POSHOLD)
    (:MODE_APM_COPTER_BRAKE . BRAKE)
    (:MODE_APM_COPTER_THROW . THROW)
    (:MODE_APM_COPTER_AVOID_ADSB . AVOID_ADSB)
    (:MODE_APM_COPTER_GUIDED_NOGPS . GUIDED_NOGPS)
    (:MODE_APM_ROVER_MANUAL . MANUAL)
    (:MODE_APM_ROVER_LEARNING . LEARNING)
    (:MODE_APM_ROVER_STEERING . STEERING)
    (:MODE_APM_ROVER_HOLD . HOLD)
    (:MODE_APM_ROVER_AUTO . AUTO)
    (:MODE_APM_ROVER_RTL . RTL)
    (:MODE_APM_ROVER_GUIDED . GUIDED)
    (:MODE_APM_ROVER_INITIALISING . INITIALISING)
    (:MODE_PX4_MANUAL . MANUAL)
    (:MODE_PX4_ACRO . ACRO)
    (:MODE_PX4_ALTITUDE . ALTCTL)
    (:MODE_PX4_POSITION . POSCTL)
    (:MODE_PX4_OFFBOARD . OFFBOARD)
    (:MODE_PX4_STABILIZED . STABILIZED)
    (:MODE_PX4_RATTITUDE . RATTITUDE)
    (:MODE_PX4_MISSION . AUTO.MISSION)
    (:MODE_PX4_LOITER . AUTO.LOITER)
    (:MODE_PX4_RTL . AUTO.RTL)
    (:MODE_PX4_LAND . AUTO.LAND)
    (:MODE_PX4_RTGS . AUTO.RTGS)
    (:MODE_PX4_READY . AUTO.READY)
    (:MODE_PX4_TAKEOFF . AUTO.TAKEOFF))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'State)))
    "Constants for message type 'State"
  '((:MODE_APM_PLANE_MANUAL . MANUAL)
    (:MODE_APM_PLANE_CIRCLE . CIRCLE)
    (:MODE_APM_PLANE_STABILIZE . STABILIZE)
    (:MODE_APM_PLANE_TRAINING . TRAINING)
    (:MODE_APM_PLANE_ACRO . ACRO)
    (:MODE_APM_PLANE_FBWA . FBWA)
    (:MODE_APM_PLANE_FBWB . FBWB)
    (:MODE_APM_PLANE_CRUISE . CRUISE)
    (:MODE_APM_PLANE_AUTOTUNE . AUTOTUNE)
    (:MODE_APM_PLANE_AUTO . AUTO)
    (:MODE_APM_PLANE_RTL . RTL)
    (:MODE_APM_PLANE_LOITER . LOITER)
    (:MODE_APM_PLANE_LAND . LAND)
    (:MODE_APM_PLANE_GUIDED . GUIDED)
    (:MODE_APM_PLANE_INITIALISING . INITIALISING)
    (:MODE_APM_PLANE_QSTABILIZE . QSTABILIZE)
    (:MODE_APM_PLANE_QHOVER . QHOVER)
    (:MODE_APM_PLANE_QLOITER . QLOITER)
    (:MODE_APM_PLANE_QLAND . QLAND)
    (:MODE_APM_PLANE_QRTL . QRTL)
    (:MODE_APM_COPTER_STABILIZE . STABILIZE)
    (:MODE_APM_COPTER_ACRO . ACRO)
    (:MODE_APM_COPTER_ALT_HOLD . ALT_HOLD)
    (:MODE_APM_COPTER_AUTO . AUTO)
    (:MODE_APM_COPTER_GUIDED . GUIDED)
    (:MODE_APM_COPTER_LOITER . LOITER)
    (:MODE_APM_COPTER_RTL . RTL)
    (:MODE_APM_COPTER_CIRCLE . CIRCLE)
    (:MODE_APM_COPTER_POSITION . POSITION)
    (:MODE_APM_COPTER_LAND . LAND)
    (:MODE_APM_COPTER_OF_LOITER . OF_LOITER)
    (:MODE_APM_COPTER_DRIFT . DRIFT)
    (:MODE_APM_COPTER_SPORT . SPORT)
    (:MODE_APM_COPTER_FLIP . FLIP)
    (:MODE_APM_COPTER_AUTOTUNE . AUTOTUNE)
    (:MODE_APM_COPTER_POSHOLD . POSHOLD)
    (:MODE_APM_COPTER_BRAKE . BRAKE)
    (:MODE_APM_COPTER_THROW . THROW)
    (:MODE_APM_COPTER_AVOID_ADSB . AVOID_ADSB)
    (:MODE_APM_COPTER_GUIDED_NOGPS . GUIDED_NOGPS)
    (:MODE_APM_ROVER_MANUAL . MANUAL)
    (:MODE_APM_ROVER_LEARNING . LEARNING)
    (:MODE_APM_ROVER_STEERING . STEERING)
    (:MODE_APM_ROVER_HOLD . HOLD)
    (:MODE_APM_ROVER_AUTO . AUTO)
    (:MODE_APM_ROVER_RTL . RTL)
    (:MODE_APM_ROVER_GUIDED . GUIDED)
    (:MODE_APM_ROVER_INITIALISING . INITIALISING)
    (:MODE_PX4_MANUAL . MANUAL)
    (:MODE_PX4_ACRO . ACRO)
    (:MODE_PX4_ALTITUDE . ALTCTL)
    (:MODE_PX4_POSITION . POSCTL)
    (:MODE_PX4_OFFBOARD . OFFBOARD)
    (:MODE_PX4_STABILIZED . STABILIZED)
    (:MODE_PX4_RATTITUDE . RATTITUDE)
    (:MODE_PX4_MISSION . AUTO.MISSION)
    (:MODE_PX4_LOITER . AUTO.LOITER)
    (:MODE_PX4_RTL . AUTO.RTL)
    (:MODE_PX4_LAND . AUTO.LAND)
    (:MODE_PX4_RTGS . AUTO.RTGS)
    (:MODE_PX4_READY . AUTO.READY)
    (:MODE_PX4_TAKEOFF . AUTO.TAKEOFF))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <State>) ostream)
  "Serializes a message object of type '<State>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'connected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'armed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'guided) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'manual_input) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <State>) istream)
  "Deserializes a message object of type '<State>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'connected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'armed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'guided) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'manual_input) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<State>)))
  "Returns string type for a message object of type '<State>"
  "mavros_msgs/State")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'State)))
  "Returns string type for a message object of type 'State"
  "mavros_msgs/State")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<State>)))
  "Returns md5sum for a message object of type '<State>"
  "65cd0a9fff993b062b91e354554ec7e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'State)))
  "Returns md5sum for a message object of type 'State"
  "65cd0a9fff993b062b91e354554ec7e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<State>)))
  "Returns full string definition for message of type '<State>"
  (cl:format cl:nil "# Current autopilot state~%#~%# Known modes listed here:~%# http://wiki.ros.org/mavros/CustomModes~%#~%# For system_status values~%# see https://mavlink.io/en/messages/common.html#MAV_STATE~%#~%~%std_msgs/Header header~%bool connected~%bool armed~%bool guided~%bool manual_input~%string mode~%uint8 system_status~%~%string MODE_APM_PLANE_MANUAL = MANUAL~%string MODE_APM_PLANE_CIRCLE = CIRCLE~%string MODE_APM_PLANE_STABILIZE = STABILIZE~%string MODE_APM_PLANE_TRAINING = TRAINING~%string MODE_APM_PLANE_ACRO = ACRO~%string MODE_APM_PLANE_FBWA = FBWA~%string MODE_APM_PLANE_FBWB = FBWB~%string MODE_APM_PLANE_CRUISE = CRUISE~%string MODE_APM_PLANE_AUTOTUNE = AUTOTUNE~%string MODE_APM_PLANE_AUTO = AUTO~%string MODE_APM_PLANE_RTL = RTL~%string MODE_APM_PLANE_LOITER = LOITER~%string MODE_APM_PLANE_LAND = LAND~%string MODE_APM_PLANE_GUIDED = GUIDED~%string MODE_APM_PLANE_INITIALISING = INITIALISING~%string MODE_APM_PLANE_QSTABILIZE = QSTABILIZE~%string MODE_APM_PLANE_QHOVER = QHOVER~%string MODE_APM_PLANE_QLOITER = QLOITER~%string MODE_APM_PLANE_QLAND = QLAND~%string MODE_APM_PLANE_QRTL = QRTL~%~%string MODE_APM_COPTER_STABILIZE = STABILIZE~%string MODE_APM_COPTER_ACRO = ACRO~%string MODE_APM_COPTER_ALT_HOLD = ALT_HOLD~%string MODE_APM_COPTER_AUTO = AUTO~%string MODE_APM_COPTER_GUIDED = GUIDED~%string MODE_APM_COPTER_LOITER = LOITER~%string MODE_APM_COPTER_RTL = RTL~%string MODE_APM_COPTER_CIRCLE = CIRCLE~%string MODE_APM_COPTER_POSITION = POSITION~%string MODE_APM_COPTER_LAND = LAND~%string MODE_APM_COPTER_OF_LOITER = OF_LOITER~%string MODE_APM_COPTER_DRIFT = DRIFT~%string MODE_APM_COPTER_SPORT = SPORT~%string MODE_APM_COPTER_FLIP = FLIP~%string MODE_APM_COPTER_AUTOTUNE = AUTOTUNE~%string MODE_APM_COPTER_POSHOLD = POSHOLD~%string MODE_APM_COPTER_BRAKE = BRAKE~%string MODE_APM_COPTER_THROW = THROW~%string MODE_APM_COPTER_AVOID_ADSB = AVOID_ADSB~%string MODE_APM_COPTER_GUIDED_NOGPS = GUIDED_NOGPS~%~%string MODE_APM_ROVER_MANUAL = MANUAL~%string MODE_APM_ROVER_LEARNING = LEARNING~%string MODE_APM_ROVER_STEERING = STEERING~%string MODE_APM_ROVER_HOLD = HOLD~%string MODE_APM_ROVER_AUTO = AUTO~%string MODE_APM_ROVER_RTL = RTL~%string MODE_APM_ROVER_GUIDED = GUIDED~%string MODE_APM_ROVER_INITIALISING = INITIALISING~%~%string MODE_PX4_MANUAL = MANUAL~%string MODE_PX4_ACRO = ACRO~%string MODE_PX4_ALTITUDE = ALTCTL~%string MODE_PX4_POSITION = POSCTL~%string MODE_PX4_OFFBOARD = OFFBOARD~%string MODE_PX4_STABILIZED = STABILIZED~%string MODE_PX4_RATTITUDE = RATTITUDE~%string MODE_PX4_MISSION = AUTO.MISSION~%string MODE_PX4_LOITER = AUTO.LOITER~%string MODE_PX4_RTL = AUTO.RTL~%string MODE_PX4_LAND = AUTO.LAND~%string MODE_PX4_RTGS = AUTO.RTGS~%string MODE_PX4_READY = AUTO.READY~%string MODE_PX4_TAKEOFF = AUTO.TAKEOFF~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'State)))
  "Returns full string definition for message of type 'State"
  (cl:format cl:nil "# Current autopilot state~%#~%# Known modes listed here:~%# http://wiki.ros.org/mavros/CustomModes~%#~%# For system_status values~%# see https://mavlink.io/en/messages/common.html#MAV_STATE~%#~%~%std_msgs/Header header~%bool connected~%bool armed~%bool guided~%bool manual_input~%string mode~%uint8 system_status~%~%string MODE_APM_PLANE_MANUAL = MANUAL~%string MODE_APM_PLANE_CIRCLE = CIRCLE~%string MODE_APM_PLANE_STABILIZE = STABILIZE~%string MODE_APM_PLANE_TRAINING = TRAINING~%string MODE_APM_PLANE_ACRO = ACRO~%string MODE_APM_PLANE_FBWA = FBWA~%string MODE_APM_PLANE_FBWB = FBWB~%string MODE_APM_PLANE_CRUISE = CRUISE~%string MODE_APM_PLANE_AUTOTUNE = AUTOTUNE~%string MODE_APM_PLANE_AUTO = AUTO~%string MODE_APM_PLANE_RTL = RTL~%string MODE_APM_PLANE_LOITER = LOITER~%string MODE_APM_PLANE_LAND = LAND~%string MODE_APM_PLANE_GUIDED = GUIDED~%string MODE_APM_PLANE_INITIALISING = INITIALISING~%string MODE_APM_PLANE_QSTABILIZE = QSTABILIZE~%string MODE_APM_PLANE_QHOVER = QHOVER~%string MODE_APM_PLANE_QLOITER = QLOITER~%string MODE_APM_PLANE_QLAND = QLAND~%string MODE_APM_PLANE_QRTL = QRTL~%~%string MODE_APM_COPTER_STABILIZE = STABILIZE~%string MODE_APM_COPTER_ACRO = ACRO~%string MODE_APM_COPTER_ALT_HOLD = ALT_HOLD~%string MODE_APM_COPTER_AUTO = AUTO~%string MODE_APM_COPTER_GUIDED = GUIDED~%string MODE_APM_COPTER_LOITER = LOITER~%string MODE_APM_COPTER_RTL = RTL~%string MODE_APM_COPTER_CIRCLE = CIRCLE~%string MODE_APM_COPTER_POSITION = POSITION~%string MODE_APM_COPTER_LAND = LAND~%string MODE_APM_COPTER_OF_LOITER = OF_LOITER~%string MODE_APM_COPTER_DRIFT = DRIFT~%string MODE_APM_COPTER_SPORT = SPORT~%string MODE_APM_COPTER_FLIP = FLIP~%string MODE_APM_COPTER_AUTOTUNE = AUTOTUNE~%string MODE_APM_COPTER_POSHOLD = POSHOLD~%string MODE_APM_COPTER_BRAKE = BRAKE~%string MODE_APM_COPTER_THROW = THROW~%string MODE_APM_COPTER_AVOID_ADSB = AVOID_ADSB~%string MODE_APM_COPTER_GUIDED_NOGPS = GUIDED_NOGPS~%~%string MODE_APM_ROVER_MANUAL = MANUAL~%string MODE_APM_ROVER_LEARNING = LEARNING~%string MODE_APM_ROVER_STEERING = STEERING~%string MODE_APM_ROVER_HOLD = HOLD~%string MODE_APM_ROVER_AUTO = AUTO~%string MODE_APM_ROVER_RTL = RTL~%string MODE_APM_ROVER_GUIDED = GUIDED~%string MODE_APM_ROVER_INITIALISING = INITIALISING~%~%string MODE_PX4_MANUAL = MANUAL~%string MODE_PX4_ACRO = ACRO~%string MODE_PX4_ALTITUDE = ALTCTL~%string MODE_PX4_POSITION = POSCTL~%string MODE_PX4_OFFBOARD = OFFBOARD~%string MODE_PX4_STABILIZED = STABILIZED~%string MODE_PX4_RATTITUDE = RATTITUDE~%string MODE_PX4_MISSION = AUTO.MISSION~%string MODE_PX4_LOITER = AUTO.LOITER~%string MODE_PX4_RTL = AUTO.RTL~%string MODE_PX4_LAND = AUTO.LAND~%string MODE_PX4_RTGS = AUTO.RTGS~%string MODE_PX4_READY = AUTO.READY~%string MODE_PX4_TAKEOFF = AUTO.TAKEOFF~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <State>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'mode))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <State>))
  "Converts a ROS message object to a list"
  (cl:list 'State
    (cl:cons ':header (header msg))
    (cl:cons ':connected (connected msg))
    (cl:cons ':armed (armed msg))
    (cl:cons ':guided (guided msg))
    (cl:cons ':manual_input (manual_input msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':system_status (system_status msg))
))
