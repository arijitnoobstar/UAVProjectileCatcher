;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::AttitudeTarget)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'AttitudeTarget (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::ATTITUDETARGET")
  (make-package "MAVROS_MSGS::ATTITUDETARGET"))

(in-package "ROS")
;;//! \htmlinclude AttitudeTarget.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*IGNORE_ROLL_RATE*" (find-package "MAVROS_MSGS::ATTITUDETARGET"))
(shadow '*IGNORE_ROLL_RATE* (find-package "MAVROS_MSGS::ATTITUDETARGET"))
(defconstant mavros_msgs::AttitudeTarget::*IGNORE_ROLL_RATE* 1)
(intern "*IGNORE_PITCH_RATE*" (find-package "MAVROS_MSGS::ATTITUDETARGET"))
(shadow '*IGNORE_PITCH_RATE* (find-package "MAVROS_MSGS::ATTITUDETARGET"))
(defconstant mavros_msgs::AttitudeTarget::*IGNORE_PITCH_RATE* 2)
(intern "*IGNORE_YAW_RATE*" (find-package "MAVROS_MSGS::ATTITUDETARGET"))
(shadow '*IGNORE_YAW_RATE* (find-package "MAVROS_MSGS::ATTITUDETARGET"))
(defconstant mavros_msgs::AttitudeTarget::*IGNORE_YAW_RATE* 4)
(intern "*IGNORE_THRUST*" (find-package "MAVROS_MSGS::ATTITUDETARGET"))
(shadow '*IGNORE_THRUST* (find-package "MAVROS_MSGS::ATTITUDETARGET"))
(defconstant mavros_msgs::AttitudeTarget::*IGNORE_THRUST* 64)
(intern "*IGNORE_ATTITUDE*" (find-package "MAVROS_MSGS::ATTITUDETARGET"))
(shadow '*IGNORE_ATTITUDE* (find-package "MAVROS_MSGS::ATTITUDETARGET"))
(defconstant mavros_msgs::AttitudeTarget::*IGNORE_ATTITUDE* 128)
(defclass mavros_msgs::AttitudeTarget
  :super ros::object
  :slots (_header _type_mask _orientation _body_rate _thrust ))

(defmethod mavros_msgs::AttitudeTarget
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type_mask __type_mask) 0)
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:body_rate __body_rate) (instance geometry_msgs::Vector3 :init))
    ((:thrust __thrust) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type_mask (round __type_mask))
   (setq _orientation __orientation)
   (setq _body_rate __body_rate)
   (setq _thrust (float __thrust))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type_mask
   (&optional __type_mask)
   (if __type_mask (setq _type_mask __type_mask)) _type_mask)
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:body_rate
   (&rest __body_rate)
   (if (keywordp (car __body_rate))
       (send* _body_rate __body_rate)
     (progn
       (if __body_rate (setq _body_rate (car __body_rate)))
       _body_rate)))
  (:thrust
   (&optional __thrust)
   (if __thrust (setq _thrust __thrust)) _thrust)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _type_mask
    1
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; geometry_msgs/Vector3 _body_rate
    (send _body_rate :serialization-length)
    ;; float32 _thrust
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _type_mask
       (write-byte _type_mask s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; geometry_msgs/Vector3 _body_rate
       (send _body_rate :serialize s)
     ;; float32 _thrust
       (sys::poke _thrust (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _type_mask
     (setq _type_mask (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; geometry_msgs/Vector3 _body_rate
     (send _body_rate :deserialize buf ptr-) (incf ptr- (send _body_rate :serialization-length))
   ;; float32 _thrust
     (setq _thrust (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mavros_msgs::AttitudeTarget :md5sum-) "456f3af666b22ccd0222ea053a86b548")
(setf (get mavros_msgs::AttitudeTarget :datatype-) "mavros_msgs/AttitudeTarget")
(setf (get mavros_msgs::AttitudeTarget :definition-)
      "# Message for SET_ATTITUDE_TARGET
#
# Some complex system requires all feautures that mavlink
# message provide. See issue #402, #418.

std_msgs/Header header

uint8 type_mask
uint8 IGNORE_ROLL_RATE = 1	# body_rate.x
uint8 IGNORE_PITCH_RATE = 2	# body_rate.y
uint8 IGNORE_YAW_RATE = 4	# body_rate.z
uint8 IGNORE_THRUST = 64
uint8 IGNORE_ATTITUDE = 128	# orientation field

geometry_msgs/Quaternion orientation
geometry_msgs/Vector3 body_rate
float32 thrust

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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

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



(provide :mavros_msgs/AttitudeTarget "456f3af666b22ccd0222ea053a86b548")


