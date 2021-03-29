; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude Vibration.msg.html

(cl:defclass <Vibration> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vibration
    :reader vibration
    :initarg :vibration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (clipping
    :reader clipping
    :initarg :clipping
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Vibration (<Vibration>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vibration>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vibration)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<Vibration> is deprecated: use mavros_msgs-msg:Vibration instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Vibration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vibration-val :lambda-list '(m))
(cl:defmethod vibration-val ((m <Vibration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:vibration-val is deprecated.  Use mavros_msgs-msg:vibration instead.")
  (vibration m))

(cl:ensure-generic-function 'clipping-val :lambda-list '(m))
(cl:defmethod clipping-val ((m <Vibration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:clipping-val is deprecated.  Use mavros_msgs-msg:clipping instead.")
  (clipping m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vibration>) ostream)
  "Serializes a message object of type '<Vibration>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vibration) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'clipping))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vibration>) istream)
  "Deserializes a message object of type '<Vibration>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vibration) istream)
  (cl:setf (cl:slot-value msg 'clipping) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'clipping)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vibration>)))
  "Returns string type for a message object of type '<Vibration>"
  "mavros_msgs/Vibration")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vibration)))
  "Returns string type for a message object of type 'Vibration"
  "mavros_msgs/Vibration")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vibration>)))
  "Returns md5sum for a message object of type '<Vibration>"
  "eb92bf9b7aa735dfcd06b3ede5027d02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vibration)))
  "Returns md5sum for a message object of type 'Vibration"
  "eb92bf9b7aa735dfcd06b3ede5027d02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vibration>)))
  "Returns full string definition for message of type '<Vibration>"
  (cl:format cl:nil "# VIBRATION message data~%# @description: Vibration levels and accelerometer clipping~%~%std_msgs/Header header~%~%geometry_msgs/Vector3 vibration		# 3-axis vibration levels~%float32[3] clipping				# Accelerometers clipping~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vibration)))
  "Returns full string definition for message of type 'Vibration"
  (cl:format cl:nil "# VIBRATION message data~%# @description: Vibration levels and accelerometer clipping~%~%std_msgs/Header header~%~%geometry_msgs/Vector3 vibration		# 3-axis vibration levels~%float32[3] clipping				# Accelerometers clipping~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vibration>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vibration))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'clipping) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vibration>))
  "Converts a ROS message object to a list"
  (cl:list 'Vibration
    (cl:cons ':header (header msg))
    (cl:cons ':vibration (vibration msg))
    (cl:cons ':clipping (clipping msg))
))
