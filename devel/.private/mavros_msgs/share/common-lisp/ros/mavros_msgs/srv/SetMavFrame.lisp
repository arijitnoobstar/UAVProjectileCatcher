; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude SetMavFrame-request.msg.html

(cl:defclass <SetMavFrame-request> (roslisp-msg-protocol:ros-message)
  ((mav_frame
    :reader mav_frame
    :initarg :mav_frame
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetMavFrame-request (<SetMavFrame-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMavFrame-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMavFrame-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<SetMavFrame-request> is deprecated: use mavros_msgs-srv:SetMavFrame-request instead.")))

(cl:ensure-generic-function 'mav_frame-val :lambda-list '(m))
(cl:defmethod mav_frame-val ((m <SetMavFrame-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:mav_frame-val is deprecated.  Use mavros_msgs-srv:mav_frame instead.")
  (mav_frame m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetMavFrame-request>)))
    "Constants for message type '<SetMavFrame-request>"
  '((:FRAME_GLOBAL . 0)
    (:FRAME_LOCAL_NED . 1)
    (:FRAME_MISSION . 2)
    (:FRAME_GLOBAL_RELATIVE_ALT . 3)
    (:FRAME_LOCAL_ENU . 4)
    (:FRAME_GLOBAL_INT . 5)
    (:FRAME_GLOBAL_RELATIVE_ALT_INT . 6)
    (:FRAME_LOCAL_OFFSET_NED . 7)
    (:FRAME_BODY_NED . 8)
    (:FRAME_BODY_OFFSET_NED . 9)
    (:FRAME_GLOBAL_TERRAIN_ALT . 10)
    (:FRAME_GLOBAL_TERRAIN_ALT_INT . 11)
    (:FRAME_BODY_FRD . 12)
    (:FRAME_BODY_FLU . 13)
    (:FRAME_MOCAP_NED . 14)
    (:FRAME_MOCAP_ENU . 15)
    (:FRAME_VISION_NED . 16)
    (:FRAME_VISION_ENU . 17)
    (:FRAME_ESTIM_NED . 18)
    (:FRAME_ESTIM_ENU . 19))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetMavFrame-request)))
    "Constants for message type 'SetMavFrame-request"
  '((:FRAME_GLOBAL . 0)
    (:FRAME_LOCAL_NED . 1)
    (:FRAME_MISSION . 2)
    (:FRAME_GLOBAL_RELATIVE_ALT . 3)
    (:FRAME_LOCAL_ENU . 4)
    (:FRAME_GLOBAL_INT . 5)
    (:FRAME_GLOBAL_RELATIVE_ALT_INT . 6)
    (:FRAME_LOCAL_OFFSET_NED . 7)
    (:FRAME_BODY_NED . 8)
    (:FRAME_BODY_OFFSET_NED . 9)
    (:FRAME_GLOBAL_TERRAIN_ALT . 10)
    (:FRAME_GLOBAL_TERRAIN_ALT_INT . 11)
    (:FRAME_BODY_FRD . 12)
    (:FRAME_BODY_FLU . 13)
    (:FRAME_MOCAP_NED . 14)
    (:FRAME_MOCAP_ENU . 15)
    (:FRAME_VISION_NED . 16)
    (:FRAME_VISION_ENU . 17)
    (:FRAME_ESTIM_NED . 18)
    (:FRAME_ESTIM_ENU . 19))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMavFrame-request>) ostream)
  "Serializes a message object of type '<SetMavFrame-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mav_frame)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMavFrame-request>) istream)
  "Deserializes a message object of type '<SetMavFrame-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mav_frame)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMavFrame-request>)))
  "Returns string type for a service object of type '<SetMavFrame-request>"
  "mavros_msgs/SetMavFrameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMavFrame-request)))
  "Returns string type for a service object of type 'SetMavFrame-request"
  "mavros_msgs/SetMavFrameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMavFrame-request>)))
  "Returns md5sum for a message object of type '<SetMavFrame-request>"
  "1d70e285b39e6f989f9ad19447c79649")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMavFrame-request)))
  "Returns md5sum for a message object of type 'SetMavFrame-request"
  "1d70e285b39e6f989f9ad19447c79649")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMavFrame-request>)))
  "Returns full string definition for message of type '<SetMavFrame-request>"
  (cl:format cl:nil "# Set MAV_FRAME for setpoints~%~%# [[[cog:~%# from pymavlink.dialects.v20 import common~%#~%# def decl_enum(ename, pfx='', bsz=8):~%#     enum = sorted(common.enums[ename].items())~%#     enum.pop() # remove ENUM_END~%#~%#     cog.outl(\"# \" + ename)~%#     for k, e in enum:~%#         sn = e.name[len(ename) + 1:]~%#         l = \"uint{bsz} {pfx}{sn} = {k}\".format(**locals())~%#         if e.description:~%#             l += ' ' * (40 - len(l)) + ' # ' + e.description~%#         cog.outl(l)~%#~%# decl_enum('MAV_FRAME', 'FRAME_')~%# ]]]~%# MAV_FRAME~%uint8 FRAME_GLOBAL = 0                   # Global (WGS84) coordinate frame + MSL altitude. First value / x: latitude, second value / y: longitude, third value / z: positive altitude over mean sea level (MSL).~%uint8 FRAME_LOCAL_NED = 1                # Local coordinate frame, Z-down (x: north, y: east, z: down).~%uint8 FRAME_MISSION = 2                  # NOT a coordinate frame, indicates a mission command.~%uint8 FRAME_GLOBAL_RELATIVE_ALT = 3      # Global (WGS84) coordinate frame + altitude relative to the home position. First value / x: latitude, second value / y: longitude, third value / z: positive altitude with 0 being at the altitude of the home location.~%uint8 FRAME_LOCAL_ENU = 4                # Local coordinate frame, Z-up (x: east, y: north, z: up).~%uint8 FRAME_GLOBAL_INT = 5               # Global (WGS84) coordinate frame (scaled) + MSL altitude. First value / x: latitude in degrees*1.0e-7, second value / y: longitude in degrees*1.0e-7, third value / z: positive altitude over mean sea level (MSL).~%uint8 FRAME_GLOBAL_RELATIVE_ALT_INT = 6  # Global (WGS84) coordinate frame (scaled) + altitude relative to the home position. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude with 0 being at the altitude of the home location.~%uint8 FRAME_LOCAL_OFFSET_NED = 7         # Offset to the current local frame. Anything expressed in this frame should be added to the current local frame position.~%uint8 FRAME_BODY_NED = 8                 # Setpoint in body NED frame. This makes sense if all position control is externalized - e.g. useful to command 2 m/s^2 acceleration to the right.~%uint8 FRAME_BODY_OFFSET_NED = 9          # Offset in body NED frame. This makes sense if adding setpoints to the current flight path, to avoid an obstacle - e.g. useful to command 2 m/s^2 acceleration to the east.~%uint8 FRAME_GLOBAL_TERRAIN_ALT = 10      # Global (WGS84) coordinate frame with AGL altitude (at the waypoint coordinate). First value / x: latitude in degrees, second value / y: longitude in degrees, third value / z: positive altitude in meters with 0 being at ground level in terrain model.~%uint8 FRAME_GLOBAL_TERRAIN_ALT_INT = 11  # Global (WGS84) coordinate frame (scaled) with AGL altitude (at the waypoint coordinate). First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude in meters with 0 being at ground level in terrain model.~%uint8 FRAME_BODY_FRD = 12                # Body fixed frame of reference, Z-down (x: forward, y: right, z: down).~%uint8 FRAME_BODY_FLU = 13                # Body fixed frame of reference, Z-up (x: forward, y: left, z: up).~%uint8 FRAME_MOCAP_NED = 14               # Odometry local coordinate frame of data given by a motion capture system, Z-down (x: north, y: east, z: down).~%uint8 FRAME_MOCAP_ENU = 15               # Odometry local coordinate frame of data given by a motion capture system, Z-up (x: east, y: north, z: up).~%uint8 FRAME_VISION_NED = 16              # Odometry local coordinate frame of data given by a vision estimation system, Z-down (x: north, y: east, z: down).~%uint8 FRAME_VISION_ENU = 17              # Odometry local coordinate frame of data given by a vision estimation system, Z-up (x: east, y: north, z: up).~%uint8 FRAME_ESTIM_NED = 18               # Odometry local coordinate frame of data given by an estimator running onboard the vehicle, Z-down (x: north, y: east, z: down).~%uint8 FRAME_ESTIM_ENU = 19               # Odometry local coordinate frame of data given by an estimator running onboard the vehicle, Z-up (x: east, y: noth, z: up).~%# [[[end]]] (checksum: 4fd94c3c9c8cf1e62b10bc7dc66e4692)~%~%uint8 mav_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMavFrame-request)))
  "Returns full string definition for message of type 'SetMavFrame-request"
  (cl:format cl:nil "# Set MAV_FRAME for setpoints~%~%# [[[cog:~%# from pymavlink.dialects.v20 import common~%#~%# def decl_enum(ename, pfx='', bsz=8):~%#     enum = sorted(common.enums[ename].items())~%#     enum.pop() # remove ENUM_END~%#~%#     cog.outl(\"# \" + ename)~%#     for k, e in enum:~%#         sn = e.name[len(ename) + 1:]~%#         l = \"uint{bsz} {pfx}{sn} = {k}\".format(**locals())~%#         if e.description:~%#             l += ' ' * (40 - len(l)) + ' # ' + e.description~%#         cog.outl(l)~%#~%# decl_enum('MAV_FRAME', 'FRAME_')~%# ]]]~%# MAV_FRAME~%uint8 FRAME_GLOBAL = 0                   # Global (WGS84) coordinate frame + MSL altitude. First value / x: latitude, second value / y: longitude, third value / z: positive altitude over mean sea level (MSL).~%uint8 FRAME_LOCAL_NED = 1                # Local coordinate frame, Z-down (x: north, y: east, z: down).~%uint8 FRAME_MISSION = 2                  # NOT a coordinate frame, indicates a mission command.~%uint8 FRAME_GLOBAL_RELATIVE_ALT = 3      # Global (WGS84) coordinate frame + altitude relative to the home position. First value / x: latitude, second value / y: longitude, third value / z: positive altitude with 0 being at the altitude of the home location.~%uint8 FRAME_LOCAL_ENU = 4                # Local coordinate frame, Z-up (x: east, y: north, z: up).~%uint8 FRAME_GLOBAL_INT = 5               # Global (WGS84) coordinate frame (scaled) + MSL altitude. First value / x: latitude in degrees*1.0e-7, second value / y: longitude in degrees*1.0e-7, third value / z: positive altitude over mean sea level (MSL).~%uint8 FRAME_GLOBAL_RELATIVE_ALT_INT = 6  # Global (WGS84) coordinate frame (scaled) + altitude relative to the home position. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude with 0 being at the altitude of the home location.~%uint8 FRAME_LOCAL_OFFSET_NED = 7         # Offset to the current local frame. Anything expressed in this frame should be added to the current local frame position.~%uint8 FRAME_BODY_NED = 8                 # Setpoint in body NED frame. This makes sense if all position control is externalized - e.g. useful to command 2 m/s^2 acceleration to the right.~%uint8 FRAME_BODY_OFFSET_NED = 9          # Offset in body NED frame. This makes sense if adding setpoints to the current flight path, to avoid an obstacle - e.g. useful to command 2 m/s^2 acceleration to the east.~%uint8 FRAME_GLOBAL_TERRAIN_ALT = 10      # Global (WGS84) coordinate frame with AGL altitude (at the waypoint coordinate). First value / x: latitude in degrees, second value / y: longitude in degrees, third value / z: positive altitude in meters with 0 being at ground level in terrain model.~%uint8 FRAME_GLOBAL_TERRAIN_ALT_INT = 11  # Global (WGS84) coordinate frame (scaled) with AGL altitude (at the waypoint coordinate). First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude in meters with 0 being at ground level in terrain model.~%uint8 FRAME_BODY_FRD = 12                # Body fixed frame of reference, Z-down (x: forward, y: right, z: down).~%uint8 FRAME_BODY_FLU = 13                # Body fixed frame of reference, Z-up (x: forward, y: left, z: up).~%uint8 FRAME_MOCAP_NED = 14               # Odometry local coordinate frame of data given by a motion capture system, Z-down (x: north, y: east, z: down).~%uint8 FRAME_MOCAP_ENU = 15               # Odometry local coordinate frame of data given by a motion capture system, Z-up (x: east, y: north, z: up).~%uint8 FRAME_VISION_NED = 16              # Odometry local coordinate frame of data given by a vision estimation system, Z-down (x: north, y: east, z: down).~%uint8 FRAME_VISION_ENU = 17              # Odometry local coordinate frame of data given by a vision estimation system, Z-up (x: east, y: north, z: up).~%uint8 FRAME_ESTIM_NED = 18               # Odometry local coordinate frame of data given by an estimator running onboard the vehicle, Z-down (x: north, y: east, z: down).~%uint8 FRAME_ESTIM_ENU = 19               # Odometry local coordinate frame of data given by an estimator running onboard the vehicle, Z-up (x: east, y: noth, z: up).~%# [[[end]]] (checksum: 4fd94c3c9c8cf1e62b10bc7dc66e4692)~%~%uint8 mav_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMavFrame-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMavFrame-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMavFrame-request
    (cl:cons ':mav_frame (mav_frame msg))
))
;//! \htmlinclude SetMavFrame-response.msg.html

(cl:defclass <SetMavFrame-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetMavFrame-response (<SetMavFrame-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMavFrame-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMavFrame-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<SetMavFrame-response> is deprecated: use mavros_msgs-srv:SetMavFrame-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetMavFrame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMavFrame-response>) ostream)
  "Serializes a message object of type '<SetMavFrame-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMavFrame-response>) istream)
  "Deserializes a message object of type '<SetMavFrame-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMavFrame-response>)))
  "Returns string type for a service object of type '<SetMavFrame-response>"
  "mavros_msgs/SetMavFrameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMavFrame-response)))
  "Returns string type for a service object of type 'SetMavFrame-response"
  "mavros_msgs/SetMavFrameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMavFrame-response>)))
  "Returns md5sum for a message object of type '<SetMavFrame-response>"
  "1d70e285b39e6f989f9ad19447c79649")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMavFrame-response)))
  "Returns md5sum for a message object of type 'SetMavFrame-response"
  "1d70e285b39e6f989f9ad19447c79649")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMavFrame-response>)))
  "Returns full string definition for message of type '<SetMavFrame-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMavFrame-response)))
  "Returns full string definition for message of type 'SetMavFrame-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMavFrame-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMavFrame-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMavFrame-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMavFrame)))
  'SetMavFrame-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMavFrame)))
  'SetMavFrame-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMavFrame)))
  "Returns string type for a service object of type '<SetMavFrame>"
  "mavros_msgs/SetMavFrame")