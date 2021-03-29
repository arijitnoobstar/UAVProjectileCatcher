; Auto-generated. Do not edit!


(cl:in-package mavros-msg)


;//! \htmlinclude haha.msg.html

(cl:defclass <haha> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0))
)

(cl:defclass haha (<haha>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <haha>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'haha)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros-msg:<haha> is deprecated: use mavros-msg:haha instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <haha>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros-msg:header-val is deprecated.  Use mavros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <haha>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros-msg:name-val is deprecated.  Use mavros-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <haha>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros-msg:age-val is deprecated.  Use mavros-msg:age instead.")
  (age m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <haha>) ostream)
  "Serializes a message object of type '<haha>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <haha>) istream)
  "Deserializes a message object of type '<haha>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<haha>)))
  "Returns string type for a message object of type '<haha>"
  "mavros/haha")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'haha)))
  "Returns string type for a message object of type 'haha"
  "mavros/haha")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<haha>)))
  "Returns md5sum for a message object of type '<haha>"
  "bba860c7eaaae760b8c809942cf1440d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'haha)))
  "Returns md5sum for a message object of type 'haha"
  "bba860c7eaaae760b8c809942cf1440d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<haha>)))
  "Returns full string definition for message of type '<haha>"
  (cl:format cl:nil "std_msgs/Header header~%~%string name~%uint8 age~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'haha)))
  "Returns full string definition for message of type 'haha"
  (cl:format cl:nil "std_msgs/Header header~%~%string name~%uint8 age~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <haha>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <haha>))
  "Converts a ROS message object to a list"
  (cl:list 'haha
    (cl:cons ':header (header msg))
    (cl:cons ':name (name msg))
    (cl:cons ':age (age msg))
))
