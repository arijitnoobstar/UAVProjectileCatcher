;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::GlobalPositionTarget)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'GlobalPositionTarget (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET")
  (make-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))

(in-package "ROS")
;;//! \htmlinclude GlobalPositionTarget.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*FRAME_GLOBAL_INT*" (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(shadow '*FRAME_GLOBAL_INT* (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(defconstant mavros_msgs::GlobalPositionTarget::*FRAME_GLOBAL_INT* 5)
(intern "*FRAME_GLOBAL_REL_ALT*" (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(shadow '*FRAME_GLOBAL_REL_ALT* (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(defconstant mavros_msgs::GlobalPositionTarget::*FRAME_GLOBAL_REL_ALT* 6)
(intern "*FRAME_GLOBAL_TERRAIN_ALT*" (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(shadow '*FRAME_GLOBAL_TERRAIN_ALT* (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(defconstant mavros_msgs::GlobalPositionTarget::*FRAME_GLOBAL_TERRAIN_ALT* 11)
(intern "*IGNORE_LATITUDE*" (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(shadow '*IGNORE_LATITUDE* (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(defconstant mavros_msgs::GlobalPositionTarget::*IGNORE_LATITUDE* 1)
(intern "*IGNORE_LONGITUDE*" (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(shadow '*IGNORE_LONGITUDE* (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(defconstant mavros_msgs::GlobalPositionTarget::*IGNORE_LONGITUDE* 2)
(intern "*IGNORE_ALTITUDE*" (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(shadow '*IGNORE_ALTITUDE* (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(defconstant mavros_msgs::GlobalPositionTarget::*IGNORE_ALTITUDE* 4)
(intern "*IGNORE_VX*" (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(shadow '*IGNORE_VX* (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(defconstant mavros_msgs::GlobalPositionTarget::*IGNORE_VX* 8)
(intern "*IGNORE_VY*" (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(shadow '*IGNORE_VY* (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(defconstant mavros_msgs::GlobalPositionTarget::*IGNORE_VY* 16)
(intern "*IGNORE_VZ*" (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(shadow '*IGNORE_VZ* (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(defconstant mavros_msgs::GlobalPositionTarget::*IGNORE_VZ* 32)
(intern "*IGNORE_AFX*" (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(shadow '*IGNORE_AFX* (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(defconstant mavros_msgs::GlobalPositionTarget::*IGNORE_AFX* 64)
(intern "*IGNORE_AFY*" (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(shadow '*IGNORE_AFY* (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(defconstant mavros_msgs::GlobalPositionTarget::*IGNORE_AFY* 128)
(intern "*IGNORE_AFZ*" (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(shadow '*IGNORE_AFZ* (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(defconstant mavros_msgs::GlobalPositionTarget::*IGNORE_AFZ* 256)
(intern "*FORCE*" (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(shadow '*FORCE* (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(defconstant mavros_msgs::GlobalPositionTarget::*FORCE* 512)
(intern "*IGNORE_YAW*" (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(shadow '*IGNORE_YAW* (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(defconstant mavros_msgs::GlobalPositionTarget::*IGNORE_YAW* 1024)
(intern "*IGNORE_YAW_RATE*" (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(shadow '*IGNORE_YAW_RATE* (find-package "MAVROS_MSGS::GLOBALPOSITIONTARGET"))
(defconstant mavros_msgs::GlobalPositionTarget::*IGNORE_YAW_RATE* 2048)
(defclass mavros_msgs::GlobalPositionTarget
  :super ros::object
  :slots (_header _coordinate_frame _type_mask _latitude _longitude _altitude _velocity _acceleration_or_force _yaw _yaw_rate ))

(defmethod mavros_msgs::GlobalPositionTarget
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:coordinate_frame __coordinate_frame) 0)
    ((:type_mask __type_mask) 0)
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:acceleration_or_force __acceleration_or_force) (instance geometry_msgs::Vector3 :init))
    ((:yaw __yaw) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _coordinate_frame (round __coordinate_frame))
   (setq _type_mask (round __type_mask))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _velocity __velocity)
   (setq _acceleration_or_force __acceleration_or_force)
   (setq _yaw (float __yaw))
   (setq _yaw_rate (float __yaw_rate))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:coordinate_frame
   (&optional __coordinate_frame)
   (if __coordinate_frame (setq _coordinate_frame __coordinate_frame)) _coordinate_frame)
  (:type_mask
   (&optional __type_mask)
   (if __type_mask (setq _type_mask __type_mask)) _type_mask)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:acceleration_or_force
   (&rest __acceleration_or_force)
   (if (keywordp (car __acceleration_or_force))
       (send* _acceleration_or_force __acceleration_or_force)
     (progn
       (if __acceleration_or_force (setq _acceleration_or_force (car __acceleration_or_force)))
       _acceleration_or_force)))
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _coordinate_frame
    1
    ;; uint16 _type_mask
    2
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float32 _altitude
    4
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Vector3 _acceleration_or_force
    (send _acceleration_or_force :serialization-length)
    ;; float32 _yaw
    4
    ;; float32 _yaw_rate
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _coordinate_frame
       (write-byte _coordinate_frame s)
     ;; uint16 _type_mask
       (write-word _type_mask s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Vector3 _acceleration_or_force
       (send _acceleration_or_force :serialize s)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _coordinate_frame
     (setq _coordinate_frame (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _type_mask
     (setq _type_mask (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _altitude
     (setq _altitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Vector3 _acceleration_or_force
     (send _acceleration_or_force :deserialize buf ptr-) (incf ptr- (send _acceleration_or_force :serialization-length))
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mavros_msgs::GlobalPositionTarget :md5sum-) "076ded0190b9e045f9c55264659ef102")
(setf (get mavros_msgs::GlobalPositionTarget :datatype-) "mavros_msgs/GlobalPositionTarget")
(setf (get mavros_msgs::GlobalPositionTarget :definition-)
      "# Message for SET_POSITION_TARGET_GLOBAL_INT
#
# https://mavlink.io/en/messages/common.html#SET_POSITION_TARGET_GLOBAL_INT
# Some complex system requires all feautures that mavlink
# message provide. See issue #402, #415.

std_msgs/Header header

uint8 coordinate_frame
uint8 FRAME_GLOBAL_INT = 5
uint8 FRAME_GLOBAL_REL_ALT = 6
uint8 FRAME_GLOBAL_TERRAIN_ALT = 11

uint16 type_mask
uint16 IGNORE_LATITUDE = 1	# Position ignore flags
uint16 IGNORE_LONGITUDE = 2
uint16 IGNORE_ALTITUDE = 4
uint16 IGNORE_VX = 8	# Velocity vector ignore flags
uint16 IGNORE_VY = 16
uint16 IGNORE_VZ = 32
uint16 IGNORE_AFX = 64	# Acceleration/Force vector ignore flags
uint16 IGNORE_AFY = 128
uint16 IGNORE_AFZ = 256
uint16 FORCE = 512	# Force in af vector flag
uint16 IGNORE_YAW = 1024
uint16 IGNORE_YAW_RATE = 2048

float64 latitude
float64 longitude
float32 altitude	# in meters, AMSL or above terrain
geometry_msgs/Vector3 velocity
geometry_msgs/Vector3 acceleration_or_force
float32 yaw
float32 yaw_rate

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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :mavros_msgs/GlobalPositionTarget "076ded0190b9e045f9c55264659ef102")


