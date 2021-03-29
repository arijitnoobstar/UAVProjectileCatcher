; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude FileMakeDir-request.msg.html

(cl:defclass <FileMakeDir-request> (roslisp-msg-protocol:ros-message)
  ((dir_path
    :reader dir_path
    :initarg :dir_path
    :type cl:string
    :initform ""))
)

(cl:defclass FileMakeDir-request (<FileMakeDir-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FileMakeDir-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FileMakeDir-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<FileMakeDir-request> is deprecated: use mavros_msgs-srv:FileMakeDir-request instead.")))

(cl:ensure-generic-function 'dir_path-val :lambda-list '(m))
(cl:defmethod dir_path-val ((m <FileMakeDir-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:dir_path-val is deprecated.  Use mavros_msgs-srv:dir_path instead.")
  (dir_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FileMakeDir-request>) ostream)
  "Serializes a message object of type '<FileMakeDir-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dir_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dir_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FileMakeDir-request>) istream)
  "Deserializes a message object of type '<FileMakeDir-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FileMakeDir-request>)))
  "Returns string type for a service object of type '<FileMakeDir-request>"
  "mavros_msgs/FileMakeDirRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileMakeDir-request)))
  "Returns string type for a service object of type 'FileMakeDir-request"
  "mavros_msgs/FileMakeDirRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FileMakeDir-request>)))
  "Returns md5sum for a message object of type '<FileMakeDir-request>"
  "f140c5ef05b00c3cfc30d5a2061b4d63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FileMakeDir-request)))
  "Returns md5sum for a message object of type 'FileMakeDir-request"
  "f140c5ef05b00c3cfc30d5a2061b4d63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FileMakeDir-request>)))
  "Returns full string definition for message of type '<FileMakeDir-request>"
  (cl:format cl:nil "# FTP::MakeDir~%#~%# :success:	indicates success end of request~%# :r_errno:	remote errno if applicapable~%~%string dir_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FileMakeDir-request)))
  "Returns full string definition for message of type 'FileMakeDir-request"
  (cl:format cl:nil "# FTP::MakeDir~%#~%# :success:	indicates success end of request~%# :r_errno:	remote errno if applicapable~%~%string dir_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FileMakeDir-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'dir_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FileMakeDir-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FileMakeDir-request
    (cl:cons ':dir_path (dir_path msg))
))
;//! \htmlinclude FileMakeDir-response.msg.html

(cl:defclass <FileMakeDir-response> (roslisp-msg-protocol:ros-message)
  ((success
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

(cl:defclass FileMakeDir-response (<FileMakeDir-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FileMakeDir-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FileMakeDir-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<FileMakeDir-response> is deprecated: use mavros_msgs-srv:FileMakeDir-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <FileMakeDir-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'r_errno-val :lambda-list '(m))
(cl:defmethod r_errno-val ((m <FileMakeDir-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:r_errno-val is deprecated.  Use mavros_msgs-srv:r_errno instead.")
  (r_errno m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FileMakeDir-response>) ostream)
  "Serializes a message object of type '<FileMakeDir-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'r_errno)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FileMakeDir-response>) istream)
  "Deserializes a message object of type '<FileMakeDir-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r_errno) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FileMakeDir-response>)))
  "Returns string type for a service object of type '<FileMakeDir-response>"
  "mavros_msgs/FileMakeDirResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileMakeDir-response)))
  "Returns string type for a service object of type 'FileMakeDir-response"
  "mavros_msgs/FileMakeDirResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FileMakeDir-response>)))
  "Returns md5sum for a message object of type '<FileMakeDir-response>"
  "f140c5ef05b00c3cfc30d5a2061b4d63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FileMakeDir-response)))
  "Returns md5sum for a message object of type 'FileMakeDir-response"
  "f140c5ef05b00c3cfc30d5a2061b4d63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FileMakeDir-response>)))
  "Returns full string definition for message of type '<FileMakeDir-response>"
  (cl:format cl:nil "bool success~%int32 r_errno~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FileMakeDir-response)))
  "Returns full string definition for message of type 'FileMakeDir-response"
  (cl:format cl:nil "bool success~%int32 r_errno~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FileMakeDir-response>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FileMakeDir-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FileMakeDir-response
    (cl:cons ':success (success msg))
    (cl:cons ':r_errno (r_errno msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FileMakeDir)))
  'FileMakeDir-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FileMakeDir)))
  'FileMakeDir-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileMakeDir)))
  "Returns string type for a service object of type '<FileMakeDir>"
  "mavros_msgs/FileMakeDir")