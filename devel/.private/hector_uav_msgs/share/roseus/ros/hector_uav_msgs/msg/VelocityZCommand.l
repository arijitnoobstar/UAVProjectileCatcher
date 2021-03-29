;; Auto-generated. Do not edit!


(when (boundp 'hector_uav_msgs::VelocityZCommand)
  (if (not (find-package "HECTOR_UAV_MSGS"))
    (make-package "HECTOR_UAV_MSGS"))
  (shadow 'VelocityZCommand (find-package "HECTOR_UAV_MSGS")))
(unless (find-package "HECTOR_UAV_MSGS::VELOCITYZCOMMAND")
  (make-package "HECTOR_UAV_MSGS::VELOCITYZCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude VelocityZCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hector_uav_msgs::VelocityZCommand
  :super ros::object
  :slots (_header _z ))

(defmethod hector_uav_msgs::VelocityZCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _z (float __z))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hector_uav_msgs::VelocityZCommand :md5sum-) "68efb57c1ccbb065338578afbfc54ec5")
(setf (get hector_uav_msgs::VelocityZCommand :datatype-) "hector_uav_msgs/VelocityZCommand")
(setf (get hector_uav_msgs::VelocityZCommand :definition-)
      "Header header
float32 z

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



(provide :hector_uav_msgs/VelocityZCommand "68efb57c1ccbb065338578afbfc54ec5")


