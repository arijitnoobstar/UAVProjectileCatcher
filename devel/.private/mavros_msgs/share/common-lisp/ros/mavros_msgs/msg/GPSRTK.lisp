; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude GPSRTK.msg.html

(cl:defclass <GPSRTK> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
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
   (baseline_a
    :reader baseline_a
    :initarg :baseline_a
    :type cl:integer
    :initform 0)
   (baseline_b
    :reader baseline_b
    :initarg :baseline_b
    :type cl:integer
    :initform 0)
   (baseline_c
    :reader baseline_c
    :initarg :baseline_c
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

(cl:defclass GPSRTK (<GPSRTK>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GPSRTK>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GPSRTK)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<GPSRTK> is deprecated: use mavros_msgs-msg:GPSRTK instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GPSRTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'rtk_receiver_id-val :lambda-list '(m))
(cl:defmethod rtk_receiver_id-val ((m <GPSRTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:rtk_receiver_id-val is deprecated.  Use mavros_msgs-msg:rtk_receiver_id instead.")
  (rtk_receiver_id m))

(cl:ensure-generic-function 'wn-val :lambda-list '(m))
(cl:defmethod wn-val ((m <GPSRTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:wn-val is deprecated.  Use mavros_msgs-msg:wn instead.")
  (wn m))

(cl:ensure-generic-function 'tow-val :lambda-list '(m))
(cl:defmethod tow-val ((m <GPSRTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:tow-val is deprecated.  Use mavros_msgs-msg:tow instead.")
  (tow m))

(cl:ensure-generic-function 'rtk_health-val :lambda-list '(m))
(cl:defmethod rtk_health-val ((m <GPSRTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:rtk_health-val is deprecated.  Use mavros_msgs-msg:rtk_health instead.")
  (rtk_health m))

(cl:ensure-generic-function 'rtk_rate-val :lambda-list '(m))
(cl:defmethod rtk_rate-val ((m <GPSRTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:rtk_rate-val is deprecated.  Use mavros_msgs-msg:rtk_rate instead.")
  (rtk_rate m))

(cl:ensure-generic-function 'nsats-val :lambda-list '(m))
(cl:defmethod nsats-val ((m <GPSRTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:nsats-val is deprecated.  Use mavros_msgs-msg:nsats instead.")
  (nsats m))

(cl:ensure-generic-function 'baseline_a-val :lambda-list '(m))
(cl:defmethod baseline_a-val ((m <GPSRTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:baseline_a-val is deprecated.  Use mavros_msgs-msg:baseline_a instead.")
  (baseline_a m))

(cl:ensure-generic-function 'baseline_b-val :lambda-list '(m))
(cl:defmethod baseline_b-val ((m <GPSRTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:baseline_b-val is deprecated.  Use mavros_msgs-msg:baseline_b instead.")
  (baseline_b m))

(cl:ensure-generic-function 'baseline_c-val :lambda-list '(m))
(cl:defmethod baseline_c-val ((m <GPSRTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:baseline_c-val is deprecated.  Use mavros_msgs-msg:baseline_c instead.")
  (baseline_c m))

(cl:ensure-generic-function 'accuracy-val :lambda-list '(m))
(cl:defmethod accuracy-val ((m <GPSRTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:accuracy-val is deprecated.  Use mavros_msgs-msg:accuracy instead.")
  (accuracy m))

(cl:ensure-generic-function 'iar_num_hypotheses-val :lambda-list '(m))
(cl:defmethod iar_num_hypotheses-val ((m <GPSRTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:iar_num_hypotheses-val is deprecated.  Use mavros_msgs-msg:iar_num_hypotheses instead.")
  (iar_num_hypotheses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GPSRTK>) ostream)
  "Serializes a message object of type '<GPSRTK>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rtk_receiver_id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'wn)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tow)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rtk_health)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rtk_rate)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nsats)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'baseline_a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'baseline_b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'baseline_c)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GPSRTK>) istream)
  "Deserializes a message object of type '<GPSRTK>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rtk_receiver_id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wn) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tow)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rtk_health)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rtk_rate)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nsats)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'baseline_a) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'baseline_b) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'baseline_c) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GPSRTK>)))
  "Returns string type for a message object of type '<GPSRTK>"
  "mavros_msgs/GPSRTK")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPSRTK)))
  "Returns string type for a message object of type 'GPSRTK"
  "mavros_msgs/GPSRTK")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GPSRTK>)))
  "Returns md5sum for a message object of type '<GPSRTK>"
  "ab2651768aa6464b60b7bc8ae031e017")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GPSRTK)))
  "Returns md5sum for a message object of type 'GPSRTK"
  "ab2651768aa6464b60b7bc8ae031e017")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GPSRTK>)))
  "Returns full string definition for message of type '<GPSRTK>"
  (cl:format cl:nil "# FCU GPS RTK message for the gps_status plugin~%# A copy of <a href=\"https://mavlink.io/en/messages/common.html#GPS_RTK\">mavlink GPS_RTK message</a>~%~%std_msgs/Header header~%~%uint8 rtk_receiver_id      # Identification of connected RTK receiver.~%int16 wn                   # GPS Week Number of last baseline.~%uint32 tow                 # [ms] GPS Time of Week of last baseline.~%uint8 rtk_health           # GPS-specific health report for RTK data.~%uint8 rtk_rate             # [Hz] Rate of baseline messages being received by GPS.~%uint8 nsats                # Current number of sats used for RTK calculation.~%int32 baseline_a           # [mm] Current baseline in ECEF x or NED north component, depends on header.frame_id.~%int32 baseline_b           # [mm] Current baseline in ECEF y or NED east component, depends on header.frame_id.~%int32 baseline_c           # [mm] Current baseline in ECEF z or NED down component, depends on header.frame_id.~%uint32 accuracy            # Current estimate of baseline accuracy.~%int32 iar_num_hypotheses   # Current number of integer ambiguity hypotheses.~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GPSRTK)))
  "Returns full string definition for message of type 'GPSRTK"
  (cl:format cl:nil "# FCU GPS RTK message for the gps_status plugin~%# A copy of <a href=\"https://mavlink.io/en/messages/common.html#GPS_RTK\">mavlink GPS_RTK message</a>~%~%std_msgs/Header header~%~%uint8 rtk_receiver_id      # Identification of connected RTK receiver.~%int16 wn                   # GPS Week Number of last baseline.~%uint32 tow                 # [ms] GPS Time of Week of last baseline.~%uint8 rtk_health           # GPS-specific health report for RTK data.~%uint8 rtk_rate             # [Hz] Rate of baseline messages being received by GPS.~%uint8 nsats                # Current number of sats used for RTK calculation.~%int32 baseline_a           # [mm] Current baseline in ECEF x or NED north component, depends on header.frame_id.~%int32 baseline_b           # [mm] Current baseline in ECEF y or NED east component, depends on header.frame_id.~%int32 baseline_c           # [mm] Current baseline in ECEF z or NED down component, depends on header.frame_id.~%uint32 accuracy            # Current estimate of baseline accuracy.~%int32 iar_num_hypotheses   # Current number of integer ambiguity hypotheses.~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GPSRTK>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     2
     4
     1
     1
     1
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GPSRTK>))
  "Converts a ROS message object to a list"
  (cl:list 'GPSRTK
    (cl:cons ':header (header msg))
    (cl:cons ':rtk_receiver_id (rtk_receiver_id msg))
    (cl:cons ':wn (wn msg))
    (cl:cons ':tow (tow msg))
    (cl:cons ':rtk_health (rtk_health msg))
    (cl:cons ':rtk_rate (rtk_rate msg))
    (cl:cons ':nsats (nsats msg))
    (cl:cons ':baseline_a (baseline_a msg))
    (cl:cons ':baseline_b (baseline_b msg))
    (cl:cons ':baseline_c (baseline_c msg))
    (cl:cons ':accuracy (accuracy msg))
    (cl:cons ':iar_num_hypotheses (iar_num_hypotheses msg))
))
