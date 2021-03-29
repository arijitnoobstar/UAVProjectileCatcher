; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude FileRemove-request.msg.html

(cl:defclass <FileRemove-request> (roslisp-msg-protocol:ros-message)
  ((file_path
    :reader file_path
    :initarg :file_path
    :type cl:string
    :initform ""))
)

(cl:defclass FileRemove-request (<FileRemove-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FileRemove-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FileRemove-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<FileRemove-request> is deprecated: use mavros_msgs-srv:FileRemove-request instead.")))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <FileRemove-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:file_path-val is deprecated.  Use mavros_msgs-srv:file_path instead.")
  (file_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FileRemove-request>) ostream)
  "Serializes a message object of type '<FileRemove-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FileRemove-request>) istream)
  "Deserializes a message object of type '<FileRemove-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FileRemove-request>)))
  "Returns string type for a service object of type '<FileRemove-request>"
  "mavros_msgs/FileRemoveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileRemove-request)))
  "Returns string type for a service object of type 'FileRemove-request"
  "mavros_msgs/FileRemoveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FileRemove-request>)))
  "Returns md5sum for a message object of type '<FileRemove-request>"
  "1c309002d7f7c6df7d3f094925ea8e10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FileRemove-request)))
  "Returns md5sum for a message object of type 'FileRemove-request"
  "1c309002d7f7c6df7d3f094925ea8e10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FileRemove-request>)))
  "Returns full string definition for message of type '<FileRemove-request>"
  (cl:format cl:nil "# FTP::Remove~%#~%# :success:	indicates success end of request~%# :r_errno:	remote errno if applicapable~%~%string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FileRemove-request)))
  "Returns full string definition for message of type 'FileRemove-request"
  (cl:format cl:nil "# FTP::Remove~%#~%# :success:	indicates success end of request~%# :r_errno:	remote errno if applicapable~%~%string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FileRemove-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FileRemove-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FileRemove-request
    (cl:cons ':file_path (file_path msg))
))
;//! \htmlinclude FileRemove-response.msg.html

(cl:defclass <FileRemove-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass FileRemove-response (<FileRemove-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FileRemove-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FileRemove-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<FileRemove-response> is deprecated: use mavros_msgs-srv:FileRemove-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <FileRemove-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'r_errno-val :lambda-list '(m))
(cl:defmethod r_errno-val ((m <FileRemove-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:r_errno-val is deprecated.  Use mavros_msgs-srv:r_errno instead.")
  (r_errno m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FileRemove-response>) ostream)
  "Serializes a message object of type '<FileRemove-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'r_errno)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FileRemove-response>) istream)
  "Deserializes a message object of type '<FileRemove-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r_errno) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FileRemove-response>)))
  "Returns string type for a service object of type '<FileRemove-response>"
  "mavros_msgs/FileRemoveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileRemove-response)))
  "Returns string type for a service object of type 'FileRemove-response"
  "mavros_msgs/FileRemoveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FileRemove-response>)))
  "Returns md5sum for a message object of type '<FileRemove-response>"
  "1c309002d7f7c6df7d3f094925ea8e10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FileRemove-response)))
  "Returns md5sum for a message object of type 'FileRemove-response"
  "1c309002d7f7c6df7d3f094925ea8e10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FileRemove-response>)))
  "Returns full string definition for message of type '<FileRemove-response>"
  (cl:format cl:nil "bool success~%int32 r_errno~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FileRemove-response)))
  "Returns full string definition for message of type 'FileRemove-response"
  (cl:format cl:nil "bool success~%int32 r_errno~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FileRemove-response>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FileRemove-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FileRemove-response
    (cl:cons ':success (success msg))
    (cl:cons ':r_errno (r_errno msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FileRemove)))
  'FileRemove-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FileRemove)))
  'FileRemove-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileRemove)))
  "Returns string type for a service object of type '<FileRemove>"
  "mavros_msgs/FileRemove")