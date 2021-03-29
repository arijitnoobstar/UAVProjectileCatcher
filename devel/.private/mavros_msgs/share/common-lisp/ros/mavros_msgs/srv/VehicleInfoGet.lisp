; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude VehicleInfoGet-request.msg.html

(cl:defclass <VehicleInfoGet-request> (roslisp-msg-protocol:ros-message)
  ((sysid
    :reader sysid
    :initarg :sysid
    :type cl:fixnum
    :initform 0)
   (compid
    :reader compid
    :initarg :compid
    :type cl:fixnum
    :initform 0)
   (get_all
    :reader get_all
    :initarg :get_all
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VehicleInfoGet-request (<VehicleInfoGet-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleInfoGet-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleInfoGet-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<VehicleInfoGet-request> is deprecated: use mavros_msgs-srv:VehicleInfoGet-request instead.")))

(cl:ensure-generic-function 'sysid-val :lambda-list '(m))
(cl:defmethod sysid-val ((m <VehicleInfoGet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:sysid-val is deprecated.  Use mavros_msgs-srv:sysid instead.")
  (sysid m))

(cl:ensure-generic-function 'compid-val :lambda-list '(m))
(cl:defmethod compid-val ((m <VehicleInfoGet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:compid-val is deprecated.  Use mavros_msgs-srv:compid instead.")
  (compid m))

(cl:ensure-generic-function 'get_all-val :lambda-list '(m))
(cl:defmethod get_all-val ((m <VehicleInfoGet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:get_all-val is deprecated.  Use mavros_msgs-srv:get_all instead.")
  (get_all m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleInfoGet-request>)))
    "Constants for message type '<VehicleInfoGet-request>"
  '((:GET_MY_SYSID . 0)
    (:GET_MY_COMPID . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleInfoGet-request)))
    "Constants for message type 'VehicleInfoGet-request"
  '((:GET_MY_SYSID . 0)
    (:GET_MY_COMPID . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleInfoGet-request>) ostream)
  "Serializes a message object of type '<VehicleInfoGet-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sysid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'compid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'get_all) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleInfoGet-request>) istream)
  "Deserializes a message object of type '<VehicleInfoGet-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sysid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'compid)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'get_all) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleInfoGet-request>)))
  "Returns string type for a service object of type '<VehicleInfoGet-request>"
  "mavros_msgs/VehicleInfoGetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleInfoGet-request)))
  "Returns string type for a service object of type 'VehicleInfoGet-request"
  "mavros_msgs/VehicleInfoGetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleInfoGet-request>)))
  "Returns md5sum for a message object of type '<VehicleInfoGet-request>"
  "d85d85aa4f49fb3764201b7aeeb6cc2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleInfoGet-request)))
  "Returns md5sum for a message object of type 'VehicleInfoGet-request"
  "d85d85aa4f49fb3764201b7aeeb6cc2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleInfoGet-request>)))
  "Returns full string definition for message of type '<VehicleInfoGet-request>"
  (cl:format cl:nil "# Request the Vehicle Info~%# use this to request the current target sysid / compid defined in mavros~%# set get_all = True to request all available vehicles~%~%uint8 GET_MY_SYSID = 0~%uint8 GET_MY_COMPID = 0~%~%uint8 sysid~%uint8 compid~%bool get_all~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleInfoGet-request)))
  "Returns full string definition for message of type 'VehicleInfoGet-request"
  (cl:format cl:nil "# Request the Vehicle Info~%# use this to request the current target sysid / compid defined in mavros~%# set get_all = True to request all available vehicles~%~%uint8 GET_MY_SYSID = 0~%uint8 GET_MY_COMPID = 0~%~%uint8 sysid~%uint8 compid~%bool get_all~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleInfoGet-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleInfoGet-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleInfoGet-request
    (cl:cons ':sysid (sysid msg))
    (cl:cons ':compid (compid msg))
    (cl:cons ':get_all (get_all msg))
))
;//! \htmlinclude VehicleInfoGet-response.msg.html

(cl:defclass <VehicleInfoGet-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (vehicles
    :reader vehicles
    :initarg :vehicles
    :type (cl:vector mavros_msgs-msg:VehicleInfo)
   :initform (cl:make-array 0 :element-type 'mavros_msgs-msg:VehicleInfo :initial-element (cl:make-instance 'mavros_msgs-msg:VehicleInfo))))
)

(cl:defclass VehicleInfoGet-response (<VehicleInfoGet-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleInfoGet-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleInfoGet-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<VehicleInfoGet-response> is deprecated: use mavros_msgs-srv:VehicleInfoGet-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <VehicleInfoGet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'vehicles-val :lambda-list '(m))
(cl:defmethod vehicles-val ((m <VehicleInfoGet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:vehicles-val is deprecated.  Use mavros_msgs-srv:vehicles instead.")
  (vehicles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleInfoGet-response>) ostream)
  "Serializes a message object of type '<VehicleInfoGet-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vehicles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vehicles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleInfoGet-response>) istream)
  "Deserializes a message object of type '<VehicleInfoGet-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vehicles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vehicles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mavros_msgs-msg:VehicleInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleInfoGet-response>)))
  "Returns string type for a service object of type '<VehicleInfoGet-response>"
  "mavros_msgs/VehicleInfoGetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleInfoGet-response)))
  "Returns string type for a service object of type 'VehicleInfoGet-response"
  "mavros_msgs/VehicleInfoGetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleInfoGet-response>)))
  "Returns md5sum for a message object of type '<VehicleInfoGet-response>"
  "d85d85aa4f49fb3764201b7aeeb6cc2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleInfoGet-response)))
  "Returns md5sum for a message object of type 'VehicleInfoGet-response"
  "d85d85aa4f49fb3764201b7aeeb6cc2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleInfoGet-response>)))
  "Returns full string definition for message of type '<VehicleInfoGet-response>"
  (cl:format cl:nil "bool success~%mavros_msgs/VehicleInfo[] vehicles~%~%~%~%================================================================================~%MSG: mavros_msgs/VehicleInfo~%# Vehicle Info msg~%~%std_msgs/Header header~%~%uint8 HAVE_INFO_HEARTBEAT = 1~%uint8 HAVE_INFO_AUTOPILOT_VERSION = 2~%uint8 available_info		# Bitmap shows what info is available~%~%# Vehicle address~%uint8 sysid                     # SYSTEM ID~%uint8 compid                    # COMPONENT ID~%~%# -*- Heartbeat info -*-~%uint8 autopilot                 # MAV_AUTOPILOT~%uint8 type                      # MAV_TYPE~%uint8 system_status             # MAV_STATE~%uint8 base_mode~%uint32 custom_mode~%string mode                     # MAV_MODE string~%uint32 mode_id                  # MAV_MODE number~%~%# -*- Autopilot version -*-~%uint64 capabilities             # MAV_PROTOCOL_CAPABILITY~%uint32 flight_sw_version        # Firmware version number~%uint32 middleware_sw_version    # Middleware version number~%uint32 os_sw_version            # Operating system version number~%uint32 board_version            # HW / board version (last 8 bytes should be silicon ID, if any)~%string flight_custom_version    # Custom version field, commonly from the first 8 bytes of the git hash~%uint16 vendor_id                # ID of the board vendor~%uint16 product_id               # ID of the product~%uint64 uid                      # UID if provided by hardware~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleInfoGet-response)))
  "Returns full string definition for message of type 'VehicleInfoGet-response"
  (cl:format cl:nil "bool success~%mavros_msgs/VehicleInfo[] vehicles~%~%~%~%================================================================================~%MSG: mavros_msgs/VehicleInfo~%# Vehicle Info msg~%~%std_msgs/Header header~%~%uint8 HAVE_INFO_HEARTBEAT = 1~%uint8 HAVE_INFO_AUTOPILOT_VERSION = 2~%uint8 available_info		# Bitmap shows what info is available~%~%# Vehicle address~%uint8 sysid                     # SYSTEM ID~%uint8 compid                    # COMPONENT ID~%~%# -*- Heartbeat info -*-~%uint8 autopilot                 # MAV_AUTOPILOT~%uint8 type                      # MAV_TYPE~%uint8 system_status             # MAV_STATE~%uint8 base_mode~%uint32 custom_mode~%string mode                     # MAV_MODE string~%uint32 mode_id                  # MAV_MODE number~%~%# -*- Autopilot version -*-~%uint64 capabilities             # MAV_PROTOCOL_CAPABILITY~%uint32 flight_sw_version        # Firmware version number~%uint32 middleware_sw_version    # Middleware version number~%uint32 os_sw_version            # Operating system version number~%uint32 board_version            # HW / board version (last 8 bytes should be silicon ID, if any)~%string flight_custom_version    # Custom version field, commonly from the first 8 bytes of the git hash~%uint16 vendor_id                # ID of the board vendor~%uint16 product_id               # ID of the product~%uint64 uid                      # UID if provided by hardware~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleInfoGet-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vehicles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleInfoGet-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleInfoGet-response
    (cl:cons ':success (success msg))
    (cl:cons ':vehicles (vehicles msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VehicleInfoGet)))
  'VehicleInfoGet-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VehicleInfoGet)))
  'VehicleInfoGet-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleInfoGet)))
  "Returns string type for a service object of type '<VehicleInfoGet>"
  "mavros_msgs/VehicleInfoGet")