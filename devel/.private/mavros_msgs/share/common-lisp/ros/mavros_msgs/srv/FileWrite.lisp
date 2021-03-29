; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude FileWrite-request.msg.html

(cl:defclass <FileWrite-request> (roslisp-msg-protocol:ros-message)
  ((file_path
    :reader file_path
    :initarg :file_path
    :type cl:string
    :initform "")
   (offset
    :reader offset
    :initarg :offset
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass FileWrite-request (<FileWrite-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FileWrite-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FileWrite-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<FileWrite-request> is deprecated: use mavros_msgs-srv:FileWrite-request instead.")))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <FileWrite-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:file_path-val is deprecated.  Use mavros_msgs-srv:file_path instead.")
  (file_path m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <FileWrite-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:offset-val is deprecated.  Use mavros_msgs-srv:offset instead.")
  (offset m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <FileWrite-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:data-val is deprecated.  Use mavros_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FileWrite-request>) ostream)
  "Serializes a message object of type '<FileWrite-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_path))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'offset)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FileWrite-request>) istream)
  "Deserializes a message object of type '<FileWrite-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'offset)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FileWrite-request>)))
  "Returns string type for a service object of type '<FileWrite-request>"
  "mavros_msgs/FileWriteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileWrite-request)))
  "Returns string type for a service object of type 'FileWrite-request"
  "mavros_msgs/FileWriteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FileWrite-request>)))
  "Returns md5sum for a message object of type '<FileWrite-request>"
  "7d7e0ed4d86797a80355795ee6728fac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FileWrite-request)))
  "Returns md5sum for a message object of type 'FileWrite-request"
  "7d7e0ed4d86797a80355795ee6728fac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FileWrite-request>)))
  "Returns full string definition for message of type '<FileWrite-request>"
  (cl:format cl:nil "# FTP::Write~%#~%# Call FTP::Open first.~%# :success:	indicates success end of request~%# :r_errno:	remote errno if applicapable~%~%string file_path~%uint64 offset~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FileWrite-request)))
  "Returns full string definition for message of type 'FileWrite-request"
  (cl:format cl:nil "# FTP::Write~%#~%# Call FTP::Open first.~%# :success:	indicates success end of request~%# :r_errno:	remote errno if applicapable~%~%string file_path~%uint64 offset~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FileWrite-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_path))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FileWrite-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FileWrite-request
    (cl:cons ':file_path (file_path msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':data (data msg))
))
;//! \htmlinclude FileWrite-response.msg.html

(cl:defclass <FileWrite-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass FileWrite-response (<FileWrite-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FileWrite-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FileWrite-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<FileWrite-response> is deprecated: use mavros_msgs-srv:FileWrite-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <FileWrite-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'r_errno-val :lambda-list '(m))
(cl:defmethod r_errno-val ((m <FileWrite-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:r_errno-val is deprecated.  Use mavros_msgs-srv:r_errno instead.")
  (r_errno m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FileWrite-response>) ostream)
  "Serializes a message object of type '<FileWrite-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'r_errno)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FileWrite-response>) istream)
  "Deserializes a message object of type '<FileWrite-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r_errno) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FileWrite-response>)))
  "Returns string type for a service object of type '<FileWrite-response>"
  "mavros_msgs/FileWriteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileWrite-response)))
  "Returns string type for a service object of type 'FileWrite-response"
  "mavros_msgs/FileWriteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FileWrite-response>)))
  "Returns md5sum for a message object of type '<FileWrite-response>"
  "7d7e0ed4d86797a80355795ee6728fac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FileWrite-response)))
  "Returns md5sum for a message object of type 'FileWrite-response"
  "7d7e0ed4d86797a80355795ee6728fac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FileWrite-response>)))
  "Returns full string definition for message of type '<FileWrite-response>"
  (cl:format cl:nil "bool success~%int32 r_errno~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FileWrite-response)))
  "Returns full string definition for message of type 'FileWrite-response"
  (cl:format cl:nil "bool success~%int32 r_errno~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FileWrite-response>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FileWrite-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FileWrite-response
    (cl:cons ':success (success msg))
    (cl:cons ':r_errno (r_errno msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FileWrite)))
  'FileWrite-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FileWrite)))
  'FileWrite-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileWrite)))
  "Returns string type for a service object of type '<FileWrite>"
  "mavros_msgs/FileWrite")