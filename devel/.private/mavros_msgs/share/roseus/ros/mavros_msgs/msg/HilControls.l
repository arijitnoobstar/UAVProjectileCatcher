;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::HilControls)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'HilControls (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::HILCONTROLS")
  (make-package "MAVROS_MSGS::HILCONTROLS"))

(in-package "ROS")
;;//! \htmlinclude HilControls.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::HilControls
  :super ros::object
  :slots (_header _roll_ailerons _pitch_elevator _yaw_rudder _throttle _aux1 _aux2 _aux3 _aux4 _mode _nav_mode ))

(defmethod mavros_msgs::HilControls
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:roll_ailerons __roll_ailerons) 0.0)
    ((:pitch_elevator __pitch_elevator) 0.0)
    ((:yaw_rudder __yaw_rudder) 0.0)
    ((:throttle __throttle) 0.0)
    ((:aux1 __aux1) 0.0)
    ((:aux2 __aux2) 0.0)
    ((:aux3 __aux3) 0.0)
    ((:aux4 __aux4) 0.0)
    ((:mode __mode) 0)
    ((:nav_mode __nav_mode) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _roll_ailerons (float __roll_ailerons))
   (setq _pitch_elevator (float __pitch_elevator))
   (setq _yaw_rudder (float __yaw_rudder))
   (setq _throttle (float __throttle))
   (setq _aux1 (float __aux1))
   (setq _aux2 (float __aux2))
   (setq _aux3 (float __aux3))
   (setq _aux4 (float __aux4))
   (setq _mode (round __mode))
   (setq _nav_mode (round __nav_mode))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:roll_ailerons
   (&optional __roll_ailerons)
   (if __roll_ailerons (setq _roll_ailerons __roll_ailerons)) _roll_ailerons)
  (:pitch_elevator
   (&optional __pitch_elevator)
   (if __pitch_elevator (setq _pitch_elevator __pitch_elevator)) _pitch_elevator)
  (:yaw_rudder
   (&optional __yaw_rudder)
   (if __yaw_rudder (setq _yaw_rudder __yaw_rudder)) _yaw_rudder)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:aux1
   (&optional __aux1)
   (if __aux1 (setq _aux1 __aux1)) _aux1)
  (:aux2
   (&optional __aux2)
   (if __aux2 (setq _aux2 __aux2)) _aux2)
  (:aux3
   (&optional __aux3)
   (if __aux3 (setq _aux3 __aux3)) _aux3)
  (:aux4
   (&optional __aux4)
   (if __aux4 (setq _aux4 __aux4)) _aux4)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:nav_mode
   (&optional __nav_mode)
   (if __nav_mode (setq _nav_mode __nav_mode)) _nav_mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _roll_ailerons
    4
    ;; float32 _pitch_elevator
    4
    ;; float32 _yaw_rudder
    4
    ;; float32 _throttle
    4
    ;; float32 _aux1
    4
    ;; float32 _aux2
    4
    ;; float32 _aux3
    4
    ;; float32 _aux4
    4
    ;; uint8 _mode
    1
    ;; uint8 _nav_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _roll_ailerons
       (sys::poke _roll_ailerons (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch_elevator
       (sys::poke _pitch_elevator (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_rudder
       (sys::poke _yaw_rudder (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _aux1
       (sys::poke _aux1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _aux2
       (sys::poke _aux2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _aux3
       (sys::poke _aux3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _aux4
       (sys::poke _aux4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _nav_mode
       (write-byte _nav_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _roll_ailerons
     (setq _roll_ailerons (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch_elevator
     (setq _pitch_elevator (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_rudder
     (setq _yaw_rudder (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _throttle
     (setq _throttle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _aux1
     (setq _aux1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _aux2
     (setq _aux2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _aux3
     (setq _aux3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _aux4
     (setq _aux4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _nav_mode
     (setq _nav_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mavros_msgs::HilControls :md5sum-) "698148349c3a2e5720afcae2d934acca")
(setf (get mavros_msgs::HilControls :datatype-) "mavros_msgs/HilControls")
(setf (get mavros_msgs::HilControls :definition-)
      "# HilControls.msg
#
# ROS representation of MAVLink HIL_CONTROLS
# (deprecated, use HIL_ACTUATOR_CONTROLS instead)
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#HIL_CONTROLS

std_msgs/Header header
float32 roll_ailerons
float32 pitch_elevator
float32 yaw_rudder
float32 throttle
float32 aux1
float32 aux2
float32 aux3
float32 aux4
uint8 mode
uint8 nav_mode

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



(provide :mavros_msgs/HilControls "698148349c3a2e5720afcae2d934acca")


