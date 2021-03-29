; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude WaypointList.msg.html

(cl:defclass <WaypointList> (roslisp-msg-protocol:ros-message)
  ((current_seq
    :reader current_seq
    :initarg :current_seq
    :type cl:fixnum
    :initform 0)
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector mavros_msgs-msg:Waypoint)
   :initform (cl:make-array 0 :element-type 'mavros_msgs-msg:Waypoint :initial-element (cl:make-instance 'mavros_msgs-msg:Waypoint))))
)

(cl:defclass WaypointList (<WaypointList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<WaypointList> is deprecated: use mavros_msgs-msg:WaypointList instead.")))

(cl:ensure-generic-function 'current_seq-val :lambda-list '(m))
(cl:defmethod current_seq-val ((m <WaypointList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:current_seq-val is deprecated.  Use mavros_msgs-msg:current_seq instead.")
  (current_seq m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <WaypointList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:waypoints-val is deprecated.  Use mavros_msgs-msg:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointList>) ostream)
  "Serializes a message object of type '<WaypointList>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_seq)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointList>) istream)
  "Deserializes a message object of type '<WaypointList>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_seq)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mavros_msgs-msg:Waypoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointList>)))
  "Returns string type for a message object of type '<WaypointList>"
  "mavros_msgs/WaypointList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointList)))
  "Returns string type for a message object of type 'WaypointList"
  "mavros_msgs/WaypointList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointList>)))
  "Returns md5sum for a message object of type '<WaypointList>"
  "2cacdc0c2c212eb99fdee9f12d2e1fa4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointList)))
  "Returns md5sum for a message object of type 'WaypointList"
  "2cacdc0c2c212eb99fdee9f12d2e1fa4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointList>)))
  "Returns full string definition for message of type '<WaypointList>"
  (cl:format cl:nil "# WaypointList.msg~%#~%#  :current_seq:   seq nr of currently active waypoint~%#                  waypoints[current_seq].is_current == True~%#~%#  :waypoints:     list of waypoints~%~%uint16 current_seq~%mavros_msgs/Waypoint[] waypoints~%~%================================================================================~%MSG: mavros_msgs/Waypoint~%# Waypoint.msg~%#~%# ROS representation of MAVLink MISSION_ITEM~%# See mavlink documentation~%~%~%~%# see enum MAV_FRAME~%uint8 frame~%uint8 FRAME_GLOBAL = 0~%uint8 FRAME_LOCAL_NED = 1~%uint8 FRAME_MISSION = 2~%uint8 FRAME_GLOBAL_REL_ALT = 3~%uint8 FRAME_LOCAL_ENU = 4~%~%# see enum MAV_CMD and CommandCode.msg~%uint16 command~%~%bool is_current~%bool autocontinue~%# meaning of this params described in enum MAV_CMD~%float32 param1~%float32 param2~%float32 param3~%float32 param4~%float64 x_lat~%float64 y_long~%float64 z_alt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointList)))
  "Returns full string definition for message of type 'WaypointList"
  (cl:format cl:nil "# WaypointList.msg~%#~%#  :current_seq:   seq nr of currently active waypoint~%#                  waypoints[current_seq].is_current == True~%#~%#  :waypoints:     list of waypoints~%~%uint16 current_seq~%mavros_msgs/Waypoint[] waypoints~%~%================================================================================~%MSG: mavros_msgs/Waypoint~%# Waypoint.msg~%#~%# ROS representation of MAVLink MISSION_ITEM~%# See mavlink documentation~%~%~%~%# see enum MAV_FRAME~%uint8 frame~%uint8 FRAME_GLOBAL = 0~%uint8 FRAME_LOCAL_NED = 1~%uint8 FRAME_MISSION = 2~%uint8 FRAME_GLOBAL_REL_ALT = 3~%uint8 FRAME_LOCAL_ENU = 4~%~%# see enum MAV_CMD and CommandCode.msg~%uint16 command~%~%bool is_current~%bool autocontinue~%# meaning of this params described in enum MAV_CMD~%float32 param1~%float32 param2~%float32 param3~%float32 param4~%float64 x_lat~%float64 y_long~%float64 z_alt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointList>))
  (cl:+ 0
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointList>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointList
    (cl:cons ':current_seq (current_seq msg))
    (cl:cons ':waypoints (waypoints msg))
))
