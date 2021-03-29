; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude FileEntry.msg.html

(cl:defclass <FileEntry> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0))
)

(cl:defclass FileEntry (<FileEntry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FileEntry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FileEntry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<FileEntry> is deprecated: use mavros_msgs-msg:FileEntry instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <FileEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:name-val is deprecated.  Use mavros_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <FileEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:type-val is deprecated.  Use mavros_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <FileEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:size-val is deprecated.  Use mavros_msgs-msg:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FileEntry>)))
    "Constants for message type '<FileEntry>"
  '((:TYPE_FILE . 0)
    (:TYPE_DIRECTORY . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FileEntry)))
    "Constants for message type 'FileEntry"
  '((:TYPE_FILE . 0)
    (:TYPE_DIRECTORY . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FileEntry>) ostream)
  "Serializes a message object of type '<FileEntry>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'size)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FileEntry>) istream)
  "Deserializes a message object of type '<FileEntry>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'size)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FileEntry>)))
  "Returns string type for a message object of type '<FileEntry>"
  "mavros_msgs/FileEntry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileEntry)))
  "Returns string type for a message object of type 'FileEntry"
  "mavros_msgs/FileEntry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FileEntry>)))
  "Returns md5sum for a message object of type '<FileEntry>"
  "5ed706bccb946c5b3a5087569cc53ac3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FileEntry)))
  "Returns md5sum for a message object of type 'FileEntry"
  "5ed706bccb946c5b3a5087569cc53ac3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FileEntry>)))
  "Returns full string definition for message of type '<FileEntry>"
  (cl:format cl:nil "# File/Dir information~%~%uint8 TYPE_FILE = 0~%uint8 TYPE_DIRECTORY = 1~%~%string name~%uint8 type~%uint64 size~%~%# Not supported by MAVLink FTP~%#time atime~%#int32 access_flags~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FileEntry)))
  "Returns full string definition for message of type 'FileEntry"
  (cl:format cl:nil "# File/Dir information~%~%uint8 TYPE_FILE = 0~%uint8 TYPE_DIRECTORY = 1~%~%string name~%uint8 type~%uint64 size~%~%# Not supported by MAVLink FTP~%#time atime~%#int32 access_flags~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FileEntry>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FileEntry>))
  "Converts a ROS message object to a list"
  (cl:list 'FileEntry
    (cl:cons ':name (name msg))
    (cl:cons ':type (type msg))
    (cl:cons ':size (size msg))
))
