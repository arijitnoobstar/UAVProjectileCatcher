; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude TimesyncStatus.msg.html

(cl:defclass <TimesyncStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (remote_timestamp_ns
    :reader remote_timestamp_ns
    :initarg :remote_timestamp_ns
    :type cl:integer
    :initform 0)
   (observed_offset_ns
    :reader observed_offset_ns
    :initarg :observed_offset_ns
    :type cl:integer
    :initform 0)
   (estimated_offset_ns
    :reader estimated_offset_ns
    :initarg :estimated_offset_ns
    :type cl:integer
    :initform 0)
   (round_trip_time_ms
    :reader round_trip_time_ms
    :initarg :round_trip_time_ms
    :type cl:float
    :initform 0.0))
)

(cl:defclass TimesyncStatus (<TimesyncStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimesyncStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimesyncStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<TimesyncStatus> is deprecated: use mavros_msgs-msg:TimesyncStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TimesyncStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'remote_timestamp_ns-val :lambda-list '(m))
(cl:defmethod remote_timestamp_ns-val ((m <TimesyncStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:remote_timestamp_ns-val is deprecated.  Use mavros_msgs-msg:remote_timestamp_ns instead.")
  (remote_timestamp_ns m))

(cl:ensure-generic-function 'observed_offset_ns-val :lambda-list '(m))
(cl:defmethod observed_offset_ns-val ((m <TimesyncStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:observed_offset_ns-val is deprecated.  Use mavros_msgs-msg:observed_offset_ns instead.")
  (observed_offset_ns m))

(cl:ensure-generic-function 'estimated_offset_ns-val :lambda-list '(m))
(cl:defmethod estimated_offset_ns-val ((m <TimesyncStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:estimated_offset_ns-val is deprecated.  Use mavros_msgs-msg:estimated_offset_ns instead.")
  (estimated_offset_ns m))

(cl:ensure-generic-function 'round_trip_time_ms-val :lambda-list '(m))
(cl:defmethod round_trip_time_ms-val ((m <TimesyncStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:round_trip_time_ms-val is deprecated.  Use mavros_msgs-msg:round_trip_time_ms instead.")
  (round_trip_time_ms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimesyncStatus>) ostream)
  "Serializes a message object of type '<TimesyncStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remote_timestamp_ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remote_timestamp_ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'remote_timestamp_ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'remote_timestamp_ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'remote_timestamp_ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'remote_timestamp_ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'remote_timestamp_ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'remote_timestamp_ns)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'observed_offset_ns)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'estimated_offset_ns)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'round_trip_time_ms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimesyncStatus>) istream)
  "Deserializes a message object of type '<TimesyncStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remote_timestamp_ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remote_timestamp_ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'remote_timestamp_ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'remote_timestamp_ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'remote_timestamp_ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'remote_timestamp_ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'remote_timestamp_ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'remote_timestamp_ns)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'observed_offset_ns) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'estimated_offset_ns) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'round_trip_time_ms) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimesyncStatus>)))
  "Returns string type for a message object of type '<TimesyncStatus>"
  "mavros_msgs/TimesyncStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimesyncStatus)))
  "Returns string type for a message object of type 'TimesyncStatus"
  "mavros_msgs/TimesyncStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimesyncStatus>)))
  "Returns md5sum for a message object of type '<TimesyncStatus>"
  "021ec8044e747bea518b441f374ba64b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimesyncStatus)))
  "Returns md5sum for a message object of type 'TimesyncStatus"
  "021ec8044e747bea518b441f374ba64b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimesyncStatus>)))
  "Returns full string definition for message of type '<TimesyncStatus>"
  (cl:format cl:nil "# Status of the MAVLink time synchroniser~%~%std_msgs/Header header~%uint64 remote_timestamp_ns		# remote system timestamp (nanoseconds)~%int64 observed_offset_ns		# raw time offset directly observed from this timesync packet (nanoseconds)~%int64 estimated_offset_ns		# smoothed time offset between companion system and Mavros (nanoseconds)~%float32 round_trip_time_ms		# round trip time of this timesync packet (milliseconds)~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimesyncStatus)))
  "Returns full string definition for message of type 'TimesyncStatus"
  (cl:format cl:nil "# Status of the MAVLink time synchroniser~%~%std_msgs/Header header~%uint64 remote_timestamp_ns		# remote system timestamp (nanoseconds)~%int64 observed_offset_ns		# raw time offset directly observed from this timesync packet (nanoseconds)~%int64 estimated_offset_ns		# smoothed time offset between companion system and Mavros (nanoseconds)~%float32 round_trip_time_ms		# round trip time of this timesync packet (milliseconds)~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimesyncStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimesyncStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'TimesyncStatus
    (cl:cons ':header (header msg))
    (cl:cons ':remote_timestamp_ns (remote_timestamp_ns msg))
    (cl:cons ':observed_offset_ns (observed_offset_ns msg))
    (cl:cons ':estimated_offset_ns (estimated_offset_ns msg))
    (cl:cons ':round_trip_time_ms (round_trip_time_ms msg))
))
