; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude FileChecksum-request.msg.html

(cl:defclass <FileChecksum-request> (roslisp-msg-protocol:ros-message)
  ((file_path
    :reader file_path
    :initarg :file_path
    :type cl:string
    :initform ""))
)

(cl:defclass FileChecksum-request (<FileChecksum-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FileChecksum-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FileChecksum-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<FileChecksum-request> is deprecated: use mavros_msgs-srv:FileChecksum-request instead.")))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <FileChecksum-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:file_path-val is deprecated.  Use mavros_msgs-srv:file_path instead.")
  (file_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FileChecksum-request>) ostream)
  "Serializes a message object of type '<FileChecksum-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FileChecksum-request>) istream)
  "Deserializes a message object of type '<FileChecksum-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FileChecksum-request>)))
  "Returns string type for a service object of type '<FileChecksum-request>"
  "mavros_msgs/FileChecksumRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileChecksum-request)))
  "Returns string type for a service object of type 'FileChecksum-request"
  "mavros_msgs/FileChecksumRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FileChecksum-request>)))
  "Returns md5sum for a message object of type '<FileChecksum-request>"
  "c32158e17d9a1a1c682fe19adbd29fac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FileChecksum-request)))
  "Returns md5sum for a message object of type 'FileChecksum-request"
  "c32158e17d9a1a1c682fe19adbd29fac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FileChecksum-request>)))
  "Returns full string definition for message of type '<FileChecksum-request>"
  (cl:format cl:nil "# FTP::Checksum~%#~%# :file_path:	file to calculate checksum~%# :crc32:	file checksum~%# :success:	indicates success end of request~%# :r_errno:	remote errno if applicapable~%~%string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FileChecksum-request)))
  "Returns full string definition for message of type 'FileChecksum-request"
  (cl:format cl:nil "# FTP::Checksum~%#~%# :file_path:	file to calculate checksum~%# :crc32:	file checksum~%# :success:	indicates success end of request~%# :r_errno:	remote errno if applicapable~%~%string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FileChecksum-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FileChecksum-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FileChecksum-request
    (cl:cons ':file_path (file_path msg))
))
;//! \htmlinclude FileChecksum-response.msg.html

(cl:defclass <FileChecksum-response> (roslisp-msg-protocol:ros-message)
  ((crc32
    :reader crc32
    :initarg :crc32
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

(cl:defclass FileChecksum-response (<FileChecksum-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FileChecksum-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FileChecksum-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<FileChecksum-response> is deprecated: use mavros_msgs-srv:FileChecksum-response instead.")))

(cl:ensure-generic-function 'crc32-val :lambda-list '(m))
(cl:defmethod crc32-val ((m <FileChecksum-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:crc32-val is deprecated.  Use mavros_msgs-srv:crc32 instead.")
  (crc32 m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <FileChecksum-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'r_errno-val :lambda-list '(m))
(cl:defmethod r_errno-val ((m <FileChecksum-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:r_errno-val is deprecated.  Use mavros_msgs-srv:r_errno instead.")
  (r_errno m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FileChecksum-response>) ostream)
  "Serializes a message object of type '<FileChecksum-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'crc32)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'crc32)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'crc32)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'crc32)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'r_errno)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FileChecksum-response>) istream)
  "Deserializes a message object of type '<FileChecksum-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'crc32)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'crc32)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'crc32)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'crc32)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r_errno) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FileChecksum-response>)))
  "Returns string type for a service object of type '<FileChecksum-response>"
  "mavros_msgs/FileChecksumResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileChecksum-response)))
  "Returns string type for a service object of type 'FileChecksum-response"
  "mavros_msgs/FileChecksumResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FileChecksum-response>)))
  "Returns md5sum for a message object of type '<FileChecksum-response>"
  "c32158e17d9a1a1c682fe19adbd29fac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FileChecksum-response)))
  "Returns md5sum for a message object of type 'FileChecksum-response"
  "c32158e17d9a1a1c682fe19adbd29fac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FileChecksum-response>)))
  "Returns full string definition for message of type '<FileChecksum-response>"
  (cl:format cl:nil "uint32 crc32~%bool success~%int32 r_errno~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FileChecksum-response)))
  "Returns full string definition for message of type 'FileChecksum-response"
  (cl:format cl:nil "uint32 crc32~%bool success~%int32 r_errno~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FileChecksum-response>))
  (cl:+ 0
     4
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FileChecksum-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FileChecksum-response
    (cl:cons ':crc32 (crc32 msg))
    (cl:cons ':success (success msg))
    (cl:cons ':r_errno (r_errno msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FileChecksum)))
  'FileChecksum-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FileChecksum)))
  'FileChecksum-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileChecksum)))
  "Returns string type for a service object of type '<FileChecksum>"
  "mavros_msgs/FileChecksum")