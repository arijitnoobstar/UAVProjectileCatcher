; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude StreamRate-request.msg.html

(cl:defclass <StreamRate-request> (roslisp-msg-protocol:ros-message)
  ((stream_id
    :reader stream_id
    :initarg :stream_id
    :type cl:fixnum
    :initform 0)
   (message_rate
    :reader message_rate
    :initarg :message_rate
    :type cl:fixnum
    :initform 0)
   (on_off
    :reader on_off
    :initarg :on_off
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StreamRate-request (<StreamRate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StreamRate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StreamRate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<StreamRate-request> is deprecated: use mavros_msgs-srv:StreamRate-request instead.")))

(cl:ensure-generic-function 'stream_id-val :lambda-list '(m))
(cl:defmethod stream_id-val ((m <StreamRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:stream_id-val is deprecated.  Use mavros_msgs-srv:stream_id instead.")
  (stream_id m))

(cl:ensure-generic-function 'message_rate-val :lambda-list '(m))
(cl:defmethod message_rate-val ((m <StreamRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:message_rate-val is deprecated.  Use mavros_msgs-srv:message_rate instead.")
  (message_rate m))

(cl:ensure-generic-function 'on_off-val :lambda-list '(m))
(cl:defmethod on_off-val ((m <StreamRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:on_off-val is deprecated.  Use mavros_msgs-srv:on_off instead.")
  (on_off m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StreamRate-request>)))
    "Constants for message type '<StreamRate-request>"
  '((:STREAM_ALL . 0)
    (:STREAM_RAW_SENSORS . 1)
    (:STREAM_EXTENDED_STATUS . 2)
    (:STREAM_RC_CHANNELS . 3)
    (:STREAM_RAW_CONTROLLER . 4)
    (:STREAM_POSITION . 6)
    (:STREAM_EXTRA1 . 10)
    (:STREAM_EXTRA2 . 11)
    (:STREAM_EXTRA3 . 12))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StreamRate-request)))
    "Constants for message type 'StreamRate-request"
  '((:STREAM_ALL . 0)
    (:STREAM_RAW_SENSORS . 1)
    (:STREAM_EXTENDED_STATUS . 2)
    (:STREAM_RC_CHANNELS . 3)
    (:STREAM_RAW_CONTROLLER . 4)
    (:STREAM_POSITION . 6)
    (:STREAM_EXTRA1 . 10)
    (:STREAM_EXTRA2 . 11)
    (:STREAM_EXTRA3 . 12))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StreamRate-request>) ostream)
  "Serializes a message object of type '<StreamRate-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stream_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_rate)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'message_rate)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'on_off) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StreamRate-request>) istream)
  "Deserializes a message object of type '<StreamRate-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stream_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_rate)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'message_rate)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'on_off) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StreamRate-request>)))
  "Returns string type for a service object of type '<StreamRate-request>"
  "mavros_msgs/StreamRateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StreamRate-request)))
  "Returns string type for a service object of type 'StreamRate-request"
  "mavros_msgs/StreamRateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StreamRate-request>)))
  "Returns md5sum for a message object of type '<StreamRate-request>"
  "d12f7661724c8ba25f67ba597bb7d039")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StreamRate-request)))
  "Returns md5sum for a message object of type 'StreamRate-request"
  "d12f7661724c8ba25f67ba597bb7d039")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StreamRate-request>)))
  "Returns full string definition for message of type '<StreamRate-request>"
  (cl:format cl:nil "# sets stream rate~%# See REQUEST_DATA_STREAM message~%~%uint8 STREAM_ALL = 0~%uint8 STREAM_RAW_SENSORS = 1~%uint8 STREAM_EXTENDED_STATUS = 2~%uint8 STREAM_RC_CHANNELS = 3~%uint8 STREAM_RAW_CONTROLLER = 4~%uint8 STREAM_POSITION = 6~%uint8 STREAM_EXTRA1 = 10~%uint8 STREAM_EXTRA2 = 11~%uint8 STREAM_EXTRA3 = 12~%~%uint8 stream_id~%uint16 message_rate~%bool on_off~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StreamRate-request)))
  "Returns full string definition for message of type 'StreamRate-request"
  (cl:format cl:nil "# sets stream rate~%# See REQUEST_DATA_STREAM message~%~%uint8 STREAM_ALL = 0~%uint8 STREAM_RAW_SENSORS = 1~%uint8 STREAM_EXTENDED_STATUS = 2~%uint8 STREAM_RC_CHANNELS = 3~%uint8 STREAM_RAW_CONTROLLER = 4~%uint8 STREAM_POSITION = 6~%uint8 STREAM_EXTRA1 = 10~%uint8 STREAM_EXTRA2 = 11~%uint8 STREAM_EXTRA3 = 12~%~%uint8 stream_id~%uint16 message_rate~%bool on_off~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StreamRate-request>))
  (cl:+ 0
     1
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StreamRate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StreamRate-request
    (cl:cons ':stream_id (stream_id msg))
    (cl:cons ':message_rate (message_rate msg))
    (cl:cons ':on_off (on_off msg))
))
;//! \htmlinclude StreamRate-response.msg.html

(cl:defclass <StreamRate-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StreamRate-response (<StreamRate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StreamRate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StreamRate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<StreamRate-response> is deprecated: use mavros_msgs-srv:StreamRate-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StreamRate-response>) ostream)
  "Serializes a message object of type '<StreamRate-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StreamRate-response>) istream)
  "Deserializes a message object of type '<StreamRate-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StreamRate-response>)))
  "Returns string type for a service object of type '<StreamRate-response>"
  "mavros_msgs/StreamRateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StreamRate-response)))
  "Returns string type for a service object of type 'StreamRate-response"
  "mavros_msgs/StreamRateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StreamRate-response>)))
  "Returns md5sum for a message object of type '<StreamRate-response>"
  "d12f7661724c8ba25f67ba597bb7d039")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StreamRate-response)))
  "Returns md5sum for a message object of type 'StreamRate-response"
  "d12f7661724c8ba25f67ba597bb7d039")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StreamRate-response>)))
  "Returns full string definition for message of type '<StreamRate-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StreamRate-response)))
  "Returns full string definition for message of type 'StreamRate-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StreamRate-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StreamRate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StreamRate-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StreamRate)))
  'StreamRate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StreamRate)))
  'StreamRate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StreamRate)))
  "Returns string type for a service object of type '<StreamRate>"
  "mavros_msgs/StreamRate")