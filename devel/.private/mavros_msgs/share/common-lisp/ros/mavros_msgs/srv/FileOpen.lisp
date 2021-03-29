; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude FileOpen-request.msg.html

(cl:defclass <FileOpen-request> (roslisp-msg-protocol:ros-message)
  ((file_path
    :reader file_path
    :initarg :file_path
    :type cl:string
    :initform "")
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FileOpen-request (<FileOpen-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FileOpen-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FileOpen-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<FileOpen-request> is deprecated: use mavros_msgs-srv:FileOpen-request instead.")))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <FileOpen-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:file_path-val is deprecated.  Use mavros_msgs-srv:file_path instead.")
  (file_path m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <FileOpen-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:mode-val is deprecated.  Use mavros_msgs-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FileOpen-request>)))
    "Constants for message type '<FileOpen-request>"
  '((:MODE_READ . 0)
    (:MODE_WRITE . 1)
    (:MODE_CREATE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FileOpen-request)))
    "Constants for message type 'FileOpen-request"
  '((:MODE_READ . 0)
    (:MODE_WRITE . 1)
    (:MODE_CREATE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FileOpen-request>) ostream)
  "Serializes a message object of type '<FileOpen-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_path))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FileOpen-request>) istream)
  "Deserializes a message object of type '<FileOpen-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FileOpen-request>)))
  "Returns string type for a service object of type '<FileOpen-request>"
  "mavros_msgs/FileOpenRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileOpen-request)))
  "Returns string type for a service object of type 'FileOpen-request"
  "mavros_msgs/FileOpenRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FileOpen-request>)))
  "Returns md5sum for a message object of type '<FileOpen-request>"
  "99a3f49cc67b91477cf49ff15c42af0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FileOpen-request)))
  "Returns md5sum for a message object of type 'FileOpen-request"
  "99a3f49cc67b91477cf49ff15c42af0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FileOpen-request>)))
  "Returns full string definition for message of type '<FileOpen-request>"
  (cl:format cl:nil "# FTP::Open~%#~%# :file_path:	used as session id in read/write/close services~%# :size:	file size returned for MODE_READ~%# :success:	indicates success end of request~%# :r_errno:	remote errno if applicapable~%~%uint8 MODE_READ = 0	# open for read~%uint8 MODE_WRITE = 1	# open for write~%uint8 MODE_CREATE = 2	# do creat()~%~%string file_path~%uint8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FileOpen-request)))
  "Returns full string definition for message of type 'FileOpen-request"
  (cl:format cl:nil "# FTP::Open~%#~%# :file_path:	used as session id in read/write/close services~%# :size:	file size returned for MODE_READ~%# :success:	indicates success end of request~%# :r_errno:	remote errno if applicapable~%~%uint8 MODE_READ = 0	# open for read~%uint8 MODE_WRITE = 1	# open for write~%uint8 MODE_CREATE = 2	# do creat()~%~%string file_path~%uint8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FileOpen-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_path))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FileOpen-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FileOpen-request
    (cl:cons ':file_path (file_path msg))
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude FileOpen-response.msg.html

(cl:defclass <FileOpen-response> (roslisp-msg-protocol:ros-message)
  ((size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (r_errno
    :reader r_errno
    :initarg :r_errno
    :type cl:integer
    :initform 0))
)

(cl:defclass FileOpen-response (<FileOpen-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FileOpen-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FileOpen-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<FileOpen-response> is deprecated: use mavros_msgs-srv:FileOpen-response instead.")))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <FileOpen-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:size-val is deprecated.  Use mavros_msgs-srv:size instead.")
  (size m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <FileOpen-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'r_errno-val :lambda-list '(m))
(cl:defmethod r_errno-val ((m <FileOpen-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:r_errno-val is deprecated.  Use mavros_msgs-srv:r_errno instead.")
  (r_errno m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FileOpen-response>) ostream)
  "Serializes a message object of type '<FileOpen-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'r_errno)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FileOpen-response>) istream)
  "Deserializes a message object of type '<FileOpen-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r_errno) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FileOpen-response>)))
  "Returns string type for a service object of type '<FileOpen-response>"
  "mavros_msgs/FileOpenResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileOpen-response)))
  "Returns string type for a service object of type 'FileOpen-response"
  "mavros_msgs/FileOpenResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FileOpen-response>)))
  "Returns md5sum for a message object of type '<FileOpen-response>"
  "99a3f49cc67b91477cf49ff15c42af0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FileOpen-response)))
  "Returns md5sum for a message object of type 'FileOpen-response"
  "99a3f49cc67b91477cf49ff15c42af0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FileOpen-response>)))
  "Returns full string definition for message of type '<FileOpen-response>"
  (cl:format cl:nil "uint32 size~%bool success~%int32 r_errno~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FileOpen-response)))
  "Returns full string definition for message of type 'FileOpen-response"
  (cl:format cl:nil "uint32 size~%bool success~%int32 r_errno~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FileOpen-response>))
  (cl:+ 0
     4
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FileOpen-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FileOpen-response
    (cl:cons ':size (size msg))
    (cl:cons ':success (success msg))
    (cl:cons ':r_errno (r_errno msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FileOpen)))
  'FileOpen-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FileOpen)))
  'FileOpen-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileOpen)))
  "Returns string type for a service object of type '<FileOpen>"
  "mavros_msgs/FileOpen")