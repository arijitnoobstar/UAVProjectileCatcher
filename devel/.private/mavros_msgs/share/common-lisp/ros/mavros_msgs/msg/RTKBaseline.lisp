; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude RTKBaseline.msg.html

(cl:defclass <RTKBaseline> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time_last_baseline_ms
    :reader time_last_baseline_ms
    :initarg :time_last_baseline_ms
    :type cl:integer
    :initform 0)
   (rtk_receiver_id
    :reader rtk_receiver_id
    :initarg :rtk_receiver_id
    :type cl:fixnum
    :initform 0)
   (wn
    :reader wn
    :initarg :wn
    :type cl:fixnum
    :initform 0)
   (tow
    :reader tow
    :initarg :tow
    :type cl:integer
    :initform 0)
   (rtk_health
    :reader rtk_health
    :initarg :rtk_health
    :type cl:fixnum
    :initform 0)
   (rtk_rate
    :reader rtk_rate
    :initarg :rtk_rate
    :type cl:fixnum
    :initform 0)
   (nsats
    :reader nsats
    :initarg :nsats
    :type cl:fixnum
    :initform 0)
   (baseline_coords_type
    :reader baseline_coords_type
    :initarg :baseline_coords_type
    :type cl:fixnum
    :initform 0)
   (baseline_a_mm
    :reader baseline_a_mm
    :initarg :baseline_a_mm
    :type cl:integer
    :initform 0)
   (baseline_b_mm
    :reader baseline_b_mm
    :initarg :baseline_b_mm
    :type cl:integer
    :initform 0)
   (baseline_c_mm
    :reader baseline_c_mm
    :initarg :baseline_c_mm
    :type cl:integer
    :initform 0)
   (accuracy
    :reader accuracy
    :initarg :accuracy
    :type cl:integer
    :initform 0)
   (iar_num_hypotheses
    :reader iar_num_hypotheses
    :initarg :iar_num_hypotheses
    :type cl:integer
    :initform 0))
)

(cl:defclass RTKBaseline (<RTKBaseline>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RTKBaseline>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RTKBaseline)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<RTKBaseline> is deprecated: use mavros_msgs-msg:RTKBaseline instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RTKBaseline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_last_baseline_ms-val :lambda-list '(m))
(cl:defmethod time_last_baseline_ms-val ((m <RTKBaseline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:time_last_baseline_ms-val is deprecated.  Use mavros_msgs-msg:time_last_baseline_ms instead.")
  (time_last_baseline_ms m))

(cl:ensure-generic-function 'rtk_receiver_id-val :lambda-list '(m))
(cl:defmethod rtk_receiver_id-val ((m <RTKBaseline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:rtk_receiver_id-val is deprecated.  Use mavros_msgs-msg:rtk_receiver_id instead.")
  (rtk_receiver_id m))

(cl:ensure-generic-function 'wn-val :lambda-list '(m))
(cl:defmethod wn-val ((m <RTKBaseline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:wn-val is deprecated.  Use mavros_msgs-msg:wn instead.")
  (wn m))

(cl:ensure-generic-function 'tow-val :lambda-list '(m))
(cl:defmethod tow-val ((m <RTKBaseline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:tow-val is deprecated.  Use mavros_msgs-msg:tow instead.")
  (tow m))

(cl:ensure-generic-function 'rtk_health-val :lambda-list '(m))
(cl:defmethod rtk_health-val ((m <RTKBaseline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:rtk_health-val is deprecated.  Use mavros_msgs-msg:rtk_health instead.")
  (rtk_health m))

(cl:ensure-generic-function 'rtk_rate-val :lambda-list '(m))
(cl:defmethod rtk_rate-val ((m <RTKBaseline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:rtk_rate-val is deprecated.  Use mavros_msgs-msg:rtk_rate instead.")
  (rtk_rate m))

(cl:ensure-generic-function 'nsats-val :lambda-list '(m))
(cl:defmethod nsats-val ((m <RTKBaseline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:nsats-val is deprecated.  Use mavros_msgs-msg:nsats instead.")
  (nsats m))

(cl:ensure-generic-function 'baseline_coords_type-val :lambda-list '(m))
(cl:defmethod baseline_coords_type-val ((m <RTKBaseline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:baseline_coords_type-val is deprecated.  Use mavros_msgs-msg:baseline_coords_type instead.")
  (baseline_coords_type m))

(cl:ensure-generic-function 'baseline_a_mm-val :lambda-list '(m))
(cl:defmethod baseline_a_mm-val ((m <RTKBaseline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:baseline_a_mm-val is deprecated.  Use mavros_msgs-msg:baseline_a_mm instead.")
  (baseline_a_mm m))

(cl:ensure-generic-function 'baseline_b_mm-val :lambda-list '(m))
(cl:defmethod baseline_b_mm-val ((m <RTKBaseline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:baseline_b_mm-val is deprecated.  Use mavros_msgs-msg:baseline_b_mm instead.")
  (baseline_b_mm m))

(cl:ensure-generic-function 'baseline_c_mm-val :lambda-list '(m))
(cl:defmethod baseline_c_mm-val ((m <RTKBaseline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:baseline_c_mm-val is deprecated.  Use mavros_msgs-msg:baseline_c_mm instead.")
  (baseline_c_mm m))

(cl:ensure-generic-function 'accuracy-val :lambda-list '(m))
(cl:defmethod accuracy-val ((m <RTKBaseline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:accuracy-val is deprecated.  Use mavros_msgs-msg:accuracy instead.")
  (accuracy m))

(cl:ensure-generic-function 'iar_num_hypotheses-val :lambda-list '(m))
(cl:defmethod iar_num_hypotheses-val ((m <RTKBaseline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:iar_num_hypotheses-val is deprecated.  Use mavros_msgs-msg:iar_num_hypotheses instead.")
  (iar_num_hypotheses m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RTKBaseline>)))
    "Constants for message type '<RTKBaseline>"
  '((:RTK_BASELINE_COORDINATE_SYSTEM_ECEF . 0)
    (:RTK_BASELINE_COORDINATE_SYSTEM_NED . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RTKBaseline)))
    "Constants for message type 'RTKBaseline"
  '((:RTK_BASELINE_COORDINATE_SYSTEM_ECEF . 0)
    (:RTK_BASELINE_COORDINATE_SYSTEM_NED . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RTKBaseline>) ostream)
  "Serializes a message object of type '<RTKBaseline>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_last_baseline_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_last_baseline_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_last_baseline_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_last_baseline_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rtk_receiver_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rtk_health)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rtk_rate)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nsats)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'baseline_coords_type)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'baseline_a_mm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'baseline_b_mm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'baseline_c_mm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accuracy)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accuracy)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accuracy)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accuracy)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'iar_num_hypotheses)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RTKBaseline>) istream)
  "Deserializes a message object of type '<RTKBaseline>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_last_baseline_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_last_baseline_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_last_baseline_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_last_baseline_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rtk_receiver_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rtk_health)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rtk_rate)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nsats)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'baseline_coords_type)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'baseline_a_mm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'baseline_b_mm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'baseline_c_mm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accuracy)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'accuracy)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'accuracy)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'accuracy)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iar_num_hypotheses) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RTKBaseline>)))
  "Returns string type for a message object of type '<RTKBaseline>"
  "mavros_msgs/RTKBaseline")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RTKBaseline)))
  "Returns string type for a message object of type 'RTKBaseline"
  "mavros_msgs/RTKBaseline")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RTKBaseline>)))
  "Returns md5sum for a message object of type '<RTKBaseline>"
  "bd5852b76aa13136cec34a65089dfdb2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RTKBaseline)))
  "Returns md5sum for a message object of type 'RTKBaseline"
  "bd5852b76aa13136cec34a65089dfdb2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RTKBaseline>)))
  "Returns full string definition for message of type '<RTKBaseline>"
  (cl:format cl:nil "# RTKBaseline received from the FCU.~%# Full description: https://mavlink.io/en/messages/common.html#GPS_RTK~%# Mavlink Common, #127and #128~%~%std_msgs/Header header~%~%uint32 time_last_baseline_ms~%uint8 rtk_receiver_id~%uint16 wn~%uint32 tow~%uint8 rtk_health~%uint8 rtk_rate~%uint8 nsats~%~%uint8 baseline_coords_type ~%uint8 RTK_BASELINE_COORDINATE_SYSTEM_ECEF = 0   # Earth-centered, earth-fixed~%uint8 RTK_BASELINE_COORDINATE_SYSTEM_NED = 1    # RTK basestation centered, north, east, down~%~%int32 baseline_a_mm~%int32 baseline_b_mm~%int32 baseline_c_mm~%uint32 accuracy~%int32 iar_num_hypotheses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RTKBaseline)))
  "Returns full string definition for message of type 'RTKBaseline"
  (cl:format cl:nil "# RTKBaseline received from the FCU.~%# Full description: https://mavlink.io/en/messages/common.html#GPS_RTK~%# Mavlink Common, #127and #128~%~%std_msgs/Header header~%~%uint32 time_last_baseline_ms~%uint8 rtk_receiver_id~%uint16 wn~%uint32 tow~%uint8 rtk_health~%uint8 rtk_rate~%uint8 nsats~%~%uint8 baseline_coords_type ~%uint8 RTK_BASELINE_COORDINATE_SYSTEM_ECEF = 0   # Earth-centered, earth-fixed~%uint8 RTK_BASELINE_COORDINATE_SYSTEM_NED = 1    # RTK basestation centered, north, east, down~%~%int32 baseline_a_mm~%int32 baseline_b_mm~%int32 baseline_c_mm~%uint32 accuracy~%int32 iar_num_hypotheses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RTKBaseline>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
     2
     4
     1
     1
     1
     1
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RTKBaseline>))
  "Converts a ROS message object to a list"
  (cl:list 'RTKBaseline
    (cl:cons ':header (header msg))
    (cl:cons ':time_last_baseline_ms (time_last_baseline_ms msg))
    (cl:cons ':rtk_receiver_id (rtk_receiver_id msg))
    (cl:cons ':wn (wn msg))
    (cl:cons ':tow (tow msg))
    (cl:cons ':rtk_health (rtk_health msg))
    (cl:cons ':rtk_rate (rtk_rate msg))
    (cl:cons ':nsats (nsats msg))
    (cl:cons ':baseline_coords_type (baseline_coords_type msg))
    (cl:cons ':baseline_a_mm (baseline_a_mm msg))
    (cl:cons ':baseline_b_mm (baseline_b_mm msg))
    (cl:cons ':baseline_c_mm (baseline_c_mm msg))
    (cl:cons ':accuracy (accuracy msg))
    (cl:cons ':iar_num_hypotheses (iar_num_hypotheses msg))
))
