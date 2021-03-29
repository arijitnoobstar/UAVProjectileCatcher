;; Auto-generated. Do not edit!


(when (boundp 'hector_uav_msgs::HeadingCommand)
  (if (not (find-package "HECTOR_UAV_MSGS"))
    (make-package "HECTOR_UAV_MSGS"))
  (shadow 'HeadingCommand (find-package "HECTOR_UAV_MSGS")))
(unless (find-package "HECTOR_UAV_MSGS::HEADINGCOMMAND")
  (make-package "HECTOR_UAV_MSGS::HEADINGCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude HeadingCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hector_uav_msgs::HeadingCommand
  :super ros::object
  :slots (_header _heading ))

(defmethod hector_uav_msgs::HeadingCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:heading __heading) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _heading (float __heading))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _heading
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _heading
     (setq _heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hector_uav_msgs::HeadingCommand :md5sum-) "bbd082d3b4bc79a5314bb6f95aaedc70")
(setf (get hector_uav_msgs::HeadingCommand :datatype-) "hector_uav_msgs/HeadingCommand")
(setf (get hector_uav_msgs::HeadingCommand :definition-)
      "Header header
float32 heading

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



(provide :hector_uav_msgs/HeadingCommand "bbd082d3b4bc79a5314bb6f95aaedc70")


