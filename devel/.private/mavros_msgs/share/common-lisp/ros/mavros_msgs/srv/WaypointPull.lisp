; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude WaypointPull-request.msg.html

(cl:defclass <WaypointPull-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass WaypointPull-request (<WaypointPull-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointPull-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointPull-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<WaypointPull-request> is deprecated: use mavros_msgs-srv:WaypointPull-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointPull-request>) ostream)
  "Serializes a message object of type '<WaypointPull-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointPull-request>) istream)
  "Deserializes a message object of type '<WaypointPull-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointPull-request>)))
  "Returns string type for a service object of type '<WaypointPull-request>"
  "mavros_msgs/WaypointPullRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointPull-request)))
  "Returns string type for a service object of type 'WaypointPull-request"
  "mavros_msgs/WaypointPullRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointPull-request>)))
  "Returns md5sum for a message object of type '<WaypointPull-request>"
  "a8d9ecef8fb37028d2db2a9aa4ed7e79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointPull-request)))
  "Returns md5sum for a message object of type 'WaypointPull-request"
  "a8d9ecef8fb37028d2db2a9aa4ed7e79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointPull-request>)))
  "Returns full string definition for message of type '<WaypointPull-request>"
  (cl:format cl:nil "# Requests waypoints from device~%#~%# Returns success status and received count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointPull-request)))
  "Returns full string definition for message of type 'WaypointPull-request"
  (cl:format cl:nil "# Requests waypoints from device~%#~%# Returns success status and received count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointPull-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointPull-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointPull-request
))
;//! \htmlinclude WaypointPull-response.msg.html

(cl:defclass <WaypointPull-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (wp_received
    :reader wp_received
    :initarg :wp_received
    :type cl:integer
    :initform 0))
)

(cl:defclass WaypointPull-response (<WaypointPull-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointPull-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointPull-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<WaypointPull-response> is deprecated: use mavros_msgs-srv:WaypointPull-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <WaypointPull-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'wp_received-val :lambda-list '(m))
(cl:defmethod wp_received-val ((m <WaypointPull-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:wp_received-val is deprecated.  Use mavros_msgs-srv:wp_received instead.")
  (wp_received m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointPull-response>) ostream)
  "Serializes a message object of type '<WaypointPull-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wp_received)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wp_received)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'wp_received)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'wp_received)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointPull-response>) istream)
  "Deserializes a message object of type '<WaypointPull-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wp_received)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wp_received)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'wp_received)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'wp_received)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointPull-response>)))
  "Returns string type for a service object of type '<WaypointPull-response>"
  "mavros_msgs/WaypointPullResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointPull-response)))
  "Returns string type for a service object of type 'WaypointPull-response"
  "mavros_msgs/WaypointPullResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointPull-response>)))
  "Returns md5sum for a message object of type '<WaypointPull-response>"
  "a8d9ecef8fb37028d2db2a9aa4ed7e79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointPull-response)))
  "Returns md5sum for a message object of type 'WaypointPull-response"
  "a8d9ecef8fb37028d2db2a9aa4ed7e79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointPull-response>)))
  "Returns full string definition for message of type '<WaypointPull-response>"
  (cl:format cl:nil "bool success~%uint32 wp_received~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointPull-response)))
  "Returns full string definition for message of type 'WaypointPull-response"
  (cl:format cl:nil "bool success~%uint32 wp_received~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointPull-response>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointPull-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointPull-response
    (cl:cons ':success (success msg))
    (cl:cons ':wp_received (wp_received msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WaypointPull)))
  'WaypointPull-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WaypointPull)))
  'WaypointPull-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointPull)))
  "Returns string type for a service object of type '<WaypointPull>"
  "mavros_msgs/WaypointPull")