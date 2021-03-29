; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude WaypointSetCurrent-request.msg.html

(cl:defclass <WaypointSetCurrent-request> (roslisp-msg-protocol:ros-message)
  ((wp_seq
    :reader wp_seq
    :initarg :wp_seq
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WaypointSetCurrent-request (<WaypointSetCurrent-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointSetCurrent-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointSetCurrent-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<WaypointSetCurrent-request> is deprecated: use mavros_msgs-srv:WaypointSetCurrent-request instead.")))

(cl:ensure-generic-function 'wp_seq-val :lambda-list '(m))
(cl:defmethod wp_seq-val ((m <WaypointSetCurrent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:wp_seq-val is deprecated.  Use mavros_msgs-srv:wp_seq instead.")
  (wp_seq m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointSetCurrent-request>) ostream)
  "Serializes a message object of type '<WaypointSetCurrent-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wp_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wp_seq)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointSetCurrent-request>) istream)
  "Deserializes a message object of type '<WaypointSetCurrent-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wp_seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wp_seq)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointSetCurrent-request>)))
  "Returns string type for a service object of type '<WaypointSetCurrent-request>"
  "mavros_msgs/WaypointSetCurrentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointSetCurrent-request)))
  "Returns string type for a service object of type 'WaypointSetCurrent-request"
  "mavros_msgs/WaypointSetCurrentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointSetCurrent-request>)))
  "Returns md5sum for a message object of type '<WaypointSetCurrent-request>"
  "f99aa1a911a80ab546ea470f4e90c807")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointSetCurrent-request)))
  "Returns md5sum for a message object of type 'WaypointSetCurrent-request"
  "f99aa1a911a80ab546ea470f4e90c807")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointSetCurrent-request>)))
  "Returns full string definition for message of type '<WaypointSetCurrent-request>"
  (cl:format cl:nil "# Request set current waypoint~%#~%# wp_seq - index in waypoint array~%~%uint16 wp_seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointSetCurrent-request)))
  "Returns full string definition for message of type 'WaypointSetCurrent-request"
  (cl:format cl:nil "# Request set current waypoint~%#~%# wp_seq - index in waypoint array~%~%uint16 wp_seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointSetCurrent-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointSetCurrent-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointSetCurrent-request
    (cl:cons ':wp_seq (wp_seq msg))
))
;//! \htmlinclude WaypointSetCurrent-response.msg.html

(cl:defclass <WaypointSetCurrent-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WaypointSetCurrent-response (<WaypointSetCurrent-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointSetCurrent-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointSetCurrent-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<WaypointSetCurrent-response> is deprecated: use mavros_msgs-srv:WaypointSetCurrent-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <WaypointSetCurrent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointSetCurrent-response>) ostream)
  "Serializes a message object of type '<WaypointSetCurrent-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointSetCurrent-response>) istream)
  "Deserializes a message object of type '<WaypointSetCurrent-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointSetCurrent-response>)))
  "Returns string type for a service object of type '<WaypointSetCurrent-response>"
  "mavros_msgs/WaypointSetCurrentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointSetCurrent-response)))
  "Returns string type for a service object of type 'WaypointSetCurrent-response"
  "mavros_msgs/WaypointSetCurrentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointSetCurrent-response>)))
  "Returns md5sum for a message object of type '<WaypointSetCurrent-response>"
  "f99aa1a911a80ab546ea470f4e90c807")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointSetCurrent-response)))
  "Returns md5sum for a message object of type 'WaypointSetCurrent-response"
  "f99aa1a911a80ab546ea470f4e90c807")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointSetCurrent-response>)))
  "Returns full string definition for message of type '<WaypointSetCurrent-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointSetCurrent-response)))
  "Returns full string definition for message of type 'WaypointSetCurrent-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointSetCurrent-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointSetCurrent-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointSetCurrent-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WaypointSetCurrent)))
  'WaypointSetCurrent-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WaypointSetCurrent)))
  'WaypointSetCurrent-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointSetCurrent)))
  "Returns string type for a service object of type '<WaypointSetCurrent>"
  "mavros_msgs/WaypointSetCurrent")