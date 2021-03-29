;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::ADSBVehicle)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'ADSBVehicle (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::ADSBVEHICLE")
  (make-package "MAVROS_MSGS::ADSBVEHICLE"))

(in-package "ROS")
;;//! \htmlinclude ADSBVehicle.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ALT_PRESSURE_QNH*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*ALT_PRESSURE_QNH* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*ALT_PRESSURE_QNH* 0)
(intern "*ALT_GEOMETRIC*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*ALT_GEOMETRIC* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*ALT_GEOMETRIC* 1)
(intern "*EMITTER_NO_INFO*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*EMITTER_NO_INFO* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*EMITTER_NO_INFO* 0)
(intern "*EMITTER_LIGHT*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*EMITTER_LIGHT* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*EMITTER_LIGHT* 1)
(intern "*EMITTER_SMALL*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*EMITTER_SMALL* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*EMITTER_SMALL* 2)
(intern "*EMITTER_LARGE*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*EMITTER_LARGE* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*EMITTER_LARGE* 3)
(intern "*EMITTER_HIGH_VORTEX_LARGE*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*EMITTER_HIGH_VORTEX_LARGE* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*EMITTER_HIGH_VORTEX_LARGE* 4)
(intern "*EMITTER_HEAVY*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*EMITTER_HEAVY* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*EMITTER_HEAVY* 5)
(intern "*EMITTER_HIGHLY_MANUV*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*EMITTER_HIGHLY_MANUV* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*EMITTER_HIGHLY_MANUV* 6)
(intern "*EMITTER_ROTOCRAFT*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*EMITTER_ROTOCRAFT* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*EMITTER_ROTOCRAFT* 7)
(intern "*EMITTER_UNASSIGNED*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*EMITTER_UNASSIGNED* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*EMITTER_UNASSIGNED* 8)
(intern "*EMITTER_GLIDER*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*EMITTER_GLIDER* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*EMITTER_GLIDER* 9)
(intern "*EMITTER_LIGHTER_AIR*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*EMITTER_LIGHTER_AIR* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*EMITTER_LIGHTER_AIR* 10)
(intern "*EMITTER_PARACHUTE*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*EMITTER_PARACHUTE* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*EMITTER_PARACHUTE* 11)
(intern "*EMITTER_ULTRA_LIGHT*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*EMITTER_ULTRA_LIGHT* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*EMITTER_ULTRA_LIGHT* 12)
(intern "*EMITTER_UNASSIGNED2*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*EMITTER_UNASSIGNED2* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*EMITTER_UNASSIGNED2* 13)
(intern "*EMITTER_UAV*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*EMITTER_UAV* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*EMITTER_UAV* 14)
(intern "*EMITTER_SPACE*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*EMITTER_SPACE* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*EMITTER_SPACE* 15)
(intern "*EMITTER_UNASSGINED3*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*EMITTER_UNASSGINED3* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*EMITTER_UNASSGINED3* 16)
(intern "*EMITTER_EMERGENCY_SURFACE*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*EMITTER_EMERGENCY_SURFACE* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*EMITTER_EMERGENCY_SURFACE* 17)
(intern "*EMITTER_SERVICE_SURFACE*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*EMITTER_SERVICE_SURFACE* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*EMITTER_SERVICE_SURFACE* 18)
(intern "*EMITTER_POINT_OBSTACLE*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*EMITTER_POINT_OBSTACLE* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*EMITTER_POINT_OBSTACLE* 19)
(intern "*FLAG_VALID_COORDS*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*FLAG_VALID_COORDS* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*FLAG_VALID_COORDS* 1)
(intern "*FLAG_VALID_ALTITUDE*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*FLAG_VALID_ALTITUDE* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*FLAG_VALID_ALTITUDE* 2)
(intern "*FLAG_VALID_HEADING*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*FLAG_VALID_HEADING* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*FLAG_VALID_HEADING* 4)
(intern "*FLAG_VALID_VELOCITY*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*FLAG_VALID_VELOCITY* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*FLAG_VALID_VELOCITY* 8)
(intern "*FLAG_VALID_CALLSIGN*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*FLAG_VALID_CALLSIGN* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*FLAG_VALID_CALLSIGN* 16)
(intern "*FLAG_VALID_SQUAWK*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*FLAG_VALID_SQUAWK* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*FLAG_VALID_SQUAWK* 32)
(intern "*FLAG_SIMULATED*" (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(shadow '*FLAG_SIMULATED* (find-package "MAVROS_MSGS::ADSBVEHICLE"))
(defconstant mavros_msgs::ADSBVehicle::*FLAG_SIMULATED* 64)
(defclass mavros_msgs::ADSBVehicle
  :super ros::object
  :slots (_header _ICAO_address _callsign _latitude _longitude _altitude _heading _hor_velocity _ver_velocity _altitude_type _emitter_type _tslc _flags _squawk ))

(defmethod mavros_msgs::ADSBVehicle
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ICAO_address __ICAO_address) 0)
    ((:callsign __callsign) "")
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:heading __heading) 0.0)
    ((:hor_velocity __hor_velocity) 0.0)
    ((:ver_velocity __ver_velocity) 0.0)
    ((:altitude_type __altitude_type) 0)
    ((:emitter_type __emitter_type) 0)
    ((:tslc __tslc) (instance ros::time :init))
    ((:flags __flags) 0)
    ((:squawk __squawk) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ICAO_address (round __ICAO_address))
   (setq _callsign (string __callsign))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _heading (float __heading))
   (setq _hor_velocity (float __hor_velocity))
   (setq _ver_velocity (float __ver_velocity))
   (setq _altitude_type (round __altitude_type))
   (setq _emitter_type (round __emitter_type))
   (setq _tslc __tslc)
   (setq _flags (round __flags))
   (setq _squawk (round __squawk))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ICAO_address
   (&optional __ICAO_address)
   (if __ICAO_address (setq _ICAO_address __ICAO_address)) _ICAO_address)
  (:callsign
   (&optional __callsign)
   (if __callsign (setq _callsign __callsign)) _callsign)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:hor_velocity
   (&optional __hor_velocity)
   (if __hor_velocity (setq _hor_velocity __hor_velocity)) _hor_velocity)
  (:ver_velocity
   (&optional __ver_velocity)
   (if __ver_velocity (setq _ver_velocity __ver_velocity)) _ver_velocity)
  (:altitude_type
   (&optional __altitude_type)
   (if __altitude_type (setq _altitude_type __altitude_type)) _altitude_type)
  (:emitter_type
   (&optional __emitter_type)
   (if __emitter_type (setq _emitter_type __emitter_type)) _emitter_type)
  (:tslc
   (&optional __tslc)
   (if __tslc (setq _tslc __tslc)) _tslc)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:squawk
   (&optional __squawk)
   (if __squawk (setq _squawk __squawk)) _squawk)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _ICAO_address
    4
    ;; string _callsign
    4 (length _callsign)
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float32 _altitude
    4
    ;; float32 _heading
    4
    ;; float32 _hor_velocity
    4
    ;; float32 _ver_velocity
    4
    ;; uint8 _altitude_type
    1
    ;; uint8 _emitter_type
    1
    ;; duration _tslc
    8
    ;; uint16 _flags
    2
    ;; uint16 _squawk
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _ICAO_address
       (write-long _ICAO_address s)
     ;; string _callsign
       (write-long (length _callsign) s) (princ _callsign s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _hor_velocity
       (sys::poke _hor_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ver_velocity
       (sys::poke _ver_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _altitude_type
       (write-byte _altitude_type s)
     ;; uint8 _emitter_type
       (write-byte _emitter_type s)
     ;; duration _tslc
       (write-long (send _tslc :sec) s) (write-long (send _tslc :nsec) s)
     ;; uint16 _flags
       (write-word _flags s)
     ;; uint16 _squawk
       (write-word _squawk s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _ICAO_address
     (setq _ICAO_address (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _callsign
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _callsign (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _altitude
     (setq _altitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heading
     (setq _heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _hor_velocity
     (setq _hor_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ver_velocity
     (setq _ver_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _altitude_type
     (setq _altitude_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _emitter_type
     (setq _emitter_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; duration _tslc
     (send _tslc :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _tslc :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _flags
     (setq _flags (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _squawk
     (setq _squawk (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get mavros_msgs::ADSBVehicle :md5sum-) "f71cc75a8e9e7b77d92f98d9a5315fd1")
(setf (get mavros_msgs::ADSBVehicle :datatype-) "mavros_msgs/ADSBVehicle")
(setf (get mavros_msgs::ADSBVehicle :definition-)
      "# The location and information of an ADSB vehicle
#
# https://mavlink.io/en/messages/common.html#ADSB_VEHICLE

# [[[cog:
# from pymavlink.dialects.v20 import common
#
# def decl_enum(ename, pfx='', bsz=8):
#     enum = sorted(common.enums[ename].items())
#     enum.pop() # remove ENUM_END
#
#     cog.outl(\"# \" + ename)
#     for k, e in enum:
#         sn = e.name[len(ename) + 1:]
#         l = \"uint{bsz} {pfx}{sn} = {k}\".format(**locals())
#         if e.description:
#             l += ' ' * (40 - len(l)) + ' # ' + e.description
#         cog.outl(l)
#
# decl_enum('ADSB_ALTITUDE_TYPE', 'ALT_')
# decl_enum('ADSB_EMITTER_TYPE', 'EMITTER_')
# decl_enum('ADSB_FLAGS', 'FLAG_', 16)
# ]]]
# ADSB_ALTITUDE_TYPE
uint8 ALT_PRESSURE_QNH = 0               # Altitude reported from a Baro source using QNH reference
uint8 ALT_GEOMETRIC = 1                  # Altitude reported from a GNSS source
# ADSB_EMITTER_TYPE
uint8 EMITTER_NO_INFO = 0
uint8 EMITTER_LIGHT = 1
uint8 EMITTER_SMALL = 2
uint8 EMITTER_LARGE = 3
uint8 EMITTER_HIGH_VORTEX_LARGE = 4
uint8 EMITTER_HEAVY = 5
uint8 EMITTER_HIGHLY_MANUV = 6
uint8 EMITTER_ROTOCRAFT = 7
uint8 EMITTER_UNASSIGNED = 8
uint8 EMITTER_GLIDER = 9
uint8 EMITTER_LIGHTER_AIR = 10
uint8 EMITTER_PARACHUTE = 11
uint8 EMITTER_ULTRA_LIGHT = 12
uint8 EMITTER_UNASSIGNED2 = 13
uint8 EMITTER_UAV = 14
uint8 EMITTER_SPACE = 15
uint8 EMITTER_UNASSGINED3 = 16
uint8 EMITTER_EMERGENCY_SURFACE = 17
uint8 EMITTER_SERVICE_SURFACE = 18
uint8 EMITTER_POINT_OBSTACLE = 19
# ADSB_FLAGS
uint16 FLAG_VALID_COORDS = 1
uint16 FLAG_VALID_ALTITUDE = 2
uint16 FLAG_VALID_HEADING = 4
uint16 FLAG_VALID_VELOCITY = 8
uint16 FLAG_VALID_CALLSIGN = 16
uint16 FLAG_VALID_SQUAWK = 32
uint16 FLAG_SIMULATED = 64
# [[[end]]] (checksum: e35e77be43548bd572a3cb24138fc2fd)

std_msgs/Header header

uint32 ICAO_address
string callsign

float64 latitude
float64 longitude
float32 altitude 	# AMSL

float32 heading		# deg [0..360)
float32 hor_velocity	# m/s
float32 ver_velocity	# m/s

uint8 altitude_type	# Type from ADSB_ALTITUDE_TYPE enum
uint8 emitter_type	# Type from ADSB_EMITTER_TYPE enum

duration tslc		# Duration from last communication, seconds [0..255]
uint16 flags		# ADSB_FLAGS bit field
uint16 squawk		# Squawk code

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



(provide :mavros_msgs/ADSBVehicle "f71cc75a8e9e7b77d92f98d9a5315fd1")


