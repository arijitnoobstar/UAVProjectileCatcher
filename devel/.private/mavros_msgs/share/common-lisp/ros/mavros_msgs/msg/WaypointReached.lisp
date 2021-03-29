; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude WaypointReached.msg.html

(cl:defclass <WaypointReached> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (wp_seq
    :reader wp_seq
    :initarg :wp_seq
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WaypointReached (<WaypointReached>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointReached>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointReached)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<WaypointReached> is deprecated: use mavros_msgs-msg:WaypointReached instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WaypointReached>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'wp_seq-val :lambda-list '(m))
(cl:defmethod wp_seq-val ((m <WaypointReached>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:wp_seq-val is deprecated.  Use mavros_msgs-msg:wp_seq instead.")
  (wp_seq m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointReached>) ostream)
  "Serializes a message object of type '<WaypointReached>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wp_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wp_seq)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointReached>) istream)
  "Deserializes a message object of type '<WaypointReached>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wp_seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wp_seq)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointReached>)))
  "Returns string type for a message object of type '<WaypointReached>"
  "mavros_msgs/WaypointReached")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointReached)))
  "Returns string type for a message object of type 'WaypointReached"
  "mavros_msgs/WaypointReached")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointReached>)))
  "Returns md5sum for a message object of type '<WaypointReached>"
  "1cf64d072d9f6aa0a6715922bdde6a35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointReached)))
  "Returns md5sum for a message object of type 'WaypointReached"
  "1cf64d072d9f6aa0a6715922bdde6a35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointReached>)))
  "Returns full string definition for message of type '<WaypointReached>"
  (cl:format cl:nil "# That message represent MISSION_ITEM_REACHED~%#~%#   :wp_seq:    index number of reached waypoint~%~%Header header~%~%uint16 wp_seq~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointReached)))
  "Returns full string definition for message of type 'WaypointReached"
  (cl:format cl:nil "# That message represent MISSION_ITEM_REACHED~%#~%#   :wp_seq:    index number of reached waypoint~%~%Header header~%~%uint16 wp_seq~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointReached>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointReached>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointReached
    (cl:cons ':header (header msg))
    (cl:cons ':wp_seq (wp_seq msg))
))
