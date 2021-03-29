;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::ESCStatusItem)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'ESCStatusItem (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::ESCSTATUSITEM")
  (make-package "MAVROS_MSGS::ESCSTATUSITEM"))

(in-package "ROS")
;;//! \htmlinclude ESCStatusItem.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::ESCStatusItem
  :super ros::object
  :slots (_header _rpm _voltage _current ))

(defmethod mavros_msgs::ESCStatusItem
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rpm __rpm) 0)
    ((:voltage __voltage) 0.0)
    ((:current __current) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _rpm (round __rpm))
   (setq _voltage (float __voltage))
   (setq _current (float __current))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rpm
   (&optional __rpm)
   (if __rpm (setq _rpm __rpm)) _rpm)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _rpm
    4
    ;; float32 _voltage
    4
    ;; float32 _current
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _rpm
       (write-long _rpm s)
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current
       (sys::poke _current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _rpm
     (setq _rpm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current
     (setq _current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mavros_msgs::ESCStatusItem :md5sum-) "70651ef564857ec47d6e23206e2f7145")
(setf (get mavros_msgs::ESCStatusItem :datatype-) "mavros_msgs/ESCStatusItem")
(setf (get mavros_msgs::ESCStatusItem :definition-)
      "# ESCStatusItem.msg
#
#
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#ESC_STATUS

std_msgs/Header header

int32 rpm
float32 voltage
float32 current

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



(provide :mavros_msgs/ESCStatusItem "70651ef564857ec47d6e23206e2f7145")


