; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude EstimatorStatus.msg.html

(cl:defclass <EstimatorStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (attitude_status_flag
    :reader attitude_status_flag
    :initarg :attitude_status_flag
    :type cl:boolean
    :initform cl:nil)
   (velocity_horiz_status_flag
    :reader velocity_horiz_status_flag
    :initarg :velocity_horiz_status_flag
    :type cl:boolean
    :initform cl:nil)
   (velocity_vert_status_flag
    :reader velocity_vert_status_flag
    :initarg :velocity_vert_status_flag
    :type cl:boolean
    :initform cl:nil)
   (pos_horiz_rel_status_flag
    :reader pos_horiz_rel_status_flag
    :initarg :pos_horiz_rel_status_flag
    :type cl:boolean
    :initform cl:nil)
   (pos_horiz_abs_status_flag
    :reader pos_horiz_abs_status_flag
    :initarg :pos_horiz_abs_status_flag
    :type cl:boolean
    :initform cl:nil)
   (pos_vert_abs_status_flag
    :reader pos_vert_abs_status_flag
    :initarg :pos_vert_abs_status_flag
    :type cl:boolean
    :initform cl:nil)
   (pos_vert_agl_status_flag
    :reader pos_vert_agl_status_flag
    :initarg :pos_vert_agl_status_flag
    :type cl:boolean
    :initform cl:nil)
   (const_pos_mode_status_flag
    :reader const_pos_mode_status_flag
    :initarg :const_pos_mode_status_flag
    :type cl:boolean
    :initform cl:nil)
   (pred_pos_horiz_rel_status_flag
    :reader pred_pos_horiz_rel_status_flag
    :initarg :pred_pos_horiz_rel_status_flag
    :type cl:boolean
    :initform cl:nil)
   (pred_pos_horiz_abs_status_flag
    :reader pred_pos_horiz_abs_status_flag
    :initarg :pred_pos_horiz_abs_status_flag
    :type cl:boolean
    :initform cl:nil)
   (gps_glitch_status_flag
    :reader gps_glitch_status_flag
    :initarg :gps_glitch_status_flag
    :type cl:boolean
    :initform cl:nil)
   (accel_error_status_flag
    :reader accel_error_status_flag
    :initarg :accel_error_status_flag
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EstimatorStatus (<EstimatorStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EstimatorStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EstimatorStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<EstimatorStatus> is deprecated: use mavros_msgs-msg:EstimatorStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <EstimatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'attitude_status_flag-val :lambda-list '(m))
(cl:defmethod attitude_status_flag-val ((m <EstimatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:attitude_status_flag-val is deprecated.  Use mavros_msgs-msg:attitude_status_flag instead.")
  (attitude_status_flag m))

(cl:ensure-generic-function 'velocity_horiz_status_flag-val :lambda-list '(m))
(cl:defmethod velocity_horiz_status_flag-val ((m <EstimatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:velocity_horiz_status_flag-val is deprecated.  Use mavros_msgs-msg:velocity_horiz_status_flag instead.")
  (velocity_horiz_status_flag m))

(cl:ensure-generic-function 'velocity_vert_status_flag-val :lambda-list '(m))
(cl:defmethod velocity_vert_status_flag-val ((m <EstimatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:velocity_vert_status_flag-val is deprecated.  Use mavros_msgs-msg:velocity_vert_status_flag instead.")
  (velocity_vert_status_flag m))

(cl:ensure-generic-function 'pos_horiz_rel_status_flag-val :lambda-list '(m))
(cl:defmethod pos_horiz_rel_status_flag-val ((m <EstimatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:pos_horiz_rel_status_flag-val is deprecated.  Use mavros_msgs-msg:pos_horiz_rel_status_flag instead.")
  (pos_horiz_rel_status_flag m))

(cl:ensure-generic-function 'pos_horiz_abs_status_flag-val :lambda-list '(m))
(cl:defmethod pos_horiz_abs_status_flag-val ((m <EstimatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:pos_horiz_abs_status_flag-val is deprecated.  Use mavros_msgs-msg:pos_horiz_abs_status_flag instead.")
  (pos_horiz_abs_status_flag m))

(cl:ensure-generic-function 'pos_vert_abs_status_flag-val :lambda-list '(m))
(cl:defmethod pos_vert_abs_status_flag-val ((m <EstimatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:pos_vert_abs_status_flag-val is deprecated.  Use mavros_msgs-msg:pos_vert_abs_status_flag instead.")
  (pos_vert_abs_status_flag m))

(cl:ensure-generic-function 'pos_vert_agl_status_flag-val :lambda-list '(m))
(cl:defmethod pos_vert_agl_status_flag-val ((m <EstimatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:pos_vert_agl_status_flag-val is deprecated.  Use mavros_msgs-msg:pos_vert_agl_status_flag instead.")
  (pos_vert_agl_status_flag m))

(cl:ensure-generic-function 'const_pos_mode_status_flag-val :lambda-list '(m))
(cl:defmethod const_pos_mode_status_flag-val ((m <EstimatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:const_pos_mode_status_flag-val is deprecated.  Use mavros_msgs-msg:const_pos_mode_status_flag instead.")
  (const_pos_mode_status_flag m))

(cl:ensure-generic-function 'pred_pos_horiz_rel_status_flag-val :lambda-list '(m))
(cl:defmethod pred_pos_horiz_rel_status_flag-val ((m <EstimatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:pred_pos_horiz_rel_status_flag-val is deprecated.  Use mavros_msgs-msg:pred_pos_horiz_rel_status_flag instead.")
  (pred_pos_horiz_rel_status_flag m))

(cl:ensure-generic-function 'pred_pos_horiz_abs_status_flag-val :lambda-list '(m))
(cl:defmethod pred_pos_horiz_abs_status_flag-val ((m <EstimatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:pred_pos_horiz_abs_status_flag-val is deprecated.  Use mavros_msgs-msg:pred_pos_horiz_abs_status_flag instead.")
  (pred_pos_horiz_abs_status_flag m))

(cl:ensure-generic-function 'gps_glitch_status_flag-val :lambda-list '(m))
(cl:defmethod gps_glitch_status_flag-val ((m <EstimatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:gps_glitch_status_flag-val is deprecated.  Use mavros_msgs-msg:gps_glitch_status_flag instead.")
  (gps_glitch_status_flag m))

(cl:ensure-generic-function 'accel_error_status_flag-val :lambda-list '(m))
(cl:defmethod accel_error_status_flag-val ((m <EstimatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:accel_error_status_flag-val is deprecated.  Use mavros_msgs-msg:accel_error_status_flag instead.")
  (accel_error_status_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EstimatorStatus>) ostream)
  "Serializes a message object of type '<EstimatorStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'attitude_status_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'velocity_horiz_status_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'velocity_vert_status_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pos_horiz_rel_status_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pos_horiz_abs_status_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pos_vert_abs_status_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pos_vert_agl_status_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'const_pos_mode_status_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pred_pos_horiz_rel_status_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pred_pos_horiz_abs_status_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps_glitch_status_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'accel_error_status_flag) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EstimatorStatus>) istream)
  "Deserializes a message object of type '<EstimatorStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'attitude_status_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'velocity_horiz_status_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'velocity_vert_status_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pos_horiz_rel_status_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pos_horiz_abs_status_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pos_vert_abs_status_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pos_vert_agl_status_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'const_pos_mode_status_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pred_pos_horiz_rel_status_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pred_pos_horiz_abs_status_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gps_glitch_status_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'accel_error_status_flag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EstimatorStatus>)))
  "Returns string type for a message object of type '<EstimatorStatus>"
  "mavros_msgs/EstimatorStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EstimatorStatus)))
  "Returns string type for a message object of type 'EstimatorStatus"
  "mavros_msgs/EstimatorStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EstimatorStatus>)))
  "Returns md5sum for a message object of type '<EstimatorStatus>"
  "39dbcc4be3f04b68422f784827c47dd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EstimatorStatus)))
  "Returns md5sum for a message object of type 'EstimatorStatus"
  "39dbcc4be3f04b68422f784827c47dd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EstimatorStatus>)))
  "Returns full string definition for message of type '<EstimatorStatus>"
  (cl:format cl:nil "# Current autopilot estimator state~%#~%# https://mavlink.io/en/messages/common.html#ESTIMATOR_STATUS_FLAGS~%~%std_msgs/Header header~%bool attitude_status_flag~%~%bool velocity_horiz_status_flag~%bool velocity_vert_status_flag~%~%bool pos_horiz_rel_status_flag~%bool pos_horiz_abs_status_flag~%~%bool pos_vert_abs_status_flag~%bool pos_vert_agl_status_flag~%~%bool const_pos_mode_status_flag~%~%bool pred_pos_horiz_rel_status_flag~%bool pred_pos_horiz_abs_status_flag~%~%bool gps_glitch_status_flag~%bool accel_error_status_flag~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EstimatorStatus)))
  "Returns full string definition for message of type 'EstimatorStatus"
  (cl:format cl:nil "# Current autopilot estimator state~%#~%# https://mavlink.io/en/messages/common.html#ESTIMATOR_STATUS_FLAGS~%~%std_msgs/Header header~%bool attitude_status_flag~%~%bool velocity_horiz_status_flag~%bool velocity_vert_status_flag~%~%bool pos_horiz_rel_status_flag~%bool pos_horiz_abs_status_flag~%~%bool pos_vert_abs_status_flag~%bool pos_vert_agl_status_flag~%~%bool const_pos_mode_status_flag~%~%bool pred_pos_horiz_rel_status_flag~%bool pred_pos_horiz_abs_status_flag~%~%bool gps_glitch_status_flag~%bool accel_error_status_flag~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EstimatorStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EstimatorStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'EstimatorStatus
    (cl:cons ':header (header msg))
    (cl:cons ':attitude_status_flag (attitude_status_flag msg))
    (cl:cons ':velocity_horiz_status_flag (velocity_horiz_status_flag msg))
    (cl:cons ':velocity_vert_status_flag (velocity_vert_status_flag msg))
    (cl:cons ':pos_horiz_rel_status_flag (pos_horiz_rel_status_flag msg))
    (cl:cons ':pos_horiz_abs_status_flag (pos_horiz_abs_status_flag msg))
    (cl:cons ':pos_vert_abs_status_flag (pos_vert_abs_status_flag msg))
    (cl:cons ':pos_vert_agl_status_flag (pos_vert_agl_status_flag msg))
    (cl:cons ':const_pos_mode_status_flag (const_pos_mode_status_flag msg))
    (cl:cons ':pred_pos_horiz_rel_status_flag (pred_pos_horiz_rel_status_flag msg))
    (cl:cons ':pred_pos_horiz_abs_status_flag (pred_pos_horiz_abs_status_flag msg))
    (cl:cons ':gps_glitch_status_flag (gps_glitch_status_flag msg))
    (cl:cons ':accel_error_status_flag (accel_error_status_flag msg))
))
