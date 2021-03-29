;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::ESCInfoItem)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'ESCInfoItem (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::ESCINFOITEM")
  (make-package "MAVROS_MSGS::ESCINFOITEM"))

(in-package "ROS")
;;//! \htmlinclude ESCInfoItem.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::ESCInfoItem
  :super ros::object
  :slots (_header _failure_flags _error_count _temperature ))

(defmethod mavros_msgs::ESCInfoItem
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:failure_flags __failure_flags) 0)
    ((:error_count __error_count) 0)
    ((:temperature __temperature) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _failure_flags (round __failure_flags))
   (setq _error_count (round __error_count))
   (setq _temperature (round __temperature))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:failure_flags
   (&optional __failure_flags)
   (if __failure_flags (setq _failure_flags __failure_flags)) _failure_flags)
  (:error_count
   (&optional __error_count)
   (if __error_count (setq _error_count __error_count)) _error_count)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _failure_flags
    2
    ;; uint32 _error_count
    4
    ;; uint8 _temperature
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _failure_flags
       (write-word _failure_flags s)
     ;; uint32 _error_count
       (write-long _error_count s)
     ;; uint8 _temperature
       (write-byte _temperature s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _failure_flags
     (setq _failure_flags (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _error_count
     (setq _error_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _temperature
     (setq _temperature (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mavros_msgs::ESCInfoItem :md5sum-) "75e1464eb4b4334c3d96e6d91545afe5")
(setf (get mavros_msgs::ESCInfoItem :datatype-) "mavros_msgs/ESCInfoItem")
(setf (get mavros_msgs::ESCInfoItem :definition-)
      "# ESCInfoItem.msg
#
#
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#ESC_INFO

std_msgs/Header header

uint16 failure_flags
uint32 error_count
uint8 temperature


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



(provide :mavros_msgs/ESCInfoItem "75e1464eb4b4334c3d96e6d91545afe5")


