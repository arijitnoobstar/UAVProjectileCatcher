;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::WaypointReached)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'WaypointReached (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::WAYPOINTREACHED")
  (make-package "MAVROS_MSGS::WAYPOINTREACHED"))

(in-package "ROS")
;;//! \htmlinclude WaypointReached.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::WaypointReached
  :super ros::object
  :slots (_header _wp_seq ))

(defmethod mavros_msgs::WaypointReached
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:wp_seq __wp_seq) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _wp_seq (round __wp_seq))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:wp_seq
   (&optional __wp_seq)
   (if __wp_seq (setq _wp_seq __wp_seq)) _wp_seq)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _wp_seq
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _wp_seq
       (write-word _wp_seq s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _wp_seq
     (setq _wp_seq (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get mavros_msgs::WaypointReached :md5sum-) "1cf64d072d9f6aa0a6715922bdde6a35")
(setf (get mavros_msgs::WaypointReached :datatype-) "mavros_msgs/WaypointReached")
(setf (get mavros_msgs::WaypointReached :definition-)
      "# That message represent MISSION_ITEM_REACHED
#
#   :wp_seq:    index number of reached waypoint

Header header

uint16 wp_seq

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



(provide :mavros_msgs/WaypointReached "1cf64d072d9f6aa0a6715922bdde6a35")


