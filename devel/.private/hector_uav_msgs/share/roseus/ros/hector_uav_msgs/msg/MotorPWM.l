;; Auto-generated. Do not edit!


(when (boundp 'hector_uav_msgs::MotorPWM)
  (if (not (find-package "HECTOR_UAV_MSGS"))
    (make-package "HECTOR_UAV_MSGS"))
  (shadow 'MotorPWM (find-package "HECTOR_UAV_MSGS")))
(unless (find-package "HECTOR_UAV_MSGS::MOTORPWM")
  (make-package "HECTOR_UAV_MSGS::MOTORPWM"))

(in-package "ROS")
;;//! \htmlinclude MotorPWM.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hector_uav_msgs::MotorPWM
  :super ros::object
  :slots (_header _pwm ))

(defmethod hector_uav_msgs::MotorPWM
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pwm __pwm) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pwm __pwm)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pwm
   (&optional __pwm)
   (if __pwm (setq _pwm __pwm)) _pwm)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8[] _pwm
    (* 1    (length _pwm)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8[] _pwm
     (write-long (length _pwm) s)
     (princ _pwm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8[] _pwm
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _pwm (make-array n :element-type :char))
     (replace _pwm buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get hector_uav_msgs::MotorPWM :md5sum-) "42f78dd80f99e0208248b8a257b8a645")
(setf (get hector_uav_msgs::MotorPWM :datatype-) "hector_uav_msgs/MotorPWM")
(setf (get hector_uav_msgs::MotorPWM :definition-)
      "Header header
uint8[] pwm

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



(provide :hector_uav_msgs/MotorPWM "42f78dd80f99e0208248b8a257b8a645")


