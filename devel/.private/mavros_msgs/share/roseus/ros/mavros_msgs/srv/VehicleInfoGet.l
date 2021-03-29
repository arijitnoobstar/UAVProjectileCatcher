;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::VehicleInfoGet)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'VehicleInfoGet (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::VEHICLEINFOGET")
  (make-package "MAVROS_MSGS::VEHICLEINFOGET"))
(unless (find-package "MAVROS_MSGS::VEHICLEINFOGETREQUEST")
  (make-package "MAVROS_MSGS::VEHICLEINFOGETREQUEST"))
(unless (find-package "MAVROS_MSGS::VEHICLEINFOGETRESPONSE")
  (make-package "MAVROS_MSGS::VEHICLEINFOGETRESPONSE"))

(in-package "ROS")





(intern "*GET_MY_SYSID*" (find-package "MAVROS_MSGS::VEHICLEINFOGETREQUEST"))
(shadow '*GET_MY_SYSID* (find-package "MAVROS_MSGS::VEHICLEINFOGETREQUEST"))
(defconstant mavros_msgs::VehicleInfoGetRequest::*GET_MY_SYSID* 0)
(intern "*GET_MY_COMPID*" (find-package "MAVROS_MSGS::VEHICLEINFOGETREQUEST"))
(shadow '*GET_MY_COMPID* (find-package "MAVROS_MSGS::VEHICLEINFOGETREQUEST"))
(defconstant mavros_msgs::VehicleInfoGetRequest::*GET_MY_COMPID* 0)
(defclass mavros_msgs::VehicleInfoGetRequest
  :super ros::object
  :slots (_sysid _compid _get_all ))

(defmethod mavros_msgs::VehicleInfoGetRequest
  (:init
   (&key
    ((:sysid __sysid) 0)
    ((:compid __compid) 0)
    ((:get_all __get_all) nil)
    )
   (send-super :init)
   (setq _sysid (round __sysid))
   (setq _compid (round __compid))
   (setq _get_all __get_all)
   self)
  (:sysid
   (&optional __sysid)
   (if __sysid (setq _sysid __sysid)) _sysid)
  (:compid
   (&optional __compid)
   (if __compid (setq _compid __compid)) _compid)
  (:get_all
   (&optional __get_all)
   (if __get_all (setq _get_all __get_all)) _get_all)
  (:serialization-length
   ()
   (+
    ;; uint8 _sysid
    1
    ;; uint8 _compid
    1
    ;; bool _get_all
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _sysid
       (write-byte _sysid s)
     ;; uint8 _compid
       (write-byte _compid s)
     ;; bool _get_all
       (if _get_all (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _sysid
     (setq _sysid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _compid
     (setq _compid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _get_all
     (setq _get_all (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros_msgs::VehicleInfoGetResponse
  :super ros::object
  :slots (_success _vehicles ))

(defmethod mavros_msgs::VehicleInfoGetResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:vehicles __vehicles) (let (r) (dotimes (i 0) (push (instance mavros_msgs::VehicleInfo :init) r)) r))
    )
   (send-super :init)
   (setq _success __success)
   (setq _vehicles __vehicles)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:vehicles
   (&rest __vehicles)
   (if (keywordp (car __vehicles))
       (send* _vehicles __vehicles)
     (progn
       (if __vehicles (setq _vehicles (car __vehicles)))
       _vehicles)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; mavros_msgs/VehicleInfo[] _vehicles
    (apply #'+ (send-all _vehicles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; mavros_msgs/VehicleInfo[] _vehicles
     (write-long (length _vehicles) s)
     (dolist (elem _vehicles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; mavros_msgs/VehicleInfo[] _vehicles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vehicles (let (r) (dotimes (i n) (push (instance mavros_msgs::VehicleInfo :init) r)) r))
     (dolist (elem- _vehicles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass mavros_msgs::VehicleInfoGet
  :super ros::object
  :slots ())

(setf (get mavros_msgs::VehicleInfoGet :md5sum-) "d85d85aa4f49fb3764201b7aeeb6cc2b")
(setf (get mavros_msgs::VehicleInfoGet :datatype-) "mavros_msgs/VehicleInfoGet")
(setf (get mavros_msgs::VehicleInfoGet :request) mavros_msgs::VehicleInfoGetRequest)
(setf (get mavros_msgs::VehicleInfoGet :response) mavros_msgs::VehicleInfoGetResponse)

(defmethod mavros_msgs::VehicleInfoGetRequest
  (:response () (instance mavros_msgs::VehicleInfoGetResponse :init)))

(setf (get mavros_msgs::VehicleInfoGetRequest :md5sum-) "d85d85aa4f49fb3764201b7aeeb6cc2b")
(setf (get mavros_msgs::VehicleInfoGetRequest :datatype-) "mavros_msgs/VehicleInfoGetRequest")
(setf (get mavros_msgs::VehicleInfoGetRequest :definition-)
      "# Request the Vehicle Info
# use this to request the current target sysid / compid defined in mavros
# set get_all = True to request all available vehicles

uint8 GET_MY_SYSID = 0
uint8 GET_MY_COMPID = 0

uint8 sysid
uint8 compid
bool get_all
---
bool success
mavros_msgs/VehicleInfo[] vehicles



================================================================================
MSG: mavros_msgs/VehicleInfo
# Vehicle Info msg

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

(setf (get mavros_msgs::VehicleInfoGetResponse :md5sum-) "d85d85aa4f49fb3764201b7aeeb6cc2b")
(setf (get mavros_msgs::VehicleInfoGetResponse :datatype-) "mavros_msgs/VehicleInfoGetResponse")
(setf (get mavros_msgs::VehicleInfoGetResponse :definition-)
      "# Request the Vehicle Info
# use this to request the current target sysid / compid defined in mavros
# set get_all = True to request all available vehicles

uint8 GET_MY_SYSID = 0
uint8 GET_MY_COMPID = 0

uint8 sysid
uint8 compid
bool get_all
---
bool success
mavros_msgs/VehicleInfo[] vehicles



================================================================================
MSG: mavros_msgs/VehicleInfo
# Vehicle Info msg

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



(provide :mavros_msgs/VehicleInfoGet "d85d85aa4f49fb3764201b7aeeb6cc2b")


