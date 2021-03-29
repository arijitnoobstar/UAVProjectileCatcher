; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude GPSRAW.msg.html

(cl:defclass <GPSRAW> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (fix_type
    :reader fix_type
    :initarg :fix_type
    :type cl:fixnum
    :initform 0)
   (lat
    :reader lat
    :initarg :lat
    :type cl:integer
    :initform 0)
   (lon
    :reader lon
    :initarg :lon
    :type cl:integer
    :initform 0)
   (alt
    :reader alt
    :initarg :alt
    :type cl:integer
    :initform 0)
   (eph
    :reader eph
    :initarg :eph
    :type cl:fixnum
    :initform 0)
   (epv
    :reader epv
    :initarg :epv
    :type cl:fixnum
    :initform 0)
   (vel
    :reader vel
    :initarg :vel
    :type cl:fixnum
    :initform 0)
   (cog
    :reader cog
    :initarg :cog
    :type cl:fixnum
    :initform 0)
   (satellites_visible
    :reader satellites_visible
    :initarg :satellites_visible
    :type cl:fixnum
    :initform 0)
   (alt_ellipsoid
    :reader alt_ellipsoid
    :initarg :alt_ellipsoid
    :type cl:integer
    :initform 0)
   (h_acc
    :reader h_acc
    :initarg :h_acc
    :type cl:integer
    :initform 0)
   (v_acc
    :reader v_acc
    :initarg :v_acc
    :type cl:integer
    :initform 0)
   (vel_acc
    :reader vel_acc
    :initarg :vel_acc
    :type cl:integer
    :initform 0)
   (hdg_acc
    :reader hdg_acc
    :initarg :hdg_acc
    :type cl:integer
    :initform 0)
   (dgps_numch
    :reader dgps_numch
    :initarg :dgps_numch
    :type cl:fixnum
    :initform 0)
   (dgps_age
    :reader dgps_age
    :initarg :dgps_age
    :type cl:integer
    :initform 0))
)

(cl:defclass GPSRAW (<GPSRAW>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GPSRAW>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GPSRAW)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<GPSRAW> is deprecated: use mavros_msgs-msg:GPSRAW instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GPSRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'fix_type-val :lambda-list '(m))
(cl:defmethod fix_type-val ((m <GPSRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:fix_type-val is deprecated.  Use mavros_msgs-msg:fix_type instead.")
  (fix_type m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <GPSRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:lat-val is deprecated.  Use mavros_msgs-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lon-val :lambda-list '(m))
(cl:defmethod lon-val ((m <GPSRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:lon-val is deprecated.  Use mavros_msgs-msg:lon instead.")
  (lon m))

(cl:ensure-generic-function 'alt-val :lambda-list '(m))
(cl:defmethod alt-val ((m <GPSRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:alt-val is deprecated.  Use mavros_msgs-msg:alt instead.")
  (alt m))

(cl:ensure-generic-function 'eph-val :lambda-list '(m))
(cl:defmethod eph-val ((m <GPSRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:eph-val is deprecated.  Use mavros_msgs-msg:eph instead.")
  (eph m))

(cl:ensure-generic-function 'epv-val :lambda-list '(m))
(cl:defmethod epv-val ((m <GPSRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:epv-val is deprecated.  Use mavros_msgs-msg:epv instead.")
  (epv m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <GPSRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:vel-val is deprecated.  Use mavros_msgs-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'cog-val :lambda-list '(m))
(cl:defmethod cog-val ((m <GPSRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:cog-val is deprecated.  Use mavros_msgs-msg:cog instead.")
  (cog m))

(cl:ensure-generic-function 'satellites_visible-val :lambda-list '(m))
(cl:defmethod satellites_visible-val ((m <GPSRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:satellites_visible-val is deprecated.  Use mavros_msgs-msg:satellites_visible instead.")
  (satellites_visible m))

(cl:ensure-generic-function 'alt_ellipsoid-val :lambda-list '(m))
(cl:defmethod alt_ellipsoid-val ((m <GPSRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:alt_ellipsoid-val is deprecated.  Use mavros_msgs-msg:alt_ellipsoid instead.")
  (alt_ellipsoid m))

(cl:ensure-generic-function 'h_acc-val :lambda-list '(m))
(cl:defmethod h_acc-val ((m <GPSRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:h_acc-val is deprecated.  Use mavros_msgs-msg:h_acc instead.")
  (h_acc m))

(cl:ensure-generic-function 'v_acc-val :lambda-list '(m))
(cl:defmethod v_acc-val ((m <GPSRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:v_acc-val is deprecated.  Use mavros_msgs-msg:v_acc instead.")
  (v_acc m))

(cl:ensure-generic-function 'vel_acc-val :lambda-list '(m))
(cl:defmethod vel_acc-val ((m <GPSRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:vel_acc-val is deprecated.  Use mavros_msgs-msg:vel_acc instead.")
  (vel_acc m))

(cl:ensure-generic-function 'hdg_acc-val :lambda-list '(m))
(cl:defmethod hdg_acc-val ((m <GPSRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:hdg_acc-val is deprecated.  Use mavros_msgs-msg:hdg_acc instead.")
  (hdg_acc m))

(cl:ensure-generic-function 'dgps_numch-val :lambda-list '(m))
(cl:defmethod dgps_numch-val ((m <GPSRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:dgps_numch-val is deprecated.  Use mavros_msgs-msg:dgps_numch instead.")
  (dgps_numch m))

(cl:ensure-generic-function 'dgps_age-val :lambda-list '(m))
(cl:defmethod dgps_age-val ((m <GPSRAW>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:dgps_age-val is deprecated.  Use mavros_msgs-msg:dgps_age instead.")
  (dgps_age m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GPSRAW>)))
    "Constants for message type '<GPSRAW>"
  '((:GPS_FIX_TYPE_NO_GPS . 0)
    (:GPS_FIX_TYPE_NO_FIX . 1)
    (:GPS_FIX_TYPE_2D_FIX . 2)
    (:GPS_FIX_TYPE_3D_FIX . 3)
    (:GPS_FIX_TYPE_DGPS . 4)
    (:GPS_FIX_TYPE_RTK_FLOATR . 5)
    (:GPS_FIX_TYPE_RTK_FIXEDR . 6)
    (:GPS_FIX_TYPE_STATIC . 7)
    (:GPS_FIX_TYPE_PPP . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GPSRAW)))
    "Constants for message type 'GPSRAW"
  '((:GPS_FIX_TYPE_NO_GPS . 0)
    (:GPS_FIX_TYPE_NO_FIX . 1)
    (:GPS_FIX_TYPE_2D_FIX . 2)
    (:GPS_FIX_TYPE_3D_FIX . 3)
    (:GPS_FIX_TYPE_DGPS . 4)
    (:GPS_FIX_TYPE_RTK_FLOATR . 5)
    (:GPS_FIX_TYPE_RTK_FIXEDR . 6)
    (:GPS_FIX_TYPE_STATIC . 7)
    (:GPS_FIX_TYPE_PPP . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GPSRAW>) ostream)
  "Serializes a message object of type '<GPSRAW>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fix_type)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'lat)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lon)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'alt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'eph)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'eph)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'epv)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'epv)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cog)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cog)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'satellites_visible)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'alt_ellipsoid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'h_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'h_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'h_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'h_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'v_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'v_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'v_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'v_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vel_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vel_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vel_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vel_acc)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'hdg_acc)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dgps_numch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dgps_age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dgps_age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dgps_age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dgps_age)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GPSRAW>) istream)
  "Deserializes a message object of type '<GPSRAW>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fix_type)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lat) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lon) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'eph)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'eph)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'epv)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'epv)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cog)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cog)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'satellites_visible)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alt_ellipsoid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'h_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'h_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'h_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'h_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'v_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'v_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'v_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'v_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vel_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vel_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vel_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vel_acc)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hdg_acc) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dgps_numch)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dgps_age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dgps_age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dgps_age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dgps_age)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GPSRAW>)))
  "Returns string type for a message object of type '<GPSRAW>"
  "mavros_msgs/GPSRAW")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPSRAW)))
  "Returns string type for a message object of type 'GPSRAW"
  "mavros_msgs/GPSRAW")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GPSRAW>)))
  "Returns md5sum for a message object of type '<GPSRAW>"
  "386bdffbf0a2d0436562395d516aa9bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GPSRAW)))
  "Returns md5sum for a message object of type 'GPSRAW"
  "386bdffbf0a2d0436562395d516aa9bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GPSRAW>)))
  "Returns full string definition for message of type '<GPSRAW>"
  (cl:format cl:nil "# FCU GPS RAW message for the gps_status plugin~%# A merge of <a href=\"https://mavlink.io/en/messages/common.html#GPS_RAW_INT\">mavlink GPS_RAW_INT</a> and ~%# <a href=\"https://mavlink.io/en/messages/common.html#GPS2_RAW\">mavlink GPS2_RAW</a> messages.~%~%std_msgs/Header header~%## GPS_FIX_TYPE enum~%uint8 GPS_FIX_TYPE_NO_GPS     = 0    # No GPS connected~%uint8 GPS_FIX_TYPE_NO_FIX     = 1    # No position information, GPS is connected~%uint8 GPS_FIX_TYPE_2D_FIX     = 2    # 2D position~%uint8 GPS_FIX_TYPE_3D_FIX     = 3    # 3D position~%uint8 GPS_FIX_TYPE_DGPS       = 4    # DGPS/SBAS aided 3D position~%uint8 GPS_FIX_TYPE_RTK_FLOATR = 5    # TK float, 3D position~%uint8 GPS_FIX_TYPE_RTK_FIXEDR = 6    # TK Fixed, 3D position~%uint8 GPS_FIX_TYPE_STATIC     = 7    # Static fixed, typically used for base stations~%uint8 GPS_FIX_TYPE_PPP        = 8    # PPP, 3D position~%uint8 fix_type      # [GPS_FIX_TYPE] GPS fix type~%~%int32 lat           # [degE7] Latitude (WGS84, EGM96 ellipsoid)~%int32 lon           # [degE7] Longitude (WGS84, EGM96 ellipsoid)~%int32 alt           # [mm] Altitude (MSL). Positive for up. Note that virtually all GPS modules provide the MSL altitude in addition to the WGS84 altitude.~%uint16 eph          # GPS HDOP horizontal dilution of position (unitless). If unknown, set to: UINT16_MAX~%uint16 epv          # GPS VDOP vertical dilution of position (unitless). If unknown, set to: UINT16_MAX~%uint16 vel          # [cm/s] GPS ground speed. If unknown, set to: UINT16_MAX~%uint16 cog          # [cdeg] Course over ground (NOT heading, but direction of movement), 0.0..359.99 degrees. If unknown, set to: UINT16_MAX~%uint8 satellites_visible # Number of satellites visible. If unknown, set to 255~%~%# -*- only available with MAVLink v2.0 and GPS_RAW_INT messages -*-~%int32 alt_ellipsoid # [mm] Altitude (above WGS84, EGM96 ellipsoid). Positive for up.~%uint32 h_acc        # [mm] Position uncertainty. Positive for up.~%uint32 v_acc        # [mm] Altitude uncertainty. Positive for up.~%uint32 vel_acc      # [mm] Speed uncertainty. Positive for up.~%int32  hdg_acc      # [degE5] Heading / track uncertainty~%~%# -*- only available with MAVLink v2.0 and GPS2_RAW messages -*-~%uint8 dgps_numch    # Number of DGPS satellites~%uint32 dgps_age     # [ms] Age of DGPS info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GPSRAW)))
  "Returns full string definition for message of type 'GPSRAW"
  (cl:format cl:nil "# FCU GPS RAW message for the gps_status plugin~%# A merge of <a href=\"https://mavlink.io/en/messages/common.html#GPS_RAW_INT\">mavlink GPS_RAW_INT</a> and ~%# <a href=\"https://mavlink.io/en/messages/common.html#GPS2_RAW\">mavlink GPS2_RAW</a> messages.~%~%std_msgs/Header header~%## GPS_FIX_TYPE enum~%uint8 GPS_FIX_TYPE_NO_GPS     = 0    # No GPS connected~%uint8 GPS_FIX_TYPE_NO_FIX     = 1    # No position information, GPS is connected~%uint8 GPS_FIX_TYPE_2D_FIX     = 2    # 2D position~%uint8 GPS_FIX_TYPE_3D_FIX     = 3    # 3D position~%uint8 GPS_FIX_TYPE_DGPS       = 4    # DGPS/SBAS aided 3D position~%uint8 GPS_FIX_TYPE_RTK_FLOATR = 5    # TK float, 3D position~%uint8 GPS_FIX_TYPE_RTK_FIXEDR = 6    # TK Fixed, 3D position~%uint8 GPS_FIX_TYPE_STATIC     = 7    # Static fixed, typically used for base stations~%uint8 GPS_FIX_TYPE_PPP        = 8    # PPP, 3D position~%uint8 fix_type      # [GPS_FIX_TYPE] GPS fix type~%~%int32 lat           # [degE7] Latitude (WGS84, EGM96 ellipsoid)~%int32 lon           # [degE7] Longitude (WGS84, EGM96 ellipsoid)~%int32 alt           # [mm] Altitude (MSL). Positive for up. Note that virtually all GPS modules provide the MSL altitude in addition to the WGS84 altitude.~%uint16 eph          # GPS HDOP horizontal dilution of position (unitless). If unknown, set to: UINT16_MAX~%uint16 epv          # GPS VDOP vertical dilution of position (unitless). If unknown, set to: UINT16_MAX~%uint16 vel          # [cm/s] GPS ground speed. If unknown, set to: UINT16_MAX~%uint16 cog          # [cdeg] Course over ground (NOT heading, but direction of movement), 0.0..359.99 degrees. If unknown, set to: UINT16_MAX~%uint8 satellites_visible # Number of satellites visible. If unknown, set to 255~%~%# -*- only available with MAVLink v2.0 and GPS_RAW_INT messages -*-~%int32 alt_ellipsoid # [mm] Altitude (above WGS84, EGM96 ellipsoid). Positive for up.~%uint32 h_acc        # [mm] Position uncertainty. Positive for up.~%uint32 v_acc        # [mm] Altitude uncertainty. Positive for up.~%uint32 vel_acc      # [mm] Speed uncertainty. Positive for up.~%int32  hdg_acc      # [degE5] Heading / track uncertainty~%~%# -*- only available with MAVLink v2.0 and GPS2_RAW messages -*-~%uint8 dgps_numch    # Number of DGPS satellites~%uint32 dgps_age     # [ms] Age of DGPS info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GPSRAW>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4
     4
     2
     2
     2
     2
     1
     4
     4
     4
     4
     4
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GPSRAW>))
  "Converts a ROS message object to a list"
  (cl:list 'GPSRAW
    (cl:cons ':header (header msg))
    (cl:cons ':fix_type (fix_type msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':lon (lon msg))
    (cl:cons ':alt (alt msg))
    (cl:cons ':eph (eph msg))
    (cl:cons ':epv (epv msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':cog (cog msg))
    (cl:cons ':satellites_visible (satellites_visible msg))
    (cl:cons ':alt_ellipsoid (alt_ellipsoid msg))
    (cl:cons ':h_acc (h_acc msg))
    (cl:cons ':v_acc (v_acc msg))
    (cl:cons ':vel_acc (vel_acc msg))
    (cl:cons ':hdg_acc (hdg_acc msg))
    (cl:cons ':dgps_numch (dgps_numch msg))
    (cl:cons ':dgps_age (dgps_age msg))
))
