;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::VFR_HUD)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'VFR_HUD (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::VFR_HUD")
  (make-package "MAVROS_MSGS::VFR_HUD"))

(in-package "ROS")
;;//! \htmlinclude VFR_HUD.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::VFR_HUD
  :super ros::object
  :slots (_header _airspeed _groundspeed _heading _throttle _altitude _climb ))

(defmethod mavros_msgs::VFR_HUD
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:airspeed __airspeed) 0.0)
    ((:groundspeed __groundspeed) 0.0)
    ((:heading __heading) 0)
    ((:throttle __throttle) 0.0)
    ((:altitude __altitude) 0.0)
    ((:climb __climb) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _airspeed (float __airspeed))
   (setq _groundspeed (float __groundspeed))
   (setq _heading (round __heading))
   (setq _throttle (float __throttle))
   (setq _altitude (float __altitude))
   (setq _climb (float __climb))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:airspeed
   (&optional __airspeed)
   (if __airspeed (setq _airspeed __airspeed)) _airspeed)
  (:groundspeed
   (&optional __groundspeed)
   (if __groundspeed (setq _groundspeed __groundspeed)) _groundspeed)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:climb
   (&optional __climb)
   (if __climb (setq _climb __climb)) _climb)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _airspeed
    4
    ;; float32 _groundspeed
    4
    ;; int16 _heading
    2
    ;; float32 _throttle
    4
    ;; float32 _altitude
    4
    ;; float32 _climb
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _airspeed
       (sys::poke _airspeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _groundspeed
       (sys::poke _groundspeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _heading
       (write-word _heading s)
     ;; float32 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _climb
       (sys::poke _climb (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _airspeed
     (setq _airspeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _groundspeed
     (setq _groundspeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _heading
     (setq _heading (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _throttle
     (setq _throttle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _altitude
     (setq _altitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _climb
     (setq _climb (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mavros_msgs::VFR_HUD :md5sum-) "1f55e210c3d39fe105d44d8dc963655f")
(setf (get mavros_msgs::VFR_HUD :datatype-) "mavros_msgs/VFR_HUD")
(setf (get mavros_msgs::VFR_HUD :definition-)
      "# Metrics typically displayed on a HUD for fixed wing aircraft
#
# VFR_HUD message

std_msgs/Header header
float32 airspeed	# m/s
float32 groundspeed	# m/s
int16 heading		# degrees 0..360
float32 throttle		# normalized to 0.0..1.0
float32 altitude		# MSL
float32 climb		# current climb rate m/s

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



(provide :mavros_msgs/VFR_HUD "1f55e210c3d39fe105d44d8dc963655f")


