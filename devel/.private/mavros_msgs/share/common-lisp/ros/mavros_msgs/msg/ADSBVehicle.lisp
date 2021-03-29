; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude ADSBVehicle.msg.html

(cl:defclass <ADSBVehicle> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ICAO_address
    :reader ICAO_address
    :initarg :ICAO_address
    :type cl:integer
    :initform 0)
   (callsign
    :reader callsign
    :initarg :callsign
    :type cl:string
    :initform "")
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (hor_velocity
    :reader hor_velocity
    :initarg :hor_velocity
    :type cl:float
    :initform 0.0)
   (ver_velocity
    :reader ver_velocity
    :initarg :ver_velocity
    :type cl:float
    :initform 0.0)
   (altitude_type
    :reader altitude_type
    :initarg :altitude_type
    :type cl:fixnum
    :initform 0)
   (emitter_type
    :reader emitter_type
    :initarg :emitter_type
    :type cl:fixnum
    :initform 0)
   (tslc
    :reader tslc
    :initarg :tslc
    :type cl:real
    :initform 0)
   (flags
    :reader flags
    :initarg :flags
    :type cl:fixnum
    :initform 0)
   (squawk
    :reader squawk
    :initarg :squawk
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ADSBVehicle (<ADSBVehicle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADSBVehicle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADSBVehicle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<ADSBVehicle> is deprecated: use mavros_msgs-msg:ADSBVehicle instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ADSBVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ICAO_address-val :lambda-list '(m))
(cl:defmethod ICAO_address-val ((m <ADSBVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:ICAO_address-val is deprecated.  Use mavros_msgs-msg:ICAO_address instead.")
  (ICAO_address m))

(cl:ensure-generic-function 'callsign-val :lambda-list '(m))
(cl:defmethod callsign-val ((m <ADSBVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:callsign-val is deprecated.  Use mavros_msgs-msg:callsign instead.")
  (callsign m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <ADSBVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:latitude-val is deprecated.  Use mavros_msgs-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <ADSBVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:longitude-val is deprecated.  Use mavros_msgs-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <ADSBVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:altitude-val is deprecated.  Use mavros_msgs-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <ADSBVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:heading-val is deprecated.  Use mavros_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'hor_velocity-val :lambda-list '(m))
(cl:defmethod hor_velocity-val ((m <ADSBVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:hor_velocity-val is deprecated.  Use mavros_msgs-msg:hor_velocity instead.")
  (hor_velocity m))

(cl:ensure-generic-function 'ver_velocity-val :lambda-list '(m))
(cl:defmethod ver_velocity-val ((m <ADSBVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:ver_velocity-val is deprecated.  Use mavros_msgs-msg:ver_velocity instead.")
  (ver_velocity m))

(cl:ensure-generic-function 'altitude_type-val :lambda-list '(m))
(cl:defmethod altitude_type-val ((m <ADSBVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:altitude_type-val is deprecated.  Use mavros_msgs-msg:altitude_type instead.")
  (altitude_type m))

(cl:ensure-generic-function 'emitter_type-val :lambda-list '(m))
(cl:defmethod emitter_type-val ((m <ADSBVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:emitter_type-val is deprecated.  Use mavros_msgs-msg:emitter_type instead.")
  (emitter_type m))

(cl:ensure-generic-function 'tslc-val :lambda-list '(m))
(cl:defmethod tslc-val ((m <ADSBVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:tslc-val is deprecated.  Use mavros_msgs-msg:tslc instead.")
  (tslc m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <ADSBVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:flags-val is deprecated.  Use mavros_msgs-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'squawk-val :lambda-list '(m))
(cl:defmethod squawk-val ((m <ADSBVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:squawk-val is deprecated.  Use mavros_msgs-msg:squawk instead.")
  (squawk m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ADSBVehicle>)))
    "Constants for message type '<ADSBVehicle>"
  '((:ALT_PRESSURE_QNH . 0)
    (:ALT_GEOMETRIC . 1)
    (:EMITTER_NO_INFO . 0)
    (:EMITTER_LIGHT . 1)
    (:EMITTER_SMALL . 2)
    (:EMITTER_LARGE . 3)
    (:EMITTER_HIGH_VORTEX_LARGE . 4)
    (:EMITTER_HEAVY . 5)
    (:EMITTER_HIGHLY_MANUV . 6)
    (:EMITTER_ROTOCRAFT . 7)
    (:EMITTER_UNASSIGNED . 8)
    (:EMITTER_GLIDER . 9)
    (:EMITTER_LIGHTER_AIR . 10)
    (:EMITTER_PARACHUTE . 11)
    (:EMITTER_ULTRA_LIGHT . 12)
    (:EMITTER_UNASSIGNED2 . 13)
    (:EMITTER_UAV . 14)
    (:EMITTER_SPACE . 15)
    (:EMITTER_UNASSGINED3 . 16)
    (:EMITTER_EMERGENCY_SURFACE . 17)
    (:EMITTER_SERVICE_SURFACE . 18)
    (:EMITTER_POINT_OBSTACLE . 19)
    (:FLAG_VALID_COORDS . 1)
    (:FLAG_VALID_ALTITUDE . 2)
    (:FLAG_VALID_HEADING . 4)
    (:FLAG_VALID_VELOCITY . 8)
    (:FLAG_VALID_CALLSIGN . 16)
    (:FLAG_VALID_SQUAWK . 32)
    (:FLAG_SIMULATED . 64))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ADSBVehicle)))
    "Constants for message type 'ADSBVehicle"
  '((:ALT_PRESSURE_QNH . 0)
    (:ALT_GEOMETRIC . 1)
    (:EMITTER_NO_INFO . 0)
    (:EMITTER_LIGHT . 1)
    (:EMITTER_SMALL . 2)
    (:EMITTER_LARGE . 3)
    (:EMITTER_HIGH_VORTEX_LARGE . 4)
    (:EMITTER_HEAVY . 5)
    (:EMITTER_HIGHLY_MANUV . 6)
    (:EMITTER_ROTOCRAFT . 7)
    (:EMITTER_UNASSIGNED . 8)
    (:EMITTER_GLIDER . 9)
    (:EMITTER_LIGHTER_AIR . 10)
    (:EMITTER_PARACHUTE . 11)
    (:EMITTER_ULTRA_LIGHT . 12)
    (:EMITTER_UNASSIGNED2 . 13)
    (:EMITTER_UAV . 14)
    (:EMITTER_SPACE . 15)
    (:EMITTER_UNASSGINED3 . 16)
    (:EMITTER_EMERGENCY_SURFACE . 17)
    (:EMITTER_SERVICE_SURFACE . 18)
    (:EMITTER_POINT_OBSTACLE . 19)
    (:FLAG_VALID_COORDS . 1)
    (:FLAG_VALID_ALTITUDE . 2)
    (:FLAG_VALID_HEADING . 4)
    (:FLAG_VALID_VELOCITY . 8)
    (:FLAG_VALID_CALLSIGN . 16)
    (:FLAG_VALID_SQUAWK . 32)
    (:FLAG_SIMULATED . 64))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADSBVehicle>) ostream)
  "Serializes a message object of type '<ADSBVehicle>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ICAO_address)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ICAO_address)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ICAO_address)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ICAO_address)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'callsign))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'callsign))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hor_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ver_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'altitude_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emitter_type)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'tslc)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'tslc) (cl:floor (cl:slot-value msg 'tslc)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'squawk)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'squawk)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADSBVehicle>) istream)
  "Deserializes a message object of type '<ADSBVehicle>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ICAO_address)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ICAO_address)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ICAO_address)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ICAO_address)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'callsign) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'callsign) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hor_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ver_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'altitude_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emitter_type)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tslc) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'squawk)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'squawk)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADSBVehicle>)))
  "Returns string type for a message object of type '<ADSBVehicle>"
  "mavros_msgs/ADSBVehicle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADSBVehicle)))
  "Returns string type for a message object of type 'ADSBVehicle"
  "mavros_msgs/ADSBVehicle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADSBVehicle>)))
  "Returns md5sum for a message object of type '<ADSBVehicle>"
  "f71cc75a8e9e7b77d92f98d9a5315fd1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADSBVehicle)))
  "Returns md5sum for a message object of type 'ADSBVehicle"
  "f71cc75a8e9e7b77d92f98d9a5315fd1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADSBVehicle>)))
  "Returns full string definition for message of type '<ADSBVehicle>"
  (cl:format cl:nil "# The location and information of an ADSB vehicle~%#~%# https://mavlink.io/en/messages/common.html#ADSB_VEHICLE~%~%# [[[cog:~%# from pymavlink.dialects.v20 import common~%#~%# def decl_enum(ename, pfx='', bsz=8):~%#     enum = sorted(common.enums[ename].items())~%#     enum.pop() # remove ENUM_END~%#~%#     cog.outl(\"# \" + ename)~%#     for k, e in enum:~%#         sn = e.name[len(ename) + 1:]~%#         l = \"uint{bsz} {pfx}{sn} = {k}\".format(**locals())~%#         if e.description:~%#             l += ' ' * (40 - len(l)) + ' # ' + e.description~%#         cog.outl(l)~%#~%# decl_enum('ADSB_ALTITUDE_TYPE', 'ALT_')~%# decl_enum('ADSB_EMITTER_TYPE', 'EMITTER_')~%# decl_enum('ADSB_FLAGS', 'FLAG_', 16)~%# ]]]~%# ADSB_ALTITUDE_TYPE~%uint8 ALT_PRESSURE_QNH = 0               # Altitude reported from a Baro source using QNH reference~%uint8 ALT_GEOMETRIC = 1                  # Altitude reported from a GNSS source~%# ADSB_EMITTER_TYPE~%uint8 EMITTER_NO_INFO = 0~%uint8 EMITTER_LIGHT = 1~%uint8 EMITTER_SMALL = 2~%uint8 EMITTER_LARGE = 3~%uint8 EMITTER_HIGH_VORTEX_LARGE = 4~%uint8 EMITTER_HEAVY = 5~%uint8 EMITTER_HIGHLY_MANUV = 6~%uint8 EMITTER_ROTOCRAFT = 7~%uint8 EMITTER_UNASSIGNED = 8~%uint8 EMITTER_GLIDER = 9~%uint8 EMITTER_LIGHTER_AIR = 10~%uint8 EMITTER_PARACHUTE = 11~%uint8 EMITTER_ULTRA_LIGHT = 12~%uint8 EMITTER_UNASSIGNED2 = 13~%uint8 EMITTER_UAV = 14~%uint8 EMITTER_SPACE = 15~%uint8 EMITTER_UNASSGINED3 = 16~%uint8 EMITTER_EMERGENCY_SURFACE = 17~%uint8 EMITTER_SERVICE_SURFACE = 18~%uint8 EMITTER_POINT_OBSTACLE = 19~%# ADSB_FLAGS~%uint16 FLAG_VALID_COORDS = 1~%uint16 FLAG_VALID_ALTITUDE = 2~%uint16 FLAG_VALID_HEADING = 4~%uint16 FLAG_VALID_VELOCITY = 8~%uint16 FLAG_VALID_CALLSIGN = 16~%uint16 FLAG_VALID_SQUAWK = 32~%uint16 FLAG_SIMULATED = 64~%# [[[end]]] (checksum: e35e77be43548bd572a3cb24138fc2fd)~%~%std_msgs/Header header~%~%uint32 ICAO_address~%string callsign~%~%float64 latitude~%float64 longitude~%float32 altitude 	# AMSL~%~%float32 heading		# deg [0..360)~%float32 hor_velocity	# m/s~%float32 ver_velocity	# m/s~%~%uint8 altitude_type	# Type from ADSB_ALTITUDE_TYPE enum~%uint8 emitter_type	# Type from ADSB_EMITTER_TYPE enum~%~%duration tslc		# Duration from last communication, seconds [0..255]~%uint16 flags		# ADSB_FLAGS bit field~%uint16 squawk		# Squawk code~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADSBVehicle)))
  "Returns full string definition for message of type 'ADSBVehicle"
  (cl:format cl:nil "# The location and information of an ADSB vehicle~%#~%# https://mavlink.io/en/messages/common.html#ADSB_VEHICLE~%~%# [[[cog:~%# from pymavlink.dialects.v20 import common~%#~%# def decl_enum(ename, pfx='', bsz=8):~%#     enum = sorted(common.enums[ename].items())~%#     enum.pop() # remove ENUM_END~%#~%#     cog.outl(\"# \" + ename)~%#     for k, e in enum:~%#         sn = e.name[len(ename) + 1:]~%#         l = \"uint{bsz} {pfx}{sn} = {k}\".format(**locals())~%#         if e.description:~%#             l += ' ' * (40 - len(l)) + ' # ' + e.description~%#         cog.outl(l)~%#~%# decl_enum('ADSB_ALTITUDE_TYPE', 'ALT_')~%# decl_enum('ADSB_EMITTER_TYPE', 'EMITTER_')~%# decl_enum('ADSB_FLAGS', 'FLAG_', 16)~%# ]]]~%# ADSB_ALTITUDE_TYPE~%uint8 ALT_PRESSURE_QNH = 0               # Altitude reported from a Baro source using QNH reference~%uint8 ALT_GEOMETRIC = 1                  # Altitude reported from a GNSS source~%# ADSB_EMITTER_TYPE~%uint8 EMITTER_NO_INFO = 0~%uint8 EMITTER_LIGHT = 1~%uint8 EMITTER_SMALL = 2~%uint8 EMITTER_LARGE = 3~%uint8 EMITTER_HIGH_VORTEX_LARGE = 4~%uint8 EMITTER_HEAVY = 5~%uint8 EMITTER_HIGHLY_MANUV = 6~%uint8 EMITTER_ROTOCRAFT = 7~%uint8 EMITTER_UNASSIGNED = 8~%uint8 EMITTER_GLIDER = 9~%uint8 EMITTER_LIGHTER_AIR = 10~%uint8 EMITTER_PARACHUTE = 11~%uint8 EMITTER_ULTRA_LIGHT = 12~%uint8 EMITTER_UNASSIGNED2 = 13~%uint8 EMITTER_UAV = 14~%uint8 EMITTER_SPACE = 15~%uint8 EMITTER_UNASSGINED3 = 16~%uint8 EMITTER_EMERGENCY_SURFACE = 17~%uint8 EMITTER_SERVICE_SURFACE = 18~%uint8 EMITTER_POINT_OBSTACLE = 19~%# ADSB_FLAGS~%uint16 FLAG_VALID_COORDS = 1~%uint16 FLAG_VALID_ALTITUDE = 2~%uint16 FLAG_VALID_HEADING = 4~%uint16 FLAG_VALID_VELOCITY = 8~%uint16 FLAG_VALID_CALLSIGN = 16~%uint16 FLAG_VALID_SQUAWK = 32~%uint16 FLAG_SIMULATED = 64~%# [[[end]]] (checksum: e35e77be43548bd572a3cb24138fc2fd)~%~%std_msgs/Header header~%~%uint32 ICAO_address~%string callsign~%~%float64 latitude~%float64 longitude~%float32 altitude 	# AMSL~%~%float32 heading		# deg [0..360)~%float32 hor_velocity	# m/s~%float32 ver_velocity	# m/s~%~%uint8 altitude_type	# Type from ADSB_ALTITUDE_TYPE enum~%uint8 emitter_type	# Type from ADSB_EMITTER_TYPE enum~%~%duration tslc		# Duration from last communication, seconds [0..255]~%uint16 flags		# ADSB_FLAGS bit field~%uint16 squawk		# Squawk code~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADSBVehicle>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:length (cl:slot-value msg 'callsign))
     8
     8
     4
     4
     4
     4
     1
     1
     8
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADSBVehicle>))
  "Converts a ROS message object to a list"
  (cl:list 'ADSBVehicle
    (cl:cons ':header (header msg))
    (cl:cons ':ICAO_address (ICAO_address msg))
    (cl:cons ':callsign (callsign msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':hor_velocity (hor_velocity msg))
    (cl:cons ':ver_velocity (ver_velocity msg))
    (cl:cons ':altitude_type (altitude_type msg))
    (cl:cons ':emitter_type (emitter_type msg))
    (cl:cons ':tslc (tslc msg))
    (cl:cons ':flags (flags msg))
    (cl:cons ':squawk (squawk msg))
))
