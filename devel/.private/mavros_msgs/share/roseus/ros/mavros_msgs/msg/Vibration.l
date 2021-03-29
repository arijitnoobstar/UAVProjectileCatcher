;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::Vibration)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'Vibration (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::VIBRATION")
  (make-package "MAVROS_MSGS::VIBRATION"))

(in-package "ROS")
;;//! \htmlinclude Vibration.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::Vibration
  :super ros::object
  :slots (_header _vibration _clipping ))

(defmethod mavros_msgs::Vibration
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vibration __vibration) (instance geometry_msgs::Vector3 :init))
    ((:clipping __clipping) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _vibration __vibration)
   (setq _clipping __clipping)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vibration
   (&rest __vibration)
   (if (keywordp (car __vibration))
       (send* _vibration __vibration)
     (progn
       (if __vibration (setq _vibration (car __vibration)))
       _vibration)))
  (:clipping
   (&optional __clipping)
   (if __clipping (setq _clipping __clipping)) _clipping)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _vibration
    (send _vibration :serialization-length)
    ;; float32[3] _clipping
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _vibration
       (send _vibration :serialize s)
     ;; float32[3] _clipping
     (dotimes (i 3)
       (sys::poke (elt _clipping i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _vibration
     (send _vibration :deserialize buf ptr-) (incf ptr- (send _vibration :serialization-length))
   ;; float32[3] _clipping
   (dotimes (i (length _clipping))
     (setf (elt _clipping i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get mavros_msgs::Vibration :md5sum-) "eb92bf9b7aa735dfcd06b3ede5027d02")
(setf (get mavros_msgs::Vibration :datatype-) "mavros_msgs/Vibration")
(setf (get mavros_msgs::Vibration :definition-)
      "# VIBRATION message data
# @description: Vibration levels and accelerometer clipping

std_msgs/Header header

geometry_msgs/Vector3 vibration		# 3-axis vibration levels
float32[3] clipping				# Accelerometers clipping
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



(provide :mavros_msgs/Vibration "eb92bf9b7aa735dfcd06b3ede5027d02")


