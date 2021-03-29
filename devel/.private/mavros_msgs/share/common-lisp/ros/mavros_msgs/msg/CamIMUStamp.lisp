; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude CamIMUStamp.msg.html

(cl:defclass <CamIMUStamp> (roslisp-msg-protocol:ros-message)
  ((frame_stamp
    :reader frame_stamp
    :initarg :frame_stamp
    :type cl:real
    :initform 0)
   (frame_seq_id
    :reader frame_seq_id
    :initarg :frame_seq_id
    :type cl:integer
    :initform 0))
)

(cl:defclass CamIMUStamp (<CamIMUStamp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CamIMUStamp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CamIMUStamp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<CamIMUStamp> is deprecated: use mavros_msgs-msg:CamIMUStamp instead.")))

(cl:ensure-generic-function 'frame_stamp-val :lambda-list '(m))
(cl:defmethod frame_stamp-val ((m <CamIMUStamp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:frame_stamp-val is deprecated.  Use mavros_msgs-msg:frame_stamp instead.")
  (frame_stamp m))

(cl:ensure-generic-function 'frame_seq_id-val :lambda-list '(m))
(cl:defmethod frame_seq_id-val ((m <CamIMUStamp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:frame_seq_id-val is deprecated.  Use mavros_msgs-msg:frame_seq_id instead.")
  (frame_seq_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CamIMUStamp>) ostream)
  "Serializes a message object of type '<CamIMUStamp>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'frame_stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'frame_stamp) (cl:floor (cl:slot-value msg 'frame_stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let* ((signed (cl:slot-value msg 'frame_seq_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CamIMUStamp>) istream)
  "Deserializes a message object of type '<CamIMUStamp>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_seq_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CamIMUStamp>)))
  "Returns string type for a message object of type '<CamIMUStamp>"
  "mavros_msgs/CamIMUStamp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CamIMUStamp)))
  "Returns string type for a message object of type 'CamIMUStamp"
  "mavros_msgs/CamIMUStamp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CamIMUStamp>)))
  "Returns md5sum for a message object of type '<CamIMUStamp>"
  "ac22af9031671dd528a56f12d0986660")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CamIMUStamp)))
  "Returns md5sum for a message object of type 'CamIMUStamp"
  "ac22af9031671dd528a56f12d0986660")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CamIMUStamp>)))
  "Returns full string definition for message of type '<CamIMUStamp>"
  (cl:format cl:nil "# IMU-Camera synchronisation data~%~%time frame_stamp		# Timestamp when the camera was triggered~%int32 frame_seq_id		# Sequence number of the image frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CamIMUStamp)))
  "Returns full string definition for message of type 'CamIMUStamp"
  (cl:format cl:nil "# IMU-Camera synchronisation data~%~%time frame_stamp		# Timestamp when the camera was triggered~%int32 frame_seq_id		# Sequence number of the image frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CamIMUStamp>))
  (cl:+ 0
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CamIMUStamp>))
  "Converts a ROS message object to a list"
  (cl:list 'CamIMUStamp
    (cl:cons ':frame_stamp (frame_stamp msg))
    (cl:cons ':frame_seq_id (frame_seq_id msg))
))
