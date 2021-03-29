; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude FileClose-request.msg.html

(cl:defclass <FileClose-request> (roslisp-msg-protocol:ros-message)
  ((file_path
    :reader file_path
    :initarg :file_path
    :type cl:string
    :initform ""))
)

(cl:defclass FileClose-request (<FileClose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FileClose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FileClose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<FileClose-request> is deprecated: use mavros_msgs-srv:FileClose-request instead.")))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <FileClose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:file_path-val is deprecated.  Use mavros_msgs-srv:file_path instead.")
  (file_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FileClose-request>) ostream)
  "Serializes a message object of type '<FileClose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FileClose-request>) istream)
  "Deserializes a message object of type '<FileClose-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FileClose-request>)))
  "Returns string type for a service object of type '<FileClose-request>"
  "mavros_msgs/FileCloseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileClose-request)))
  "Returns string type for a service object of type 'FileClose-request"
  "mavros_msgs/FileCloseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FileClose-request>)))
  "Returns md5sum for a message object of type '<FileClose-request>"
  "1c309002d7f7c6df7d3f094925ea8e10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FileClose-request)))
  "Returns md5sum for a message object of type 'FileClose-request"
  "1c309002d7f7c6df7d3f094925ea8e10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FileClose-request>)))
  "Returns full string definition for message of type '<FileClose-request>"
  (cl:format cl:nil "# FTP::Close~%#~%# Call FTP::Open first.~%# :success:	indicates success end of request~%# :r_errno:	remote errno if applicapable~%~%string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FileClose-request)))
  "Returns full string definition for message of type 'FileClose-request"
  (cl:format cl:nil "# FTP::Close~%#~%# Call FTP::Open first.~%# :success:	indicates success end of request~%# :r_errno:	remote errno if applicapable~%~%string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FileClose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FileClose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FileClose-request
    (cl:cons ':file_path (file_path msg))
))
;//! \htmlinclude FileClose-response.msg.html

(cl:defclass <FileClose-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass FileClose-response (<FileClose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FileClose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FileClose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<FileClose-response> is deprecated: use mavros_msgs-srv:FileClose-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <FileClose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'r_errno-val :lambda-list '(m))
(cl:defmethod r_errno-val ((m <FileClose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:r_errno-val is deprecated.  Use mavros_msgs-srv:r_errno instead.")
  (r_errno m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FileClose-response>) ostream)
  "Serializes a message object of type '<FileClose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'r_errno)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FileClose-response>) istream)
  "Deserializes a message object of type '<FileClose-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r_errno) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FileClose-response>)))
  "Returns string type for a service object of type '<FileClose-response>"
  "mavros_msgs/FileCloseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileClose-response)))
  "Returns string type for a service object of type 'FileClose-response"
  "mavros_msgs/FileCloseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FileClose-response>)))
  "Returns md5sum for a message object of type '<FileClose-response>"
  "1c309002d7f7c6df7d3f094925ea8e10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FileClose-response)))
  "Returns md5sum for a message object of type 'FileClose-response"
  "1c309002d7f7c6df7d3f094925ea8e10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FileClose-response>)))
  "Returns full string definition for message of type '<FileClose-response>"
  (cl:format cl:nil "bool success~%int32 r_errno~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FileClose-response)))
  "Returns full string definition for message of type 'FileClose-response"
  (cl:format cl:nil "bool success~%int32 r_errno~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FileClose-response>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FileClose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FileClose-response
    (cl:cons ':success (success msg))
    (cl:cons ':r_errno (r_errno msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FileClose)))
  'FileClose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FileClose)))
  'FileClose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileClose)))
  "Returns string type for a service object of type '<FileClose>"
  "mavros_msgs/FileClose")