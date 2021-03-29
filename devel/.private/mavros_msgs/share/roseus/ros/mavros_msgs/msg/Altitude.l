;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::Altitude)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'Altitude (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::ALTITUDE")
  (make-package "MAVROS_MSGS::ALTITUDE"))

(in-package "ROS")
;;//! \htmlinclude Altitude.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::Altitude
  :super ros::object
  :slots (_header _monotonic _amsl _local _relative _terrain _bottom_clearance ))

(defmethod mavros_msgs::Altitude
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:monotonic __monotonic) 0.0)
    ((:amsl __amsl) 0.0)
    ((:local __local) 0.0)
    ((:relative __relative) 0.0)
    ((:terrain __terrain) 0.0)
    ((:bottom_clearance __bottom_clearance) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _monotonic (float __monotonic))
   (setq _amsl (float __amsl))
   (setq _local (float __local))
   (setq _relative (float __relative))
   (setq _terrain (float __terrain))
   (setq _bottom_clearance (float __bottom_clearance))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:monotonic
   (&optional __monotonic)
   (if __monotonic (setq _monotonic __monotonic)) _monotonic)
  (:amsl
   (&optional __amsl)
   (if __amsl (setq _amsl __amsl)) _amsl)
  (:local
   (&optional __local)
   (if __local (setq _local __local)) _local)
  (:relative
   (&optional __relative)
   (if __relative (setq _relative __relative)) _relative)
  (:terrain
   (&optional __terrain)
   (if __terrain (setq _terrain __terrain)) _terrain)
  (:bottom_clearance
   (&optional __bottom_clearance)
   (if __bottom_clearance (setq _bottom_clearance __bottom_clearance)) _bottom_clearance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _monotonic
    4
    ;; float32 _amsl
    4
    ;; float32 _local
    4
    ;; float32 _relative
    4
    ;; float32 _terrain
    4
    ;; float32 _bottom_clearance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _monotonic
       (sys::poke _monotonic (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _amsl
       (sys::poke _amsl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _local
       (sys::poke _local (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _relative
       (sys::poke _relative (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _terrain
       (sys::poke _terrain (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bottom_clearance
       (sys::poke _bottom_clearance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _monotonic
     (setq _monotonic (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _amsl
     (setq _amsl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _local
     (setq _local (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _relative
     (setq _relative (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _terrain
     (setq _terrain (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bottom_clearance
     (setq _bottom_clearance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mavros_msgs::Altitude :md5sum-) "1296a05dc5b6160be0ae04ba9ed3a3fa")
(setf (get mavros_msgs::Altitude :datatype-) "mavros_msgs/Altitude")
(setf (get mavros_msgs::Altitude :definition-)
      "# Altitude information
#
# https://mavlink.io/en/messages/common.html#ALTITUDE

std_msgs/Header header

float32 monotonic
float32 amsl
float32 local
float32 relative
float32 terrain
float32 bottom_clearance

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



(provide :mavros_msgs/Altitude "1296a05dc5b6160be0ae04ba9ed3a3fa")


