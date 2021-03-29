; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude ESCStatus.msg.html

(cl:defclass <ESCStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (esc_status
    :reader esc_status
    :initarg :esc_status
    :type (cl:vector mavros_msgs-msg:ESCStatusItem)
   :initform (cl:make-array 0 :element-type 'mavros_msgs-msg:ESCStatusItem :initial-element (cl:make-instance 'mavros_msgs-msg:ESCStatusItem))))
)

(cl:defclass ESCStatus (<ESCStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ESCStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ESCStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<ESCStatus> is deprecated: use mavros_msgs-msg:ESCStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ESCStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'esc_status-val :lambda-list '(m))
(cl:defmethod esc_status-val ((m <ESCStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:esc_status-val is deprecated.  Use mavros_msgs-msg:esc_status instead.")
  (esc_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ESCStatus>) ostream)
  "Serializes a message object of type '<ESCStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'esc_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'esc_status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ESCStatus>) istream)
  "Deserializes a message object of type '<ESCStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'esc_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'esc_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mavros_msgs-msg:ESCStatusItem))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ESCStatus>)))
  "Returns string type for a message object of type '<ESCStatus>"
  "mavros_msgs/ESCStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ESCStatus)))
  "Returns string type for a message object of type 'ESCStatus"
  "mavros_msgs/ESCStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ESCStatus>)))
  "Returns md5sum for a message object of type '<ESCStatus>"
  "145d49eaf5cfecbdfd50ae4a22fe82d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ESCStatus)))
  "Returns md5sum for a message object of type 'ESCStatus"
  "145d49eaf5cfecbdfd50ae4a22fe82d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ESCStatus>)))
  "Returns full string definition for message of type '<ESCStatus>"
  (cl:format cl:nil "# ESCStatus.msg~%#~%#~%# See mavlink message documentation here:~%# https://mavlink.io/en/messages/common.html#ESC_STATUS~%~%std_msgs/Header header~%~%mavros_msgs/ESCStatusItem[] esc_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mavros_msgs/ESCStatusItem~%# ESCStatusItem.msg~%#~%#~%# See mavlink message documentation here:~%# https://mavlink.io/en/messages/common.html#ESC_STATUS~%~%std_msgs/Header header~%~%int32 rpm~%float32 voltage~%float32 current~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ESCStatus)))
  "Returns full string definition for message of type 'ESCStatus"
  (cl:format cl:nil "# ESCStatus.msg~%#~%#~%# See mavlink message documentation here:~%# https://mavlink.io/en/messages/common.html#ESC_STATUS~%~%std_msgs/Header header~%~%mavros_msgs/ESCStatusItem[] esc_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mavros_msgs/ESCStatusItem~%# ESCStatusItem.msg~%#~%#~%# See mavlink message documentation here:~%# https://mavlink.io/en/messages/common.html#ESC_STATUS~%~%std_msgs/Header header~%~%int32 rpm~%float32 voltage~%float32 current~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ESCStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'esc_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ESCStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ESCStatus
    (cl:cons ':header (header msg))
    (cl:cons ':esc_status (esc_status msg))
))
