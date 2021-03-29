; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude LogEntry.msg.html

(cl:defclass <LogEntry> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (num_logs
    :reader num_logs
    :initarg :num_logs
    :type cl:fixnum
    :initform 0)
   (last_log_num
    :reader last_log_num
    :initarg :last_log_num
    :type cl:fixnum
    :initform 0)
   (time_utc
    :reader time_utc
    :initarg :time_utc
    :type cl:real
    :initform 0)
   (size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0))
)

(cl:defclass LogEntry (<LogEntry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogEntry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogEntry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<LogEntry> is deprecated: use mavros_msgs-msg:LogEntry instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LogEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LogEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:id-val is deprecated.  Use mavros_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'num_logs-val :lambda-list '(m))
(cl:defmethod num_logs-val ((m <LogEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:num_logs-val is deprecated.  Use mavros_msgs-msg:num_logs instead.")
  (num_logs m))

(cl:ensure-generic-function 'last_log_num-val :lambda-list '(m))
(cl:defmethod last_log_num-val ((m <LogEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:last_log_num-val is deprecated.  Use mavros_msgs-msg:last_log_num instead.")
  (last_log_num m))

(cl:ensure-generic-function 'time_utc-val :lambda-list '(m))
(cl:defmethod time_utc-val ((m <LogEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:time_utc-val is deprecated.  Use mavros_msgs-msg:time_utc instead.")
  (time_utc m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <LogEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:size-val is deprecated.  Use mavros_msgs-msg:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogEntry>) ostream)
  "Serializes a message object of type '<LogEntry>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_logs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_logs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'last_log_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'last_log_num)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time_utc)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time_utc) (cl:floor (cl:slot-value msg 'time_utc)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogEntry>) istream)
  "Deserializes a message object of type '<LogEntry>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_logs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_logs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'last_log_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'last_log_num)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_utc) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogEntry>)))
  "Returns string type for a message object of type '<LogEntry>"
  "mavros_msgs/LogEntry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogEntry)))
  "Returns string type for a message object of type 'LogEntry"
  "mavros_msgs/LogEntry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogEntry>)))
  "Returns md5sum for a message object of type '<LogEntry>"
  "a1428fc1ec4b2bfc8ab0c0ead7cce571")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogEntry)))
  "Returns md5sum for a message object of type 'LogEntry"
  "a1428fc1ec4b2bfc8ab0c0ead7cce571")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogEntry>)))
  "Returns full string definition for message of type '<LogEntry>"
  (cl:format cl:nil "# Information about a single log~%#~%#  :id: - log id~%#  :num_logs: - total number of logs~%#  :last_log_num: - id of last log~%#  :time_utc: - UTC timestamp of log (ros::Time(0) if not available)~%#  :size: - size of log in bytes (may be approximate)~%~%std_msgs/Header header~%~%uint16 id~%uint16 num_logs~%uint16 last_log_num~%time time_utc~%uint32 size~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogEntry)))
  "Returns full string definition for message of type 'LogEntry"
  (cl:format cl:nil "# Information about a single log~%#~%#  :id: - log id~%#  :num_logs: - total number of logs~%#  :last_log_num: - id of last log~%#  :time_utc: - UTC timestamp of log (ros::Time(0) if not available)~%#  :size: - size of log in bytes (may be approximate)~%~%std_msgs/Header header~%~%uint16 id~%uint16 num_logs~%uint16 last_log_num~%time time_utc~%uint32 size~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogEntry>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     2
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogEntry>))
  "Converts a ROS message object to a list"
  (cl:list 'LogEntry
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':num_logs (num_logs msg))
    (cl:cons ':last_log_num (last_log_num msg))
    (cl:cons ':time_utc (time_utc msg))
    (cl:cons ':size (size msg))
))
