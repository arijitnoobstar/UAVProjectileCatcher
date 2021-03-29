; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude PlayTuneV2.msg.html

(cl:defclass <PlayTuneV2> (roslisp-msg-protocol:ros-message)
  ((format
    :reader format
    :initarg :format
    :type cl:fixnum
    :initform 0)
   (tune
    :reader tune
    :initarg :tune
    :type cl:string
    :initform ""))
)

(cl:defclass PlayTuneV2 (<PlayTuneV2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlayTuneV2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlayTuneV2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<PlayTuneV2> is deprecated: use mavros_msgs-msg:PlayTuneV2 instead.")))

(cl:ensure-generic-function 'format-val :lambda-list '(m))
(cl:defmethod format-val ((m <PlayTuneV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:format-val is deprecated.  Use mavros_msgs-msg:format instead.")
  (format m))

(cl:ensure-generic-function 'tune-val :lambda-list '(m))
(cl:defmethod tune-val ((m <PlayTuneV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:tune-val is deprecated.  Use mavros_msgs-msg:tune instead.")
  (tune m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PlayTuneV2>)))
    "Constants for message type '<PlayTuneV2>"
  '((:QBASIC1_1 . 1)
    (:MML_MODERN . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PlayTuneV2)))
    "Constants for message type 'PlayTuneV2"
  '((:QBASIC1_1 . 1)
    (:MML_MODERN . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlayTuneV2>) ostream)
  "Serializes a message object of type '<PlayTuneV2>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'format)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tune))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tune))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlayTuneV2>) istream)
  "Deserializes a message object of type '<PlayTuneV2>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'format)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tune) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tune) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlayTuneV2>)))
  "Returns string type for a message object of type '<PlayTuneV2>"
  "mavros_msgs/PlayTuneV2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlayTuneV2)))
  "Returns string type for a message object of type 'PlayTuneV2"
  "mavros_msgs/PlayTuneV2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlayTuneV2>)))
  "Returns md5sum for a message object of type '<PlayTuneV2>"
  "177f99ce3572342a75a8b5cdefc8286e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlayTuneV2)))
  "Returns md5sum for a message object of type 'PlayTuneV2"
  "177f99ce3572342a75a8b5cdefc8286e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlayTuneV2>)))
  "Returns full string definition for message of type '<PlayTuneV2>"
  (cl:format cl:nil "# Play tune V2~%#~%# https://mavlink.io/en/messages/common.html#PLAY_TUNE_V2~%~%## TUNE_FORMAT enum~%uint8 QBASIC1_1 = 1~%uint8 MML_MODERN = 2~%~%uint8 format~%string tune~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlayTuneV2)))
  "Returns full string definition for message of type 'PlayTuneV2"
  (cl:format cl:nil "# Play tune V2~%#~%# https://mavlink.io/en/messages/common.html#PLAY_TUNE_V2~%~%## TUNE_FORMAT enum~%uint8 QBASIC1_1 = 1~%uint8 MML_MODERN = 2~%~%uint8 format~%string tune~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlayTuneV2>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'tune))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlayTuneV2>))
  "Converts a ROS message object to a list"
  (cl:list 'PlayTuneV2
    (cl:cons ':format (format msg))
    (cl:cons ':tune (tune msg))
))
