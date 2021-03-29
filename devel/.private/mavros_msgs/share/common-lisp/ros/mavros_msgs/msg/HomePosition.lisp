; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude HomePosition.msg.html

(cl:defclass <HomePosition> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (geo
    :reader geo
    :initarg :geo
    :type geographic_msgs-msg:GeoPoint
    :initform (cl:make-instance 'geographic_msgs-msg:GeoPoint))
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (approach
    :reader approach
    :initarg :approach
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass HomePosition (<HomePosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HomePosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HomePosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<HomePosition> is deprecated: use mavros_msgs-msg:HomePosition instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HomePosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'geo-val :lambda-list '(m))
(cl:defmethod geo-val ((m <HomePosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:geo-val is deprecated.  Use mavros_msgs-msg:geo instead.")
  (geo m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <HomePosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:position-val is deprecated.  Use mavros_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <HomePosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:orientation-val is deprecated.  Use mavros_msgs-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'approach-val :lambda-list '(m))
(cl:defmethod approach-val ((m <HomePosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:approach-val is deprecated.  Use mavros_msgs-msg:approach instead.")
  (approach m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HomePosition>) ostream)
  "Serializes a message object of type '<HomePosition>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'geo) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'approach) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HomePosition>) istream)
  "Deserializes a message object of type '<HomePosition>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'geo) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'approach) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HomePosition>)))
  "Returns string type for a message object of type '<HomePosition>"
  "mavros_msgs/HomePosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HomePosition)))
  "Returns string type for a message object of type 'HomePosition"
  "mavros_msgs/HomePosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HomePosition>)))
  "Returns md5sum for a message object of type '<HomePosition>"
  "c1167922de8c97acdb0ec714c1dba774")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HomePosition)))
  "Returns md5sum for a message object of type 'HomePosition"
  "c1167922de8c97acdb0ec714c1dba774")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HomePosition>)))
  "Returns full string definition for message of type '<HomePosition>"
  (cl:format cl:nil "# MAVLink message: HOME_POSITION~%# https://mavlink.io/en/messages/common.html#HOME_POSITION~%~%std_msgs/Header header~%~%geographic_msgs/GeoPoint geo # geodetic coordinates in WGS-84 datum~%~%geometry_msgs/Point position	# local position~%geometry_msgs/Quaternion orientation	# XXX: verify field name (q[4])~%geometry_msgs/Vector3 approach	# position of the end of approach vector~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HomePosition)))
  "Returns full string definition for message of type 'HomePosition"
  (cl:format cl:nil "# MAVLink message: HOME_POSITION~%# https://mavlink.io/en/messages/common.html#HOME_POSITION~%~%std_msgs/Header header~%~%geographic_msgs/GeoPoint geo # geodetic coordinates in WGS-84 datum~%~%geometry_msgs/Point position	# local position~%geometry_msgs/Quaternion orientation	# XXX: verify field name (q[4])~%geometry_msgs/Vector3 approach	# position of the end of approach vector~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HomePosition>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'geo))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'approach))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HomePosition>))
  "Converts a ROS message object to a list"
  (cl:list 'HomePosition
    (cl:cons ':header (header msg))
    (cl:cons ':geo (geo msg))
    (cl:cons ':position (position msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':approach (approach msg))
))
