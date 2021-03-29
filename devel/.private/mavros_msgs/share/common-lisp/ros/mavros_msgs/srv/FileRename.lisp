; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude FileRename-request.msg.html

(cl:defclass <FileRename-request> (roslisp-msg-protocol:ros-message)
  ((old_path
    :reader old_path
    :initarg :old_path
    :type cl:string
    :initform "")
   (new_path
    :reader new_path
    :initarg :new_path
    :type cl:string
    :initform ""))
)

(cl:defclass FileRename-request (<FileRename-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FileRename-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FileRename-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<FileRename-request> is deprecated: use mavros_msgs-srv:FileRename-request instead.")))

(cl:ensure-generic-function 'old_path-val :lambda-list '(m))
(cl:defmethod old_path-val ((m <FileRename-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:old_path-val is deprecated.  Use mavros_msgs-srv:old_path instead.")
  (old_path m))

(cl:ensure-generic-function 'new_path-val :lambda-list '(m))
(cl:defmethod new_path-val ((m <FileRename-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:new_path-val is deprecated.  Use mavros_msgs-srv:new_path instead.")
  (new_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FileRename-request>) ostream)
  "Serializes a message object of type '<FileRename-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'old_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'old_path))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'new_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'new_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FileRename-request>) istream)
  "Deserializes a message object of type '<FileRename-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'old_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'old_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'new_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'new_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FileRename-request>)))
  "Returns string type for a service object of type '<FileRename-request>"
  "mavros_msgs/FileRenameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileRename-request)))
  "Returns string type for a service object of type 'FileRename-request"
  "mavros_msgs/FileRenameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FileRename-request>)))
  "Returns md5sum for a message object of type '<FileRename-request>"
  "07d853e3d48c88a648998515aab1f5b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FileRename-request)))
  "Returns md5sum for a message object of type 'FileRename-request"
  "07d853e3d48c88a648998515aab1f5b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FileRename-request>)))
  "Returns full string definition for message of type '<FileRename-request>"
  (cl:format cl:nil "# FTP::Rename~%#~%# :success:	indicates success end of request~%# :r_errno:	remote errno if applicapable~%~%string old_path~%string new_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FileRename-request)))
  "Returns full string definition for message of type 'FileRename-request"
  (cl:format cl:nil "# FTP::Rename~%#~%# :success:	indicates success end of request~%# :r_errno:	remote errno if applicapable~%~%string old_path~%string new_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FileRename-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'old_path))
     4 (cl:length (cl:slot-value msg 'new_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FileRename-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FileRename-request
    (cl:cons ':old_path (old_path msg))
    (cl:cons ':new_path (new_path msg))
))
;//! \htmlinclude FileRename-response.msg.html

(cl:defclass <FileRename-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass FileRename-response (<FileRename-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FileRename-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FileRename-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<FileRename-response> is deprecated: use mavros_msgs-srv:FileRename-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <FileRename-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'r_errno-val :lambda-list '(m))
(cl:defmethod r_errno-val ((m <FileRename-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:r_errno-val is deprecated.  Use mavros_msgs-srv:r_errno instead.")
  (r_errno m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FileRename-response>) ostream)
  "Serializes a message object of type '<FileRename-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'r_errno)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FileRename-response>) istream)
  "Deserializes a message object of type '<FileRename-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r_errno) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FileRename-response>)))
  "Returns string type for a service object of type '<FileRename-response>"
  "mavros_msgs/FileRenameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileRename-response)))
  "Returns string type for a service object of type 'FileRename-response"
  "mavros_msgs/FileRenameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FileRename-response>)))
  "Returns md5sum for a message object of type '<FileRename-response>"
  "07d853e3d48c88a648998515aab1f5b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FileRename-response)))
  "Returns md5sum for a message object of type 'FileRename-response"
  "07d853e3d48c88a648998515aab1f5b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FileRename-response>)))
  "Returns full string definition for message of type '<FileRename-response>"
  (cl:format cl:nil "bool success~%int32 r_errno~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FileRename-response)))
  "Returns full string definition for message of type 'FileRename-response"
  (cl:format cl:nil "bool success~%int32 r_errno~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FileRename-response>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FileRename-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FileRename-response
    (cl:cons ':success (success msg))
    (cl:cons ':r_errno (r_errno msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FileRename)))
  'FileRename-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FileRename)))
  'FileRename-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileRename)))
  "Returns string type for a service object of type '<FileRename>"
  "mavros_msgs/FileRename")