; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude VehicleInfo.msg.html

(cl:defclass <VehicleInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (available_info
    :reader available_info
    :initarg :available_info
    :type cl:fixnum
    :initform 0)
   (sysid
    :reader sysid
    :initarg :sysid
    :type cl:fixnum
    :initform 0)
   (compid
    :reader compid
    :initarg :compid
    :type cl:fixnum
    :initform 0)
   (autopilot
    :reader autopilot
    :initarg :autopilot
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (system_status
    :reader system_status
    :initarg :system_status
    :type cl:fixnum
    :initform 0)
   (base_mode
    :reader base_mode
    :initarg :base_mode
    :type cl:fixnum
    :initform 0)
   (custom_mode
    :reader custom_mode
    :initarg :custom_mode
    :type cl:integer
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (mode_id
    :reader mode_id
    :initarg :mode_id
    :type cl:integer
    :initform 0)
   (capabilities
    :reader capabilities
    :initarg :capabilities
    :type cl:integer
    :initform 0)
   (flight_sw_version
    :reader flight_sw_version
    :initarg :flight_sw_version
    :type cl:integer
    :initform 0)
   (middleware_sw_version
    :reader middleware_sw_version
    :initarg :middleware_sw_version
    :type cl:integer
    :initform 0)
   (os_sw_version
    :reader os_sw_version
    :initarg :os_sw_version
    :type cl:integer
    :initform 0)
   (board_version
    :reader board_version
    :initarg :board_version
    :type cl:integer
    :initform 0)
   (flight_custom_version
    :reader flight_custom_version
    :initarg :flight_custom_version
    :type cl:string
    :initform "")
   (vendor_id
    :reader vendor_id
    :initarg :vendor_id
    :type cl:fixnum
    :initform 0)
   (product_id
    :reader product_id
    :initarg :product_id
    :type cl:fixnum
    :initform 0)
   (uid
    :reader uid
    :initarg :uid
    :type cl:integer
    :initform 0))
)

(cl:defclass VehicleInfo (<VehicleInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<VehicleInfo> is deprecated: use mavros_msgs-msg:VehicleInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'available_info-val :lambda-list '(m))
(cl:defmethod available_info-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:available_info-val is deprecated.  Use mavros_msgs-msg:available_info instead.")
  (available_info m))

(cl:ensure-generic-function 'sysid-val :lambda-list '(m))
(cl:defmethod sysid-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:sysid-val is deprecated.  Use mavros_msgs-msg:sysid instead.")
  (sysid m))

(cl:ensure-generic-function 'compid-val :lambda-list '(m))
(cl:defmethod compid-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:compid-val is deprecated.  Use mavros_msgs-msg:compid instead.")
  (compid m))

(cl:ensure-generic-function 'autopilot-val :lambda-list '(m))
(cl:defmethod autopilot-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:autopilot-val is deprecated.  Use mavros_msgs-msg:autopilot instead.")
  (autopilot m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:type-val is deprecated.  Use mavros_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'system_status-val :lambda-list '(m))
(cl:defmethod system_status-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:system_status-val is deprecated.  Use mavros_msgs-msg:system_status instead.")
  (system_status m))

(cl:ensure-generic-function 'base_mode-val :lambda-list '(m))
(cl:defmethod base_mode-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:base_mode-val is deprecated.  Use mavros_msgs-msg:base_mode instead.")
  (base_mode m))

(cl:ensure-generic-function 'custom_mode-val :lambda-list '(m))
(cl:defmethod custom_mode-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:custom_mode-val is deprecated.  Use mavros_msgs-msg:custom_mode instead.")
  (custom_mode m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:mode-val is deprecated.  Use mavros_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'mode_id-val :lambda-list '(m))
(cl:defmethod mode_id-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:mode_id-val is deprecated.  Use mavros_msgs-msg:mode_id instead.")
  (mode_id m))

(cl:ensure-generic-function 'capabilities-val :lambda-list '(m))
(cl:defmethod capabilities-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:capabilities-val is deprecated.  Use mavros_msgs-msg:capabilities instead.")
  (capabilities m))

(cl:ensure-generic-function 'flight_sw_version-val :lambda-list '(m))
(cl:defmethod flight_sw_version-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:flight_sw_version-val is deprecated.  Use mavros_msgs-msg:flight_sw_version instead.")
  (flight_sw_version m))

(cl:ensure-generic-function 'middleware_sw_version-val :lambda-list '(m))
(cl:defmethod middleware_sw_version-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:middleware_sw_version-val is deprecated.  Use mavros_msgs-msg:middleware_sw_version instead.")
  (middleware_sw_version m))

(cl:ensure-generic-function 'os_sw_version-val :lambda-list '(m))
(cl:defmethod os_sw_version-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:os_sw_version-val is deprecated.  Use mavros_msgs-msg:os_sw_version instead.")
  (os_sw_version m))

(cl:ensure-generic-function 'board_version-val :lambda-list '(m))
(cl:defmethod board_version-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:board_version-val is deprecated.  Use mavros_msgs-msg:board_version instead.")
  (board_version m))

(cl:ensure-generic-function 'flight_custom_version-val :lambda-list '(m))
(cl:defmethod flight_custom_version-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:flight_custom_version-val is deprecated.  Use mavros_msgs-msg:flight_custom_version instead.")
  (flight_custom_version m))

(cl:ensure-generic-function 'vendor_id-val :lambda-list '(m))
(cl:defmethod vendor_id-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:vendor_id-val is deprecated.  Use mavros_msgs-msg:vendor_id instead.")
  (vendor_id m))

(cl:ensure-generic-function 'product_id-val :lambda-list '(m))
(cl:defmethod product_id-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:product_id-val is deprecated.  Use mavros_msgs-msg:product_id instead.")
  (product_id m))

(cl:ensure-generic-function 'uid-val :lambda-list '(m))
(cl:defmethod uid-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:uid-val is deprecated.  Use mavros_msgs-msg:uid instead.")
  (uid m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleInfo>)))
    "Constants for message type '<VehicleInfo>"
  '((:HAVE_INFO_HEARTBEAT . 1)
    (:HAVE_INFO_AUTOPILOT_VERSION . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleInfo)))
    "Constants for message type 'VehicleInfo"
  '((:HAVE_INFO_HEARTBEAT . 1)
    (:HAVE_INFO_AUTOPILOT_VERSION . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleInfo>) ostream)
  "Serializes a message object of type '<VehicleInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available_info)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sysid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'compid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'autopilot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'base_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'custom_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'custom_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'custom_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'custom_mode)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mode_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mode_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mode_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'capabilities)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'capabilities)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'capabilities)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'capabilities)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'capabilities)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'capabilities)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'capabilities)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'capabilities)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flight_sw_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flight_sw_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flight_sw_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flight_sw_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'middleware_sw_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'middleware_sw_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'middleware_sw_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'middleware_sw_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'os_sw_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'os_sw_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'os_sw_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'os_sw_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'board_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'board_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'board_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'board_version)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'flight_custom_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'flight_custom_version))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vendor_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vendor_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'product_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'product_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'uid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'uid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'uid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'uid)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleInfo>) istream)
  "Deserializes a message object of type '<VehicleInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available_info)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sysid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'compid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'autopilot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'base_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'custom_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'custom_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'custom_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'custom_mode)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mode_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mode_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mode_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'capabilities)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'capabilities)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'capabilities)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'capabilities)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'capabilities)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'capabilities)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'capabilities)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'capabilities)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flight_sw_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flight_sw_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flight_sw_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flight_sw_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'middleware_sw_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'middleware_sw_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'middleware_sw_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'middleware_sw_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'os_sw_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'os_sw_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'os_sw_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'os_sw_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'board_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'board_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'board_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'board_version)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flight_custom_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'flight_custom_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vendor_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vendor_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'product_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'product_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'uid)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleInfo>)))
  "Returns string type for a message object of type '<VehicleInfo>"
  "mavros_msgs/VehicleInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleInfo)))
  "Returns string type for a message object of type 'VehicleInfo"
  "mavros_msgs/VehicleInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleInfo>)))
  "Returns md5sum for a message object of type '<VehicleInfo>"
  "9afa55616f5936bd9469d7d85c523ac1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleInfo)))
  "Returns md5sum for a message object of type 'VehicleInfo"
  "9afa55616f5936bd9469d7d85c523ac1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleInfo>)))
  "Returns full string definition for message of type '<VehicleInfo>"
  (cl:format cl:nil "# Vehicle Info msg~%~%std_msgs/Header header~%~%uint8 HAVE_INFO_HEARTBEAT = 1~%uint8 HAVE_INFO_AUTOPILOT_VERSION = 2~%uint8 available_info		# Bitmap shows what info is available~%~%# Vehicle address~%uint8 sysid                     # SYSTEM ID~%uint8 compid                    # COMPONENT ID~%~%# -*- Heartbeat info -*-~%uint8 autopilot                 # MAV_AUTOPILOT~%uint8 type                      # MAV_TYPE~%uint8 system_status             # MAV_STATE~%uint8 base_mode~%uint32 custom_mode~%string mode                     # MAV_MODE string~%uint32 mode_id                  # MAV_MODE number~%~%# -*- Autopilot version -*-~%uint64 capabilities             # MAV_PROTOCOL_CAPABILITY~%uint32 flight_sw_version        # Firmware version number~%uint32 middleware_sw_version    # Middleware version number~%uint32 os_sw_version            # Operating system version number~%uint32 board_version            # HW / board version (last 8 bytes should be silicon ID, if any)~%string flight_custom_version    # Custom version field, commonly from the first 8 bytes of the git hash~%uint16 vendor_id                # ID of the board vendor~%uint16 product_id               # ID of the product~%uint64 uid                      # UID if provided by hardware~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleInfo)))
  "Returns full string definition for message of type 'VehicleInfo"
  (cl:format cl:nil "# Vehicle Info msg~%~%std_msgs/Header header~%~%uint8 HAVE_INFO_HEARTBEAT = 1~%uint8 HAVE_INFO_AUTOPILOT_VERSION = 2~%uint8 available_info		# Bitmap shows what info is available~%~%# Vehicle address~%uint8 sysid                     # SYSTEM ID~%uint8 compid                    # COMPONENT ID~%~%# -*- Heartbeat info -*-~%uint8 autopilot                 # MAV_AUTOPILOT~%uint8 type                      # MAV_TYPE~%uint8 system_status             # MAV_STATE~%uint8 base_mode~%uint32 custom_mode~%string mode                     # MAV_MODE string~%uint32 mode_id                  # MAV_MODE number~%~%# -*- Autopilot version -*-~%uint64 capabilities             # MAV_PROTOCOL_CAPABILITY~%uint32 flight_sw_version        # Firmware version number~%uint32 middleware_sw_version    # Middleware version number~%uint32 os_sw_version            # Operating system version number~%uint32 board_version            # HW / board version (last 8 bytes should be silicon ID, if any)~%string flight_custom_version    # Custom version field, commonly from the first 8 bytes of the git hash~%uint16 vendor_id                # ID of the board vendor~%uint16 product_id               # ID of the product~%uint64 uid                      # UID if provided by hardware~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     4
     4 (cl:length (cl:slot-value msg 'mode))
     4
     8
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'flight_custom_version))
     2
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleInfo
    (cl:cons ':header (header msg))
    (cl:cons ':available_info (available_info msg))
    (cl:cons ':sysid (sysid msg))
    (cl:cons ':compid (compid msg))
    (cl:cons ':autopilot (autopilot msg))
    (cl:cons ':type (type msg))
    (cl:cons ':system_status (system_status msg))
    (cl:cons ':base_mode (base_mode msg))
    (cl:cons ':custom_mode (custom_mode msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':mode_id (mode_id msg))
    (cl:cons ':capabilities (capabilities msg))
    (cl:cons ':flight_sw_version (flight_sw_version msg))
    (cl:cons ':middleware_sw_version (middleware_sw_version msg))
    (cl:cons ':os_sw_version (os_sw_version msg))
    (cl:cons ':board_version (board_version msg))
    (cl:cons ':flight_custom_version (flight_custom_version msg))
    (cl:cons ':vendor_id (vendor_id msg))
    (cl:cons ':product_id (product_id msg))
    (cl:cons ':uid (uid msg))
))
