; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude OverrideRCIn.msg.html

(cl:defclass <OverrideRCIn> (roslisp-msg-protocol:ros-message)
  ((channels
    :reader channels
    :initarg :channels
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 8 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass OverrideRCIn (<OverrideRCIn>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OverrideRCIn>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OverrideRCIn)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<OverrideRCIn> is deprecated: use mavros_msgs-msg:OverrideRCIn instead.")))

(cl:ensure-generic-function 'channels-val :lambda-list '(m))
(cl:defmethod channels-val ((m <OverrideRCIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:channels-val is deprecated.  Use mavros_msgs-msg:channels instead.")
  (channels m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OverrideRCIn>)))
    "Constants for message type '<OverrideRCIn>"
  '((:CHAN_RELEASE . 0)
    (:CHAN_NOCHANGE . 65535))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OverrideRCIn)))
    "Constants for message type 'OverrideRCIn"
  '((:CHAN_RELEASE . 0)
    (:CHAN_NOCHANGE . 65535))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OverrideRCIn>) ostream)
  "Serializes a message object of type '<OverrideRCIn>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'channels))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OverrideRCIn>) istream)
  "Deserializes a message object of type '<OverrideRCIn>"
  (cl:setf (cl:slot-value msg 'channels) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'channels)))
    (cl:dotimes (i 8)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OverrideRCIn>)))
  "Returns string type for a message object of type '<OverrideRCIn>"
  "mavros_msgs/OverrideRCIn")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OverrideRCIn)))
  "Returns string type for a message object of type 'OverrideRCIn"
  "mavros_msgs/OverrideRCIn")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OverrideRCIn>)))
  "Returns md5sum for a message object of type '<OverrideRCIn>"
  "73b27a463a40a3eda1f9fbb1fc86d6f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OverrideRCIn)))
  "Returns md5sum for a message object of type 'OverrideRCIn"
  "73b27a463a40a3eda1f9fbb1fc86d6f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OverrideRCIn>)))
  "Returns full string definition for message of type '<OverrideRCIn>"
  (cl:format cl:nil "# Override RC Input~%# Currently MAVLink defines override for 8 channel~%~%uint16 CHAN_RELEASE=0~%uint16 CHAN_NOCHANGE=65535~%~%uint16[8] channels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OverrideRCIn)))
  "Returns full string definition for message of type 'OverrideRCIn"
  (cl:format cl:nil "# Override RC Input~%# Currently MAVLink defines override for 8 channel~%~%uint16 CHAN_RELEASE=0~%uint16 CHAN_NOCHANGE=65535~%~%uint16[8] channels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OverrideRCIn>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'channels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OverrideRCIn>))
  "Converts a ROS message object to a list"
  (cl:list 'OverrideRCIn
    (cl:cons ':channels (channels msg))
))
