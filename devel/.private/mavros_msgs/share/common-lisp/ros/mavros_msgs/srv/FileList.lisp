; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude FileList-request.msg.html

(cl:defclass <FileList-request> (roslisp-msg-protocol:ros-message)
  ((dir_path
    :reader dir_path
    :initarg :dir_path
    :type cl:string
    :initform ""))
)

(cl:defclass FileList-request (<FileList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FileList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FileList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<FileList-request> is deprecated: use mavros_msgs-srv:FileList-request instead.")))

(cl:ensure-generic-function 'dir_path-val :lambda-list '(m))
(cl:defmethod dir_path-val ((m <FileList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:dir_path-val is deprecated.  Use mavros_msgs-srv:dir_path instead.")
  (dir_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FileList-request>) ostream)
  "Serializes a message object of type '<FileList-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dir_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dir_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FileList-request>) istream)
  "Deserializes a message object of type '<FileList-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dir_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dir_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FileList-request>)))
  "Returns string type for a service object of type '<FileList-request>"
  "mavros_msgs/FileListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileList-request)))
  "Returns string type for a service object of type 'FileList-request"
  "mavros_msgs/FileListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FileList-request>)))
  "Returns md5sum for a message object of type '<FileList-request>"
  "1647c627907cac72fa2d06e0e5f96aac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FileList-request)))
  "Returns md5sum for a message object of type 'FileList-request"
  "1647c627907cac72fa2d06e0e5f96aac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FileList-request>)))
  "Returns full string definition for message of type '<FileList-request>"
  (cl:format cl:nil "# FTP::List~%#~%# :success:	indicates success end of request~%# :r_errno:	remote errno if applicapable~%~%string dir_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FileList-request)))
  "Returns full string definition for message of type 'FileList-request"
  (cl:format cl:nil "# FTP::List~%#~%# :success:	indicates success end of request~%# :r_errno:	remote errno if applicapable~%~%string dir_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FileList-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'dir_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FileList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FileList-request
    (cl:cons ':dir_path (dir_path msg))
))
;//! \htmlinclude FileList-response.msg.html

(cl:defclass <FileList-response> (roslisp-msg-protocol:ros-message)
  ((list
    :reader list
    :initarg :list
    :type (cl:vector mavros_msgs-msg:FileEntry)
   :initform (cl:make-array 0 :element-type 'mavros_msgs-msg:FileEntry :initial-element (cl:make-instance 'mavros_msgs-msg:FileEntry)))
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

(cl:defclass FileList-response (<FileList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FileList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FileList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<FileList-response> is deprecated: use mavros_msgs-srv:FileList-response instead.")))

(cl:ensure-generic-function 'list-val :lambda-list '(m))
(cl:defmethod list-val ((m <FileList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:list-val is deprecated.  Use mavros_msgs-srv:list instead.")
  (list m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <FileList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'r_errno-val :lambda-list '(m))
(cl:defmethod r_errno-val ((m <FileList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:r_errno-val is deprecated.  Use mavros_msgs-srv:r_errno instead.")
  (r_errno m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FileList-response>) ostream)
  "Serializes a message object of type '<FileList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'list))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'r_errno)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FileList-response>) istream)
  "Deserializes a message object of type '<FileList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mavros_msgs-msg:FileEntry))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r_errno) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FileList-response>)))
  "Returns string type for a service object of type '<FileList-response>"
  "mavros_msgs/FileListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileList-response)))
  "Returns string type for a service object of type 'FileList-response"
  "mavros_msgs/FileListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FileList-response>)))
  "Returns md5sum for a message object of type '<FileList-response>"
  "1647c627907cac72fa2d06e0e5f96aac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FileList-response)))
  "Returns md5sum for a message object of type 'FileList-response"
  "1647c627907cac72fa2d06e0e5f96aac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FileList-response>)))
  "Returns full string definition for message of type '<FileList-response>"
  (cl:format cl:nil "mavros_msgs/FileEntry[] list~%bool success~%int32 r_errno~%~%~%================================================================================~%MSG: mavros_msgs/FileEntry~%# File/Dir information~%~%uint8 TYPE_FILE = 0~%uint8 TYPE_DIRECTORY = 1~%~%string name~%uint8 type~%uint64 size~%~%# Not supported by MAVLink FTP~%#time atime~%#int32 access_flags~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FileList-response)))
  "Returns full string definition for message of type 'FileList-response"
  (cl:format cl:nil "mavros_msgs/FileEntry[] list~%bool success~%int32 r_errno~%~%~%================================================================================~%MSG: mavros_msgs/FileEntry~%# File/Dir information~%~%uint8 TYPE_FILE = 0~%uint8 TYPE_DIRECTORY = 1~%~%string name~%uint8 type~%uint64 size~%~%# Not supported by MAVLink FTP~%#time atime~%#int32 access_flags~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FileList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FileList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FileList-response
    (cl:cons ':list (list msg))
    (cl:cons ':success (success msg))
    (cl:cons ':r_errno (r_errno msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FileList)))
  'FileList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FileList)))
  'FileList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileList)))
  "Returns string type for a service object of type '<FileList>"
  "mavros_msgs/FileList")