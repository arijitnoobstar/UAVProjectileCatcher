; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude RadioStatus.msg.html

(cl:defclass <RadioStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (rssi
    :reader rssi
    :initarg :rssi
    :type cl:fixnum
    :initform 0)
   (remrssi
    :reader remrssi
    :initarg :remrssi
    :type cl:fixnum
    :initform 0)
   (txbuf
    :reader txbuf
    :initarg :txbuf
    :type cl:fixnum
    :initform 0)
   (noise
    :reader noise
    :initarg :noise
    :type cl:fixnum
    :initform 0)
   (remnoise
    :reader remnoise
    :initarg :remnoise
    :type cl:fixnum
    :initform 0)
   (rxerrors
    :reader rxerrors
    :initarg :rxerrors
    :type cl:fixnum
    :initform 0)
   (fixed
    :reader fixed
    :initarg :fixed
    :type cl:fixnum
    :initform 0)
   (rssi_dbm
    :reader rssi_dbm
    :initarg :rssi_dbm
    :type cl:float
    :initform 0.0)
   (remrssi_dbm
    :reader remrssi_dbm
    :initarg :remrssi_dbm
    :type cl:float
    :initform 0.0))
)

(cl:defclass RadioStatus (<RadioStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadioStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadioStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<RadioStatus> is deprecated: use mavros_msgs-msg:RadioStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RadioStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'rssi-val :lambda-list '(m))
(cl:defmethod rssi-val ((m <RadioStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:rssi-val is deprecated.  Use mavros_msgs-msg:rssi instead.")
  (rssi m))

(cl:ensure-generic-function 'remrssi-val :lambda-list '(m))
(cl:defmethod remrssi-val ((m <RadioStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:remrssi-val is deprecated.  Use mavros_msgs-msg:remrssi instead.")
  (remrssi m))

(cl:ensure-generic-function 'txbuf-val :lambda-list '(m))
(cl:defmethod txbuf-val ((m <RadioStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:txbuf-val is deprecated.  Use mavros_msgs-msg:txbuf instead.")
  (txbuf m))

(cl:ensure-generic-function 'noise-val :lambda-list '(m))
(cl:defmethod noise-val ((m <RadioStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:noise-val is deprecated.  Use mavros_msgs-msg:noise instead.")
  (noise m))

(cl:ensure-generic-function 'remnoise-val :lambda-list '(m))
(cl:defmethod remnoise-val ((m <RadioStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:remnoise-val is deprecated.  Use mavros_msgs-msg:remnoise instead.")
  (remnoise m))

(cl:ensure-generic-function 'rxerrors-val :lambda-list '(m))
(cl:defmethod rxerrors-val ((m <RadioStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:rxerrors-val is deprecated.  Use mavros_msgs-msg:rxerrors instead.")
  (rxerrors m))

(cl:ensure-generic-function 'fixed-val :lambda-list '(m))
(cl:defmethod fixed-val ((m <RadioStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:fixed-val is deprecated.  Use mavros_msgs-msg:fixed instead.")
  (fixed m))

(cl:ensure-generic-function 'rssi_dbm-val :lambda-list '(m))
(cl:defmethod rssi_dbm-val ((m <RadioStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:rssi_dbm-val is deprecated.  Use mavros_msgs-msg:rssi_dbm instead.")
  (rssi_dbm m))

(cl:ensure-generic-function 'remrssi_dbm-val :lambda-list '(m))
(cl:defmethod remrssi_dbm-val ((m <RadioStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:remrssi_dbm-val is deprecated.  Use mavros_msgs-msg:remrssi_dbm instead.")
  (remrssi_dbm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadioStatus>) ostream)
  "Serializes a message object of type '<RadioStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rssi)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remrssi)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'txbuf)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noise)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remnoise)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rxerrors)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rxerrors)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fixed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fixed)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rssi_dbm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'remrssi_dbm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadioStatus>) istream)
  "Deserializes a message object of type '<RadioStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rssi)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remrssi)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'txbuf)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noise)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remnoise)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rxerrors)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rxerrors)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fixed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fixed)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rssi_dbm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'remrssi_dbm) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadioStatus>)))
  "Returns string type for a message object of type '<RadioStatus>"
  "mavros_msgs/RadioStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadioStatus)))
  "Returns string type for a message object of type 'RadioStatus"
  "mavros_msgs/RadioStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadioStatus>)))
  "Returns md5sum for a message object of type '<RadioStatus>"
  "04e4a879bb2687140da50a1a821e2190")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadioStatus)))
  "Returns md5sum for a message object of type 'RadioStatus"
  "04e4a879bb2687140da50a1a821e2190")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadioStatus>)))
  "Returns full string definition for message of type '<RadioStatus>"
  (cl:format cl:nil "# RADIO_STATUS message~%~%std_msgs/Header header~%~%# message data~%uint8 rssi~%uint8 remrssi~%uint8 txbuf~%uint8 noise~%uint8 remnoise~%uint16 rxerrors~%uint16 fixed~%~%# calculated~%float32 rssi_dbm~%float32 remrssi_dbm~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadioStatus)))
  "Returns full string definition for message of type 'RadioStatus"
  (cl:format cl:nil "# RADIO_STATUS message~%~%std_msgs/Header header~%~%# message data~%uint8 rssi~%uint8 remrssi~%uint8 txbuf~%uint8 noise~%uint8 remnoise~%uint16 rxerrors~%uint16 fixed~%~%# calculated~%float32 rssi_dbm~%float32 remrssi_dbm~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadioStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     2
     2
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadioStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RadioStatus
    (cl:cons ':header (header msg))
    (cl:cons ':rssi (rssi msg))
    (cl:cons ':remrssi (remrssi msg))
    (cl:cons ':txbuf (txbuf msg))
    (cl:cons ':noise (noise msg))
    (cl:cons ':remnoise (remnoise msg))
    (cl:cons ':rxerrors (rxerrors msg))
    (cl:cons ':fixed (fixed msg))
    (cl:cons ':rssi_dbm (rssi_dbm msg))
    (cl:cons ':remrssi_dbm (remrssi_dbm msg))
))
