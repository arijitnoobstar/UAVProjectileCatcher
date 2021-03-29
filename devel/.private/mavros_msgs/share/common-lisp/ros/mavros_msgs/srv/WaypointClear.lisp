; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude WaypointClear-request.msg.html

(cl:defclass <WaypointClear-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass WaypointClear-request (<WaypointClear-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointClear-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointClear-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<WaypointClear-request> is deprecated: use mavros_msgs-srv:WaypointClear-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointClear-request>) ostream)
  "Serializes a message object of type '<WaypointClear-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointClear-request>) istream)
  "Deserializes a message object of type '<WaypointClear-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointClear-request>)))
  "Returns string type for a service object of type '<WaypointClear-request>"
  "mavros_msgs/WaypointClearRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointClear-request)))
  "Returns string type for a service object of type 'WaypointClear-request"
  "mavros_msgs/WaypointClearRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointClear-request>)))
  "Returns md5sum for a message object of type '<WaypointClear-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointClear-request)))
  "Returns md5sum for a message object of type 'WaypointClear-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointClear-request>)))
  "Returns full string definition for message of type '<WaypointClear-request>"
  (cl:format cl:nil "# Request clear waypoint~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointClear-request)))
  "Returns full string definition for message of type 'WaypointClear-request"
  (cl:format cl:nil "# Request clear waypoint~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointClear-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointClear-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointClear-request
))
;//! \htmlinclude WaypointClear-response.msg.html

(cl:defclass <WaypointClear-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WaypointClear-response (<WaypointClear-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointClear-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointClear-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<WaypointClear-response> is deprecated: use mavros_msgs-srv:WaypointClear-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <WaypointClear-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointClear-response>) ostream)
  "Serializes a message object of type '<WaypointClear-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointClear-response>) istream)
  "Deserializes a message object of type '<WaypointClear-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointClear-response>)))
  "Returns string type for a service object of type '<WaypointClear-response>"
  "mavros_msgs/WaypointClearResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointClear-response)))
  "Returns string type for a service object of type 'WaypointClear-response"
  "mavros_msgs/WaypointClearResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointClear-response>)))
  "Returns md5sum for a message object of type '<WaypointClear-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointClear-response)))
  "Returns md5sum for a message object of type 'WaypointClear-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointClear-response>)))
  "Returns full string definition for message of type '<WaypointClear-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointClear-response)))
  "Returns full string definition for message of type 'WaypointClear-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointClear-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointClear-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointClear-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WaypointClear)))
  'WaypointClear-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WaypointClear)))
  'WaypointClear-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointClear)))
  "Returns string type for a service object of type '<WaypointClear>"
  "mavros_msgs/WaypointClear")