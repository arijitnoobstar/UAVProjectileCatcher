;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::SetMavFrame)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'SetMavFrame (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::SETMAVFRAME")
  (make-package "MAVROS_MSGS::SETMAVFRAME"))
(unless (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST")
  (make-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(unless (find-package "MAVROS_MSGS::SETMAVFRAMERESPONSE")
  (make-package "MAVROS_MSGS::SETMAVFRAMERESPONSE"))

(in-package "ROS")





(intern "*FRAME_GLOBAL*" (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(shadow '*FRAME_GLOBAL* (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(defconstant mavros_msgs::SetMavFrameRequest::*FRAME_GLOBAL* 0)
(intern "*FRAME_LOCAL_NED*" (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(shadow '*FRAME_LOCAL_NED* (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(defconstant mavros_msgs::SetMavFrameRequest::*FRAME_LOCAL_NED* 1)
(intern "*FRAME_MISSION*" (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(shadow '*FRAME_MISSION* (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(defconstant mavros_msgs::SetMavFrameRequest::*FRAME_MISSION* 2)
(intern "*FRAME_GLOBAL_RELATIVE_ALT*" (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(shadow '*FRAME_GLOBAL_RELATIVE_ALT* (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(defconstant mavros_msgs::SetMavFrameRequest::*FRAME_GLOBAL_RELATIVE_ALT* 3)
(intern "*FRAME_LOCAL_ENU*" (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(shadow '*FRAME_LOCAL_ENU* (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(defconstant mavros_msgs::SetMavFrameRequest::*FRAME_LOCAL_ENU* 4)
(intern "*FRAME_GLOBAL_INT*" (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(shadow '*FRAME_GLOBAL_INT* (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(defconstant mavros_msgs::SetMavFrameRequest::*FRAME_GLOBAL_INT* 5)
(intern "*FRAME_GLOBAL_RELATIVE_ALT_INT*" (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(shadow '*FRAME_GLOBAL_RELATIVE_ALT_INT* (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(defconstant mavros_msgs::SetMavFrameRequest::*FRAME_GLOBAL_RELATIVE_ALT_INT* 6)
(intern "*FRAME_LOCAL_OFFSET_NED*" (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(shadow '*FRAME_LOCAL_OFFSET_NED* (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(defconstant mavros_msgs::SetMavFrameRequest::*FRAME_LOCAL_OFFSET_NED* 7)
(intern "*FRAME_BODY_NED*" (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(shadow '*FRAME_BODY_NED* (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(defconstant mavros_msgs::SetMavFrameRequest::*FRAME_BODY_NED* 8)
(intern "*FRAME_BODY_OFFSET_NED*" (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(shadow '*FRAME_BODY_OFFSET_NED* (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(defconstant mavros_msgs::SetMavFrameRequest::*FRAME_BODY_OFFSET_NED* 9)
(intern "*FRAME_GLOBAL_TERRAIN_ALT*" (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(shadow '*FRAME_GLOBAL_TERRAIN_ALT* (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(defconstant mavros_msgs::SetMavFrameRequest::*FRAME_GLOBAL_TERRAIN_ALT* 10)
(intern "*FRAME_GLOBAL_TERRAIN_ALT_INT*" (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(shadow '*FRAME_GLOBAL_TERRAIN_ALT_INT* (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(defconstant mavros_msgs::SetMavFrameRequest::*FRAME_GLOBAL_TERRAIN_ALT_INT* 11)
(intern "*FRAME_BODY_FRD*" (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(shadow '*FRAME_BODY_FRD* (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(defconstant mavros_msgs::SetMavFrameRequest::*FRAME_BODY_FRD* 12)
(intern "*FRAME_BODY_FLU*" (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(shadow '*FRAME_BODY_FLU* (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(defconstant mavros_msgs::SetMavFrameRequest::*FRAME_BODY_FLU* 13)
(intern "*FRAME_MOCAP_NED*" (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(shadow '*FRAME_MOCAP_NED* (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(defconstant mavros_msgs::SetMavFrameRequest::*FRAME_MOCAP_NED* 14)
(intern "*FRAME_MOCAP_ENU*" (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(shadow '*FRAME_MOCAP_ENU* (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(defconstant mavros_msgs::SetMavFrameRequest::*FRAME_MOCAP_ENU* 15)
(intern "*FRAME_VISION_NED*" (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(shadow '*FRAME_VISION_NED* (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(defconstant mavros_msgs::SetMavFrameRequest::*FRAME_VISION_NED* 16)
(intern "*FRAME_VISION_ENU*" (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(shadow '*FRAME_VISION_ENU* (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(defconstant mavros_msgs::SetMavFrameRequest::*FRAME_VISION_ENU* 17)
(intern "*FRAME_ESTIM_NED*" (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(shadow '*FRAME_ESTIM_NED* (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(defconstant mavros_msgs::SetMavFrameRequest::*FRAME_ESTIM_NED* 18)
(intern "*FRAME_ESTIM_ENU*" (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(shadow '*FRAME_ESTIM_ENU* (find-package "MAVROS_MSGS::SETMAVFRAMEREQUEST"))
(defconstant mavros_msgs::SetMavFrameRequest::*FRAME_ESTIM_ENU* 19)
(defclass mavros_msgs::SetMavFrameRequest
  :super ros::object
  :slots (_mav_frame ))

(defmethod mavros_msgs::SetMavFrameRequest
  (:init
   (&key
    ((:mav_frame __mav_frame) 0)
    )
   (send-super :init)
   (setq _mav_frame (round __mav_frame))
   self)
  (:mav_frame
   (&optional __mav_frame)
   (if __mav_frame (setq _mav_frame __mav_frame)) _mav_frame)
  (:serialization-length
   ()
   (+
    ;; uint8 _mav_frame
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mav_frame
       (write-byte _mav_frame s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mav_frame
     (setq _mav_frame (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros_msgs::SetMavFrameResponse
  :super ros::object
  :slots (_success ))

(defmethod mavros_msgs::SetMavFrameResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros_msgs::SetMavFrame
  :super ros::object
  :slots ())

(setf (get mavros_msgs::SetMavFrame :md5sum-) "1d70e285b39e6f989f9ad19447c79649")
(setf (get mavros_msgs::SetMavFrame :datatype-) "mavros_msgs/SetMavFrame")
(setf (get mavros_msgs::SetMavFrame :request) mavros_msgs::SetMavFrameRequest)
(setf (get mavros_msgs::SetMavFrame :response) mavros_msgs::SetMavFrameResponse)

(defmethod mavros_msgs::SetMavFrameRequest
  (:response () (instance mavros_msgs::SetMavFrameResponse :init)))

(setf (get mavros_msgs::SetMavFrameRequest :md5sum-) "1d70e285b39e6f989f9ad19447c79649")
(setf (get mavros_msgs::SetMavFrameRequest :datatype-) "mavros_msgs/SetMavFrameRequest")
(setf (get mavros_msgs::SetMavFrameRequest :definition-)
      "# Set MAV_FRAME for setpoints

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
# decl_enum('MAV_FRAME', 'FRAME_')
# ]]]
# MAV_FRAME
uint8 FRAME_GLOBAL = 0                   # Global (WGS84) coordinate frame + MSL altitude. First value / x: latitude, second value / y: longitude, third value / z: positive altitude over mean sea level (MSL).
uint8 FRAME_LOCAL_NED = 1                # Local coordinate frame, Z-down (x: north, y: east, z: down).
uint8 FRAME_MISSION = 2                  # NOT a coordinate frame, indicates a mission command.
uint8 FRAME_GLOBAL_RELATIVE_ALT = 3      # Global (WGS84) coordinate frame + altitude relative to the home position. First value / x: latitude, second value / y: longitude, third value / z: positive altitude with 0 being at the altitude of the home location.
uint8 FRAME_LOCAL_ENU = 4                # Local coordinate frame, Z-up (x: east, y: north, z: up).
uint8 FRAME_GLOBAL_INT = 5               # Global (WGS84) coordinate frame (scaled) + MSL altitude. First value / x: latitude in degrees*1.0e-7, second value / y: longitude in degrees*1.0e-7, third value / z: positive altitude over mean sea level (MSL).
uint8 FRAME_GLOBAL_RELATIVE_ALT_INT = 6  # Global (WGS84) coordinate frame (scaled) + altitude relative to the home position. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude with 0 being at the altitude of the home location.
uint8 FRAME_LOCAL_OFFSET_NED = 7         # Offset to the current local frame. Anything expressed in this frame should be added to the current local frame position.
uint8 FRAME_BODY_NED = 8                 # Setpoint in body NED frame. This makes sense if all position control is externalized - e.g. useful to command 2 m/s^2 acceleration to the right.
uint8 FRAME_BODY_OFFSET_NED = 9          # Offset in body NED frame. This makes sense if adding setpoints to the current flight path, to avoid an obstacle - e.g. useful to command 2 m/s^2 acceleration to the east.
uint8 FRAME_GLOBAL_TERRAIN_ALT = 10      # Global (WGS84) coordinate frame with AGL altitude (at the waypoint coordinate). First value / x: latitude in degrees, second value / y: longitude in degrees, third value / z: positive altitude in meters with 0 being at ground level in terrain model.
uint8 FRAME_GLOBAL_TERRAIN_ALT_INT = 11  # Global (WGS84) coordinate frame (scaled) with AGL altitude (at the waypoint coordinate). First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude in meters with 0 being at ground level in terrain model.
uint8 FRAME_BODY_FRD = 12                # Body fixed frame of reference, Z-down (x: forward, y: right, z: down).
uint8 FRAME_BODY_FLU = 13                # Body fixed frame of reference, Z-up (x: forward, y: left, z: up).
uint8 FRAME_MOCAP_NED = 14               # Odometry local coordinate frame of data given by a motion capture system, Z-down (x: north, y: east, z: down).
uint8 FRAME_MOCAP_ENU = 15               # Odometry local coordinate frame of data given by a motion capture system, Z-up (x: east, y: north, z: up).
uint8 FRAME_VISION_NED = 16              # Odometry local coordinate frame of data given by a vision estimation system, Z-down (x: north, y: east, z: down).
uint8 FRAME_VISION_ENU = 17              # Odometry local coordinate frame of data given by a vision estimation system, Z-up (x: east, y: north, z: up).
uint8 FRAME_ESTIM_NED = 18               # Odometry local coordinate frame of data given by an estimator running onboard the vehicle, Z-down (x: north, y: east, z: down).
uint8 FRAME_ESTIM_ENU = 19               # Odometry local coordinate frame of data given by an estimator running onboard the vehicle, Z-up (x: east, y: noth, z: up).
# [[[end]]] (checksum: 4fd94c3c9c8cf1e62b10bc7dc66e4692)

uint8 mav_frame
---
bool success

")

(setf (get mavros_msgs::SetMavFrameResponse :md5sum-) "1d70e285b39e6f989f9ad19447c79649")
(setf (get mavros_msgs::SetMavFrameResponse :datatype-) "mavros_msgs/SetMavFrameResponse")
(setf (get mavros_msgs::SetMavFrameResponse :definition-)
      "# Set MAV_FRAME for setpoints

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
# decl_enum('MAV_FRAME', 'FRAME_')
# ]]]
# MAV_FRAME
uint8 FRAME_GLOBAL = 0                   # Global (WGS84) coordinate frame + MSL altitude. First value / x: latitude, second value / y: longitude, third value / z: positive altitude over mean sea level (MSL).
uint8 FRAME_LOCAL_NED = 1                # Local coordinate frame, Z-down (x: north, y: east, z: down).
uint8 FRAME_MISSION = 2                  # NOT a coordinate frame, indicates a mission command.
uint8 FRAME_GLOBAL_RELATIVE_ALT = 3      # Global (WGS84) coordinate frame + altitude relative to the home position. First value / x: latitude, second value / y: longitude, third value / z: positive altitude with 0 being at the altitude of the home location.
uint8 FRAME_LOCAL_ENU = 4                # Local coordinate frame, Z-up (x: east, y: north, z: up).
uint8 FRAME_GLOBAL_INT = 5               # Global (WGS84) coordinate frame (scaled) + MSL altitude. First value / x: latitude in degrees*1.0e-7, second value / y: longitude in degrees*1.0e-7, third value / z: positive altitude over mean sea level (MSL).
uint8 FRAME_GLOBAL_RELATIVE_ALT_INT = 6  # Global (WGS84) coordinate frame (scaled) + altitude relative to the home position. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude with 0 being at the altitude of the home location.
uint8 FRAME_LOCAL_OFFSET_NED = 7         # Offset to the current local frame. Anything expressed in this frame should be added to the current local frame position.
uint8 FRAME_BODY_NED = 8                 # Setpoint in body NED frame. This makes sense if all position control is externalized - e.g. useful to command 2 m/s^2 acceleration to the right.
uint8 FRAME_BODY_OFFSET_NED = 9          # Offset in body NED frame. This makes sense if adding setpoints to the current flight path, to avoid an obstacle - e.g. useful to command 2 m/s^2 acceleration to the east.
uint8 FRAME_GLOBAL_TERRAIN_ALT = 10      # Global (WGS84) coordinate frame with AGL altitude (at the waypoint coordinate). First value / x: latitude in degrees, second value / y: longitude in degrees, third value / z: positive altitude in meters with 0 being at ground level in terrain model.
uint8 FRAME_GLOBAL_TERRAIN_ALT_INT = 11  # Global (WGS84) coordinate frame (scaled) with AGL altitude (at the waypoint coordinate). First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude in meters with 0 being at ground level in terrain model.
uint8 FRAME_BODY_FRD = 12                # Body fixed frame of reference, Z-down (x: forward, y: right, z: down).
uint8 FRAME_BODY_FLU = 13                # Body fixed frame of reference, Z-up (x: forward, y: left, z: up).
uint8 FRAME_MOCAP_NED = 14               # Odometry local coordinate frame of data given by a motion capture system, Z-down (x: north, y: east, z: down).
uint8 FRAME_MOCAP_ENU = 15               # Odometry local coordinate frame of data given by a motion capture system, Z-up (x: east, y: north, z: up).
uint8 FRAME_VISION_NED = 16              # Odometry local coordinate frame of data given by a vision estimation system, Z-down (x: north, y: east, z: down).
uint8 FRAME_VISION_ENU = 17              # Odometry local coordinate frame of data given by a vision estimation system, Z-up (x: east, y: north, z: up).
uint8 FRAME_ESTIM_NED = 18               # Odometry local coordinate frame of data given by an estimator running onboard the vehicle, Z-down (x: north, y: east, z: down).
uint8 FRAME_ESTIM_ENU = 19               # Odometry local coordinate frame of data given by an estimator running onboard the vehicle, Z-up (x: east, y: noth, z: up).
# [[[end]]] (checksum: 4fd94c3c9c8cf1e62b10bc7dc66e4692)

uint8 mav_frame
---
bool success

")



(provide :mavros_msgs/SetMavFrame "1d70e285b39e6f989f9ad19447c79649")


