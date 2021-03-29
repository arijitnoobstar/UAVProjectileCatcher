; Auto-generated. Do not edit!


(cl:in-package hector_uav_msgs-srv)


;//! \htmlinclude EnableMotors-request.msg.html

(cl:defclass <EnableMotors-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EnableMotors-request (<EnableMotors-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnableMotors-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnableMotors-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_uav_msgs-srv:<EnableMotors-request> is deprecated: use hector_uav_msgs-srv:EnableMotors-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <EnableMotors-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_uav_msgs-srv:enable-val is deprecated.  Use hector_uav_msgs-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnableMotors-request>) ostream)
  "Serializes a message object of type '<EnableMotors-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnableMotors-request>) istream)
  "Deserializes a message object of type '<EnableMotors-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnableMotors-request>)))
  "Returns string type for a service object of type '<EnableMotors-request>"
  "hector_uav_msgs/EnableMotorsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableMotors-request)))
  "Returns string type for a service object of type 'EnableMotors-request"
  "hector_uav_msgs/EnableMotorsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnableMotors-request>)))
  "Returns md5sum for a message object of type '<EnableMotors-request>"
  "6a0b406242562fc416b2c9c8a3efb051")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnableMotors-request)))
  "Returns md5sum for a message object of type 'EnableMotors-request"
  "6a0b406242562fc416b2c9c8a3efb051")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnableMotors-request>)))
  "Returns full string definition for message of type '<EnableMotors-request>"
  (cl:format cl:nil "bool enable # enable or disable motors~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnableMotors-request)))
  "Returns full string definition for message of type 'EnableMotors-request"
  (cl:format cl:nil "bool enable # enable or disable motors~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnableMotors-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnableMotors-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EnableMotors-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude EnableMotors-response.msg.html

(cl:defclass <EnableMotors-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EnableMotors-response (<EnableMotors-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnableMotors-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnableMotors-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_uav_msgs-srv:<EnableMotors-response> is deprecated: use hector_uav_msgs-srv:EnableMotors-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <EnableMotors-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_uav_msgs-srv:success-val is deprecated.  Use hector_uav_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnableMotors-response>) ostream)
  "Serializes a message object of type '<EnableMotors-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnableMotors-response>) istream)
  "Deserializes a message object of type '<EnableMotors-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnableMotors-response>)))
  "Returns string type for a service object of type '<EnableMotors-response>"
  "hector_uav_msgs/EnableMotorsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableMotors-response)))
  "Returns string type for a service object of type 'EnableMotors-response"
  "hector_uav_msgs/EnableMotorsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnableMotors-response>)))
  "Returns md5sum for a message object of type '<EnableMotors-response>"
  "6a0b406242562fc416b2c9c8a3efb051")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnableMotors-response)))
  "Returns md5sum for a message object of type 'EnableMotors-response"
  "6a0b406242562fc416b2c9c8a3efb051")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnableMotors-response>)))
  "Returns full string definition for message of type '<EnableMotors-response>"
  (cl:format cl:nil "bool success # whether enabling or disabling was successful~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnableMotors-response)))
  "Returns full string definition for message of type 'EnableMotors-response"
  (cl:format cl:nil "bool success # whether enabling or disabling was successful~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnableMotors-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnableMotors-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EnableMotors-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EnableMotors)))
  'EnableMotors-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EnableMotors)))
  'EnableMotors-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableMotors)))
  "Returns string type for a service object of type '<EnableMotors>"
  "hector_uav_msgs/EnableMotors")