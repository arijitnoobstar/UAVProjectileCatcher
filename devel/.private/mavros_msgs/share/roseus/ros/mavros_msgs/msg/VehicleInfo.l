;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::VehicleInfo)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'VehicleInfo (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::VEHICLEINFO")
  (make-package "MAVROS_MSGS::VEHICLEINFO"))

(in-package "ROS")
;;//! \htmlinclude VehicleInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*HAVE_INFO_HEARTBEAT*" (find-package "MAVROS_MSGS::VEHICLEINFO"))
(shadow '*HAVE_INFO_HEARTBEAT* (find-package "MAVROS_MSGS::VEHICLEINFO"))
(defconstant mavros_msgs::VehicleInfo::*HAVE_INFO_HEARTBEAT* 1)
(intern "*HAVE_INFO_AUTOPILOT_VERSION*" (find-package "MAVROS_MSGS::VEHICLEINFO"))
(shadow '*HAVE_INFO_AUTOPILOT_VERSION* (find-package "MAVROS_MSGS::VEHICLEINFO"))
(defconstant mavros_msgs::VehicleInfo::*HAVE_INFO_AUTOPILOT_VERSION* 2)
(defclass mavros_msgs::VehicleInfo
  :super ros::object
  :slots (_header _available_info _sysid _compid _autopilot _type _system_status _base_mode _custom_mode _mode _mode_id _capabilities _flight_sw_version _middleware_sw_version _os_sw_version _board_version _flight_custom_version _vendor_id _product_id _uid ))

(defmethod mavros_msgs::VehicleInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:available_info __available_info) 0)
    ((:sysid __sysid) 0)
    ((:compid __compid) 0)
    ((:autopilot __autopilot) 0)
    ((:type __type) 0)
    ((:system_status __system_status) 0)
    ((:base_mode __base_mode) 0)
    ((:custom_mode __custom_mode) 0)
    ((:mode __mode) "")
    ((:mode_id __mode_id) 0)
    ((:capabilities __capabilities) 0)
    ((:flight_sw_version __flight_sw_version) 0)
    ((:middleware_sw_version __middleware_sw_version) 0)
    ((:os_sw_version __os_sw_version) 0)
    ((:board_version __board_version) 0)
    ((:flight_custom_version __flight_custom_version) "")
    ((:vendor_id __vendor_id) 0)
    ((:product_id __product_id) 0)
    ((:uid __uid) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _available_info (round __available_info))
   (setq _sysid (round __sysid))
   (setq _compid (round __compid))
   (setq _autopilot (round __autopilot))
   (setq _type (round __type))
   (setq _system_status (round __system_status))
   (setq _base_mode (round __base_mode))
   (setq _custom_mode (round __custom_mode))
   (setq _mode (string __mode))
   (setq _mode_id (round __mode_id))
   (setq _capabilities (round __capabilities))
   (setq _flight_sw_version (round __flight_sw_version))
   (setq _middleware_sw_version (round __middleware_sw_version))
   (setq _os_sw_version (round __os_sw_version))
   (setq _board_version (round __board_version))
   (setq _flight_custom_version (string __flight_custom_version))
   (setq _vendor_id (round __vendor_id))
   (setq _product_id (round __product_id))
   (setq _uid (round __uid))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:available_info
   (&optional __available_info)
   (if __available_info (setq _available_info __available_info)) _available_info)
  (:sysid
   (&optional __sysid)
   (if __sysid (setq _sysid __sysid)) _sysid)
  (:compid
   (&optional __compid)
   (if __compid (setq _compid __compid)) _compid)
  (:autopilot
   (&optional __autopilot)
   (if __autopilot (setq _autopilot __autopilot)) _autopilot)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:system_status
   (&optional __system_status)
   (if __system_status (setq _system_status __system_status)) _system_status)
  (:base_mode
   (&optional __base_mode)
   (if __base_mode (setq _base_mode __base_mode)) _base_mode)
  (:custom_mode
   (&optional __custom_mode)
   (if __custom_mode (setq _custom_mode __custom_mode)) _custom_mode)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:mode_id
   (&optional __mode_id)
   (if __mode_id (setq _mode_id __mode_id)) _mode_id)
  (:capabilities
   (&optional __capabilities)
   (if __capabilities (setq _capabilities __capabilities)) _capabilities)
  (:flight_sw_version
   (&optional __flight_sw_version)
   (if __flight_sw_version (setq _flight_sw_version __flight_sw_version)) _flight_sw_version)
  (:middleware_sw_version
   (&optional __middleware_sw_version)
   (if __middleware_sw_version (setq _middleware_sw_version __middleware_sw_version)) _middleware_sw_version)
  (:os_sw_version
   (&optional __os_sw_version)
   (if __os_sw_version (setq _os_sw_version __os_sw_version)) _os_sw_version)
  (:board_version
   (&optional __board_version)
   (if __board_version (setq _board_version __board_version)) _board_version)
  (:flight_custom_version
   (&optional __flight_custom_version)
   (if __flight_custom_version (setq _flight_custom_version __flight_custom_version)) _flight_custom_version)
  (:vendor_id
   (&optional __vendor_id)
   (if __vendor_id (setq _vendor_id __vendor_id)) _vendor_id)
  (:product_id
   (&optional __product_id)
   (if __product_id (setq _product_id __product_id)) _product_id)
  (:uid
   (&optional __uid)
   (if __uid (setq _uid __uid)) _uid)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _available_info
    1
    ;; uint8 _sysid
    1
    ;; uint8 _compid
    1
    ;; uint8 _autopilot
    1
    ;; uint8 _type
    1
    ;; uint8 _system_status
    1
    ;; uint8 _base_mode
    1
    ;; uint32 _custom_mode
    4
    ;; string _mode
    4 (length _mode)
    ;; uint32 _mode_id
    4
    ;; uint64 _capabilities
    8
    ;; uint32 _flight_sw_version
    4
    ;; uint32 _middleware_sw_version
    4
    ;; uint32 _os_sw_version
    4
    ;; uint32 _board_version
    4
    ;; string _flight_custom_version
    4 (length _flight_custom_version)
    ;; uint16 _vendor_id
    2
    ;; uint16 _product_id
    2
    ;; uint64 _uid
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _available_info
       (write-byte _available_info s)
     ;; uint8 _sysid
       (write-byte _sysid s)
     ;; uint8 _compid
       (write-byte _compid s)
     ;; uint8 _autopilot
       (write-byte _autopilot s)
     ;; uint8 _type
       (write-byte _type s)
     ;; uint8 _system_status
       (write-byte _system_status s)
     ;; uint8 _base_mode
       (write-byte _base_mode s)
     ;; uint32 _custom_mode
       (write-long _custom_mode s)
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; uint32 _mode_id
       (write-long _mode_id s)
     ;; uint64 _capabilities
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _capabilities (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _capabilities) (= (length (_capabilities . bv)) 2)) ;; bignum
              (write-long (ash (elt (_capabilities . bv) 0) 0) s)
              (write-long (ash (elt (_capabilities . bv) 1) -1) s))
             ((and (class _capabilities) (= (length (_capabilities . bv)) 1)) ;; big1
              (write-long (elt (_capabilities . bv) 0) s)
              (write-long (if (>= _capabilities 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _capabilities s)(write-long (if (>= _capabilities 0) 0 #xffffffff) s)))
     ;; uint32 _flight_sw_version
       (write-long _flight_sw_version s)
     ;; uint32 _middleware_sw_version
       (write-long _middleware_sw_version s)
     ;; uint32 _os_sw_version
       (write-long _os_sw_version s)
     ;; uint32 _board_version
       (write-long _board_version s)
     ;; string _flight_custom_version
       (write-long (length _flight_custom_version) s) (princ _flight_custom_version s)
     ;; uint16 _vendor_id
       (write-word _vendor_id s)
     ;; uint16 _product_id
       (write-word _product_id s)
     ;; uint64 _uid
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _uid (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _uid) (= (length (_uid . bv)) 2)) ;; bignum
              (write-long (ash (elt (_uid . bv) 0) 0) s)
              (write-long (ash (elt (_uid . bv) 1) -1) s))
             ((and (class _uid) (= (length (_uid . bv)) 1)) ;; big1
              (write-long (elt (_uid . bv) 0) s)
              (write-long (if (>= _uid 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _uid s)(write-long (if (>= _uid 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _available_info
     (setq _available_info (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sysid
     (setq _sysid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _compid
     (setq _compid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _autopilot
     (setq _autopilot (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _system_status
     (setq _system_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _base_mode
     (setq _base_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _custom_mode
     (setq _custom_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _mode_id
     (setq _mode_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint64 _capabilities
     
#+(or :alpha :irix6 :x86_64)
      (setf _capabilities (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _capabilities (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint32 _flight_sw_version
     (setq _flight_sw_version (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _middleware_sw_version
     (setq _middleware_sw_version (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _os_sw_version
     (setq _os_sw_version (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _board_version
     (setq _board_version (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _flight_custom_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _flight_custom_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _vendor_id
     (setq _vendor_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _product_id
     (setq _product_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint64 _uid
     
#+(or :alpha :irix6 :x86_64)
      (setf _uid (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _uid (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get mavros_msgs::VehicleInfo :md5sum-) "9afa55616f5936bd9469d7d85c523ac1")
(setf (get mavros_msgs::VehicleInfo :datatype-) "mavros_msgs/VehicleInfo")
(setf (get mavros_msgs::VehicleInfo :definition-)
      "# Vehicle Info msg

std_msgs/Header header

uint8 HAVE_INFO_HEARTBEAT = 1
uint8 HAVE_INFO_AUTOPILOT_VERSION = 2
uint8 available_info		# Bitmap shows what info is available

# Vehicle address
uint8 sysid                     # SYSTEM ID
uint8 compid                    # COMPONENT ID

# -*- Heartbeat info -*-
uint8 autopilot                 # MAV_AUTOPILOT
uint8 type                      # MAV_TYPE
uint8 system_status             # MAV_STATE
uint8 base_mode
uint32 custom_mode
string mode                     # MAV_MODE string
uint32 mode_id                  # MAV_MODE number

# -*- Autopilot version -*-
uint64 capabilities             # MAV_PROTOCOL_CAPABILITY
uint32 flight_sw_version        # Firmware version number
uint32 middleware_sw_version    # Middleware version number
uint32 os_sw_version            # Operating system version number
uint32 board_version            # HW / board version (last 8 bytes should be silicon ID, if any)
string flight_custom_version    # Custom version field, commonly from the first 8 bytes of the git hash
uint16 vendor_id                # ID of the board vendor
uint16 product_id               # ID of the product
uint64 uid                      # UID if provided by hardware

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



(provide :mavros_msgs/VehicleInfo "9afa55616f5936bd9469d7d85c523ac1")


