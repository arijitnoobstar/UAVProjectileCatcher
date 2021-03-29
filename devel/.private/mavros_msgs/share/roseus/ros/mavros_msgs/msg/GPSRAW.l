;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::GPSRAW)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'GPSRAW (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::GPSRAW")
  (make-package "MAVROS_MSGS::GPSRAW"))

(in-package "ROS")
;;//! \htmlinclude GPSRAW.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*GPS_FIX_TYPE_NO_GPS*" (find-package "MAVROS_MSGS::GPSRAW"))
(shadow '*GPS_FIX_TYPE_NO_GPS* (find-package "MAVROS_MSGS::GPSRAW"))
(defconstant mavros_msgs::GPSRAW::*GPS_FIX_TYPE_NO_GPS* 0)
(intern "*GPS_FIX_TYPE_NO_FIX*" (find-package "MAVROS_MSGS::GPSRAW"))
(shadow '*GPS_FIX_TYPE_NO_FIX* (find-package "MAVROS_MSGS::GPSRAW"))
(defconstant mavros_msgs::GPSRAW::*GPS_FIX_TYPE_NO_FIX* 1)
(intern "*GPS_FIX_TYPE_2D_FIX*" (find-package "MAVROS_MSGS::GPSRAW"))
(shadow '*GPS_FIX_TYPE_2D_FIX* (find-package "MAVROS_MSGS::GPSRAW"))
(defconstant mavros_msgs::GPSRAW::*GPS_FIX_TYPE_2D_FIX* 2)
(intern "*GPS_FIX_TYPE_3D_FIX*" (find-package "MAVROS_MSGS::GPSRAW"))
(shadow '*GPS_FIX_TYPE_3D_FIX* (find-package "MAVROS_MSGS::GPSRAW"))
(defconstant mavros_msgs::GPSRAW::*GPS_FIX_TYPE_3D_FIX* 3)
(intern "*GPS_FIX_TYPE_DGPS*" (find-package "MAVROS_MSGS::GPSRAW"))
(shadow '*GPS_FIX_TYPE_DGPS* (find-package "MAVROS_MSGS::GPSRAW"))
(defconstant mavros_msgs::GPSRAW::*GPS_FIX_TYPE_DGPS* 4)
(intern "*GPS_FIX_TYPE_RTK_FLOATR*" (find-package "MAVROS_MSGS::GPSRAW"))
(shadow '*GPS_FIX_TYPE_RTK_FLOATR* (find-package "MAVROS_MSGS::GPSRAW"))
(defconstant mavros_msgs::GPSRAW::*GPS_FIX_TYPE_RTK_FLOATR* 5)
(intern "*GPS_FIX_TYPE_RTK_FIXEDR*" (find-package "MAVROS_MSGS::GPSRAW"))
(shadow '*GPS_FIX_TYPE_RTK_FIXEDR* (find-package "MAVROS_MSGS::GPSRAW"))
(defconstant mavros_msgs::GPSRAW::*GPS_FIX_TYPE_RTK_FIXEDR* 6)
(intern "*GPS_FIX_TYPE_STATIC*" (find-package "MAVROS_MSGS::GPSRAW"))
(shadow '*GPS_FIX_TYPE_STATIC* (find-package "MAVROS_MSGS::GPSRAW"))
(defconstant mavros_msgs::GPSRAW::*GPS_FIX_TYPE_STATIC* 7)
(intern "*GPS_FIX_TYPE_PPP*" (find-package "MAVROS_MSGS::GPSRAW"))
(shadow '*GPS_FIX_TYPE_PPP* (find-package "MAVROS_MSGS::GPSRAW"))
(defconstant mavros_msgs::GPSRAW::*GPS_FIX_TYPE_PPP* 8)
(defclass mavros_msgs::GPSRAW
  :super ros::object
  :slots (_header _fix_type _lat _lon _alt _eph _epv _vel _cog _satellites_visible _alt_ellipsoid _h_acc _v_acc _vel_acc _hdg_acc _dgps_numch _dgps_age ))

(defmethod mavros_msgs::GPSRAW
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:fix_type __fix_type) 0)
    ((:lat __lat) 0)
    ((:lon __lon) 0)
    ((:alt __alt) 0)
    ((:eph __eph) 0)
    ((:epv __epv) 0)
    ((:vel __vel) 0)
    ((:cog __cog) 0)
    ((:satellites_visible __satellites_visible) 0)
    ((:alt_ellipsoid __alt_ellipsoid) 0)
    ((:h_acc __h_acc) 0)
    ((:v_acc __v_acc) 0)
    ((:vel_acc __vel_acc) 0)
    ((:hdg_acc __hdg_acc) 0)
    ((:dgps_numch __dgps_numch) 0)
    ((:dgps_age __dgps_age) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _fix_type (round __fix_type))
   (setq _lat (round __lat))
   (setq _lon (round __lon))
   (setq _alt (round __alt))
   (setq _eph (round __eph))
   (setq _epv (round __epv))
   (setq _vel (round __vel))
   (setq _cog (round __cog))
   (setq _satellites_visible (round __satellites_visible))
   (setq _alt_ellipsoid (round __alt_ellipsoid))
   (setq _h_acc (round __h_acc))
   (setq _v_acc (round __v_acc))
   (setq _vel_acc (round __vel_acc))
   (setq _hdg_acc (round __hdg_acc))
   (setq _dgps_numch (round __dgps_numch))
   (setq _dgps_age (round __dgps_age))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:fix_type
   (&optional __fix_type)
   (if __fix_type (setq _fix_type __fix_type)) _fix_type)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:eph
   (&optional __eph)
   (if __eph (setq _eph __eph)) _eph)
  (:epv
   (&optional __epv)
   (if __epv (setq _epv __epv)) _epv)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:cog
   (&optional __cog)
   (if __cog (setq _cog __cog)) _cog)
  (:satellites_visible
   (&optional __satellites_visible)
   (if __satellites_visible (setq _satellites_visible __satellites_visible)) _satellites_visible)
  (:alt_ellipsoid
   (&optional __alt_ellipsoid)
   (if __alt_ellipsoid (setq _alt_ellipsoid __alt_ellipsoid)) _alt_ellipsoid)
  (:h_acc
   (&optional __h_acc)
   (if __h_acc (setq _h_acc __h_acc)) _h_acc)
  (:v_acc
   (&optional __v_acc)
   (if __v_acc (setq _v_acc __v_acc)) _v_acc)
  (:vel_acc
   (&optional __vel_acc)
   (if __vel_acc (setq _vel_acc __vel_acc)) _vel_acc)
  (:hdg_acc
   (&optional __hdg_acc)
   (if __hdg_acc (setq _hdg_acc __hdg_acc)) _hdg_acc)
  (:dgps_numch
   (&optional __dgps_numch)
   (if __dgps_numch (setq _dgps_numch __dgps_numch)) _dgps_numch)
  (:dgps_age
   (&optional __dgps_age)
   (if __dgps_age (setq _dgps_age __dgps_age)) _dgps_age)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _fix_type
    1
    ;; int32 _lat
    4
    ;; int32 _lon
    4
    ;; int32 _alt
    4
    ;; uint16 _eph
    2
    ;; uint16 _epv
    2
    ;; uint16 _vel
    2
    ;; uint16 _cog
    2
    ;; uint8 _satellites_visible
    1
    ;; int32 _alt_ellipsoid
    4
    ;; uint32 _h_acc
    4
    ;; uint32 _v_acc
    4
    ;; uint32 _vel_acc
    4
    ;; int32 _hdg_acc
    4
    ;; uint8 _dgps_numch
    1
    ;; uint32 _dgps_age
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _fix_type
       (write-byte _fix_type s)
     ;; int32 _lat
       (write-long _lat s)
     ;; int32 _lon
       (write-long _lon s)
     ;; int32 _alt
       (write-long _alt s)
     ;; uint16 _eph
       (write-word _eph s)
     ;; uint16 _epv
       (write-word _epv s)
     ;; uint16 _vel
       (write-word _vel s)
     ;; uint16 _cog
       (write-word _cog s)
     ;; uint8 _satellites_visible
       (write-byte _satellites_visible s)
     ;; int32 _alt_ellipsoid
       (write-long _alt_ellipsoid s)
     ;; uint32 _h_acc
       (write-long _h_acc s)
     ;; uint32 _v_acc
       (write-long _v_acc s)
     ;; uint32 _vel_acc
       (write-long _vel_acc s)
     ;; int32 _hdg_acc
       (write-long _hdg_acc s)
     ;; uint8 _dgps_numch
       (write-byte _dgps_numch s)
     ;; uint32 _dgps_age
       (write-long _dgps_age s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _fix_type
     (setq _fix_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _lat
     (setq _lat (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lon
     (setq _lon (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _alt
     (setq _alt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _eph
     (setq _eph (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _epv
     (setq _epv (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _vel
     (setq _vel (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _cog
     (setq _cog (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _satellites_visible
     (setq _satellites_visible (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _alt_ellipsoid
     (setq _alt_ellipsoid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _h_acc
     (setq _h_acc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _v_acc
     (setq _v_acc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _vel_acc
     (setq _vel_acc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _hdg_acc
     (setq _hdg_acc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _dgps_numch
     (setq _dgps_numch (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _dgps_age
     (setq _dgps_age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mavros_msgs::GPSRAW :md5sum-) "386bdffbf0a2d0436562395d516aa9bd")
(setf (get mavros_msgs::GPSRAW :datatype-) "mavros_msgs/GPSRAW")
(setf (get mavros_msgs::GPSRAW :definition-)
      "# FCU GPS RAW message for the gps_status plugin
# A merge of <a href=\"https://mavlink.io/en/messages/common.html#GPS_RAW_INT\">mavlink GPS_RAW_INT</a> and 
# <a href=\"https://mavlink.io/en/messages/common.html#GPS2_RAW\">mavlink GPS2_RAW</a> messages.

std_msgs/Header header
## GPS_FIX_TYPE enum
uint8 GPS_FIX_TYPE_NO_GPS     = 0    # No GPS connected
uint8 GPS_FIX_TYPE_NO_FIX     = 1    # No position information, GPS is connected
uint8 GPS_FIX_TYPE_2D_FIX     = 2    # 2D position
uint8 GPS_FIX_TYPE_3D_FIX     = 3    # 3D position
uint8 GPS_FIX_TYPE_DGPS       = 4    # DGPS/SBAS aided 3D position
uint8 GPS_FIX_TYPE_RTK_FLOATR = 5    # TK float, 3D position
uint8 GPS_FIX_TYPE_RTK_FIXEDR = 6    # TK Fixed, 3D position
uint8 GPS_FIX_TYPE_STATIC     = 7    # Static fixed, typically used for base stations
uint8 GPS_FIX_TYPE_PPP        = 8    # PPP, 3D position
uint8 fix_type      # [GPS_FIX_TYPE] GPS fix type

int32 lat           # [degE7] Latitude (WGS84, EGM96 ellipsoid)
int32 lon           # [degE7] Longitude (WGS84, EGM96 ellipsoid)
int32 alt           # [mm] Altitude (MSL). Positive for up. Note that virtually all GPS modules provide the MSL altitude in addition to the WGS84 altitude.
uint16 eph          # GPS HDOP horizontal dilution of position (unitless). If unknown, set to: UINT16_MAX
uint16 epv          # GPS VDOP vertical dilution of position (unitless). If unknown, set to: UINT16_MAX
uint16 vel          # [cm/s] GPS ground speed. If unknown, set to: UINT16_MAX
uint16 cog          # [cdeg] Course over ground (NOT heading, but direction of movement), 0.0..359.99 degrees. If unknown, set to: UINT16_MAX
uint8 satellites_visible # Number of satellites visible. If unknown, set to 255

# -*- only available with MAVLink v2.0 and GPS_RAW_INT messages -*-
int32 alt_ellipsoid # [mm] Altitude (above WGS84, EGM96 ellipsoid). Positive for up.
uint32 h_acc        # [mm] Position uncertainty. Positive for up.
uint32 v_acc        # [mm] Altitude uncertainty. Positive for up.
uint32 vel_acc      # [mm] Speed uncertainty. Positive for up.
int32  hdg_acc      # [degE5] Heading / track uncertainty

# -*- only available with MAVLink v2.0 and GPS2_RAW messages -*-
uint8 dgps_numch    # Number of DGPS satellites
uint32 dgps_age     # [ms] Age of DGPS info

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :mavros_msgs/GPSRAW "386bdffbf0a2d0436562395d516aa9bd")


