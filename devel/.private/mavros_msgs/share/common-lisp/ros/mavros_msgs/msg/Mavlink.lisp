; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude Mavlink.msg.html

(cl:defclass <Mavlink> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (framing_status
    :reader framing_status
    :initarg :framing_status
    :type cl:fixnum
    :initform 0)
   (magic
    :reader magic
    :initarg :magic
    :type cl:fixnum
    :initform 0)
   (len
    :reader len
    :initarg :len
    :type cl:fixnum
    :initform 0)
   (incompat_flags
    :reader incompat_flags
    :initarg :incompat_flags
    :type cl:fixnum
    :initform 0)
   (compat_flags
    :reader compat_flags
    :initarg :compat_flags
    :type cl:fixnum
    :initform 0)
   (seq
    :reader seq
    :initarg :seq
    :type cl:fixnum
    :initform 0)
   (sysid
    :reader sysid
    :initarg :sysid
    :type cl:fixnum
    :initform 0)
   (compid
    :reader compid
    :initarg :compid
    :type cl:fixnum
    :initform 0)
   (msgid
    :reader msgid
    :initarg :msgid
    :type cl:integer
    :initform 0)
   (checksum
    :reader checksum
    :initarg :checksum
    :type cl:fixnum
    :initform 0)
   (payload64
    :reader payload64
    :initarg :payload64
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (signature
    :reader signature
    :initarg :signature
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Mavlink (<Mavlink>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mavlink>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mavlink)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<Mavlink> is deprecated: use mavros_msgs-msg:Mavlink instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Mavlink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'framing_status-val :lambda-list '(m))
(cl:defmethod framing_status-val ((m <Mavlink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:framing_status-val is deprecated.  Use mavros_msgs-msg:framing_status instead.")
  (framing_status m))

(cl:ensure-generic-function 'magic-val :lambda-list '(m))
(cl:defmethod magic-val ((m <Mavlink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:magic-val is deprecated.  Use mavros_msgs-msg:magic instead.")
  (magic m))

(cl:ensure-generic-function 'len-val :lambda-list '(m))
(cl:defmethod len-val ((m <Mavlink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:len-val is deprecated.  Use mavros_msgs-msg:len instead.")
  (len m))

(cl:ensure-generic-function 'incompat_flags-val :lambda-list '(m))
(cl:defmethod incompat_flags-val ((m <Mavlink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:incompat_flags-val is deprecated.  Use mavros_msgs-msg:incompat_flags instead.")
  (incompat_flags m))

(cl:ensure-generic-function 'compat_flags-val :lambda-list '(m))
(cl:defmethod compat_flags-val ((m <Mavlink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:compat_flags-val is deprecated.  Use mavros_msgs-msg:compat_flags instead.")
  (compat_flags m))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <Mavlink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:seq-val is deprecated.  Use mavros_msgs-msg:seq instead.")
  (seq m))

(cl:ensure-generic-function 'sysid-val :lambda-list '(m))
(cl:defmethod sysid-val ((m <Mavlink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:sysid-val is deprecated.  Use mavros_msgs-msg:sysid instead.")
  (sysid m))

(cl:ensure-generic-function 'compid-val :lambda-list '(m))
(cl:defmethod compid-val ((m <Mavlink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:compid-val is deprecated.  Use mavros_msgs-msg:compid instead.")
  (compid m))

(cl:ensure-generic-function 'msgid-val :lambda-list '(m))
(cl:defmethod msgid-val ((m <Mavlink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:msgid-val is deprecated.  Use mavros_msgs-msg:msgid instead.")
  (msgid m))

(cl:ensure-generic-function 'checksum-val :lambda-list '(m))
(cl:defmethod checksum-val ((m <Mavlink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:checksum-val is deprecated.  Use mavros_msgs-msg:checksum instead.")
  (checksum m))

(cl:ensure-generic-function 'payload64-val :lambda-list '(m))
(cl:defmethod payload64-val ((m <Mavlink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:payload64-val is deprecated.  Use mavros_msgs-msg:payload64 instead.")
  (payload64 m))

(cl:ensure-generic-function 'signature-val :lambda-list '(m))
(cl:defmethod signature-val ((m <Mavlink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:signature-val is deprecated.  Use mavros_msgs-msg:signature instead.")
  (signature m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Mavlink>)))
    "Constants for message type '<Mavlink>"
  '((:FRAMING_OK . 1)
    (:FRAMING_BAD_CRC . 2)
    (:FRAMING_BAD_SIGNATURE . 3)
    (:MAVLINK_V10 . 254)
    (:MAVLINK_V20 . 253))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Mavlink)))
    "Constants for message type 'Mavlink"
  '((:FRAMING_OK . 1)
    (:FRAMING_BAD_CRC . 2)
    (:FRAMING_BAD_SIGNATURE . 3)
    (:MAVLINK_V10 . 254)
    (:MAVLINK_V20 . 253))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mavlink>) ostream)
  "Serializes a message object of type '<Mavlink>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'framing_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magic)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'len)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'incompat_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'compat_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sysid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'compid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msgid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msgid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'msgid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'msgid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'checksum)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'payload64))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) ele) ostream))
   (cl:slot-value msg 'payload64))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'signature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'signature))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mavlink>) istream)
  "Deserializes a message object of type '<Mavlink>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'framing_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magic)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'len)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'incompat_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'compat_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sysid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'compid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msgid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msgid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'msgid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'msgid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'checksum)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'payload64) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'payload64)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'signature) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'signature)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mavlink>)))
  "Returns string type for a message object of type '<Mavlink>"
  "mavros_msgs/Mavlink")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mavlink)))
  "Returns string type for a message object of type 'Mavlink"
  "mavros_msgs/Mavlink")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mavlink>)))
  "Returns md5sum for a message object of type '<Mavlink>"
  "41093e1fd0f3eea1da2aa33a177e5ba6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mavlink)))
  "Returns md5sum for a message object of type 'Mavlink"
  "41093e1fd0f3eea1da2aa33a177e5ba6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mavlink>)))
  "Returns full string definition for message of type '<Mavlink>"
  (cl:format cl:nil "# Mavlink message transport type.~%#~%# Used to transport mavlink_message_t via ROS topic~%#~%# :framing_status:~%#       Frame decoding status: OK, CRC error, bad Signature (mavlink v2.0)~%#       You may simply drop all non valid messages.~%#       Used for GCS Bridge to transport unknown messages.~%#~%# :magic:~%#       STX byte, used to determine protocol version v1.0 or v2.0.~%#~%# Please use mavros_msgs::mavlink::convert() from <mavros_msgs/mavlink_convert.h>~%# to convert between ROS and MAVLink message type~%~%# mavlink_framing_t enum~%uint8 FRAMING_OK = 1~%uint8 FRAMING_BAD_CRC = 2~%uint8 FRAMING_BAD_SIGNATURE = 3~%~%# stx values~%uint8 MAVLINK_V10 = 254~%uint8 MAVLINK_V20 = 253~%~%std_msgs/Header header~%uint8 framing_status~%~%uint8 magic		# STX byte~%uint8 len~%uint8 incompat_flags~%uint8 compat_flags~%uint8 seq~%uint8 sysid~%uint8 compid~%uint32 msgid		# 24-bit message id~%uint16 checksum~%uint64[] payload64~%uint8[] signature	# optional signature~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mavlink)))
  "Returns full string definition for message of type 'Mavlink"
  (cl:format cl:nil "# Mavlink message transport type.~%#~%# Used to transport mavlink_message_t via ROS topic~%#~%# :framing_status:~%#       Frame decoding status: OK, CRC error, bad Signature (mavlink v2.0)~%#       You may simply drop all non valid messages.~%#       Used for GCS Bridge to transport unknown messages.~%#~%# :magic:~%#       STX byte, used to determine protocol version v1.0 or v2.0.~%#~%# Please use mavros_msgs::mavlink::convert() from <mavros_msgs/mavlink_convert.h>~%# to convert between ROS and MAVLink message type~%~%# mavlink_framing_t enum~%uint8 FRAMING_OK = 1~%uint8 FRAMING_BAD_CRC = 2~%uint8 FRAMING_BAD_SIGNATURE = 3~%~%# stx values~%uint8 MAVLINK_V10 = 254~%uint8 MAVLINK_V20 = 253~%~%std_msgs/Header header~%uint8 framing_status~%~%uint8 magic		# STX byte~%uint8 len~%uint8 incompat_flags~%uint8 compat_flags~%uint8 seq~%uint8 sysid~%uint8 compid~%uint32 msgid		# 24-bit message id~%uint16 checksum~%uint64[] payload64~%uint8[] signature	# optional signature~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mavlink>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     1
     4
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'payload64) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'signature) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mavlink>))
  "Converts a ROS message object to a list"
  (cl:list 'Mavlink
    (cl:cons ':header (header msg))
    (cl:cons ':framing_status (framing_status msg))
    (cl:cons ':magic (magic msg))
    (cl:cons ':len (len msg))
    (cl:cons ':incompat_flags (incompat_flags msg))
    (cl:cons ':compat_flags (compat_flags msg))
    (cl:cons ':seq (seq msg))
    (cl:cons ':sysid (sysid msg))
    (cl:cons ':compid (compid msg))
    (cl:cons ':msgid (msgid msg))
    (cl:cons ':checksum (checksum msg))
    (cl:cons ':payload64 (payload64 msg))
    (cl:cons ':signature (signature msg))
))
