;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::HilGPS)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'HilGPS (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::HILGPS")
  (make-package "MAVROS_MSGS::HILGPS"))

(in-package "ROS")
;;//! \htmlinclude HilGPS.msg.html
(if (not (find-package "GEOGRAPHIC_MSGS"))
  (ros::roseus-add-msgs "geographic_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::HilGPS
  :super ros::object
  :slots (_header _fix_type _geo _eph _epv _vel _vn _ve _vd _cog _satellites_visible ))

(defmethod mavros_msgs::HilGPS
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:fix_type __fix_type) 0)
    ((:geo __geo) (instance geographic_msgs::GeoPoint :init))
    ((:eph __eph) 0)
    ((:epv __epv) 0)
    ((:vel __vel) 0)
    ((:vn __vn) 0)
    ((:ve __ve) 0)
    ((:vd __vd) 0)
    ((:cog __cog) 0)
    ((:satellites_visible __satellites_visible) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _fix_type (round __fix_type))
   (setq _geo __geo)
   (setq _eph (round __eph))
   (setq _epv (round __epv))
   (setq _vel (round __vel))
   (setq _vn (round __vn))
   (setq _ve (round __ve))
   (setq _vd (round __vd))
   (setq _cog (round __cog))
   (setq _satellites_visible (round __satellites_visible))
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
  (:geo
   (&rest __geo)
   (if (keywordp (car __geo))
       (send* _geo __geo)
     (progn
       (if __geo (setq _geo (car __geo)))
       _geo)))
  (:eph
   (&optional __eph)
   (if __eph (setq _eph __eph)) _eph)
  (:epv
   (&optional __epv)
   (if __epv (setq _epv __epv)) _epv)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:vn
   (&optional __vn)
   (if __vn (setq _vn __vn)) _vn)
  (:ve
   (&optional __ve)
   (if __ve (setq _ve __ve)) _ve)
  (:vd
   (&optional __vd)
   (if __vd (setq _vd __vd)) _vd)
  (:cog
   (&optional __cog)
   (if __cog (setq _cog __cog)) _cog)
  (:satellites_visible
   (&optional __satellites_visible)
   (if __satellites_visible (setq _satellites_visible __satellites_visible)) _satellites_visible)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _fix_type
    1
    ;; geographic_msgs/GeoPoint _geo
    (send _geo :serialization-length)
    ;; uint16 _eph
    2
    ;; uint16 _epv
    2
    ;; uint16 _vel
    2
    ;; int16 _vn
    2
    ;; int16 _ve
    2
    ;; int16 _vd
    2
    ;; uint16 _cog
    2
    ;; uint8 _satellites_visible
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _fix_type
       (write-byte _fix_type s)
     ;; geographic_msgs/GeoPoint _geo
       (send _geo :serialize s)
     ;; uint16 _eph
       (write-word _eph s)
     ;; uint16 _epv
       (write-word _epv s)
     ;; uint16 _vel
       (write-word _vel s)
     ;; int16 _vn
       (write-word _vn s)
     ;; int16 _ve
       (write-word _ve s)
     ;; int16 _vd
       (write-word _vd s)
     ;; uint16 _cog
       (write-word _cog s)
     ;; uint8 _satellites_visible
       (write-byte _satellites_visible s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _fix_type
     (setq _fix_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geographic_msgs/GeoPoint _geo
     (send _geo :deserialize buf ptr-) (incf ptr- (send _geo :serialization-length))
   ;; uint16 _eph
     (setq _eph (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _epv
     (setq _epv (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _vel
     (setq _vel (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _vn
     (setq _vn (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _ve
     (setq _ve (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _vd
     (setq _vd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _cog
     (setq _cog (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _satellites_visible
     (setq _satellites_visible (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mavros_msgs::HilGPS :md5sum-) "313b3baf2319db196fa18376a4900a7b")
(setf (get mavros_msgs::HilGPS :datatype-) "mavros_msgs/HilGPS")
(setf (get mavros_msgs::HilGPS :definition-)
      "# HilControls.msg
#
# ROS representation of MAVLink HIL_GPS
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#HIL_GPS

std_msgs/Header header
uint8 fix_type
geographic_msgs/GeoPoint geo
uint16 eph
uint16 epv
uint16 vel
int16 vn
int16 ve
int16 vd
uint16 cog
uint8 satellites_visible

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

================================================================================
MSG: geographic_msgs/GeoPoint
# Geographic point, using the WGS 84 reference ellipsoid.

# Latitude [degrees]. Positive is north of equator; negative is south
# (-90 <= latitude <= +90).
float64 latitude

# Longitude [degrees]. Positive is east of prime meridian; negative is
# west (-180 <= longitude <= +180). At the poles, latitude is -90 or
# +90, and longitude is irrelevant, but must be in range.
float64 longitude

# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).
float64 altitude

")



(provide :mavros_msgs/HilGPS "313b3baf2319db196fa18376a4900a7b")


