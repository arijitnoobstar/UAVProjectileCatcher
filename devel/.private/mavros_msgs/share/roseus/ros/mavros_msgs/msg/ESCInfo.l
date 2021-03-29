;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::ESCInfo)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'ESCInfo (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::ESCINFO")
  (make-package "MAVROS_MSGS::ESCINFO"))

(in-package "ROS")
;;//! \htmlinclude ESCInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::ESCInfo
  :super ros::object
  :slots (_header _counter _count _connection_type _info _esc_info ))

(defmethod mavros_msgs::ESCInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:counter __counter) 0)
    ((:count __count) 0)
    ((:connection_type __connection_type) 0)
    ((:info __info) 0)
    ((:esc_info __esc_info) (let (r) (dotimes (i 0) (push (instance mavros_msgs::ESCInfoItem :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _counter (round __counter))
   (setq _count (round __count))
   (setq _connection_type (round __connection_type))
   (setq _info (round __info))
   (setq _esc_info __esc_info)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:counter
   (&optional __counter)
   (if __counter (setq _counter __counter)) _counter)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:connection_type
   (&optional __connection_type)
   (if __connection_type (setq _connection_type __connection_type)) _connection_type)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:esc_info
   (&rest __esc_info)
   (if (keywordp (car __esc_info))
       (send* _esc_info __esc_info)
     (progn
       (if __esc_info (setq _esc_info (car __esc_info)))
       _esc_info)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _counter
    2
    ;; uint8 _count
    1
    ;; uint8 _connection_type
    1
    ;; uint8 _info
    1
    ;; mavros_msgs/ESCInfoItem[] _esc_info
    (apply #'+ (send-all _esc_info :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _counter
       (write-word _counter s)
     ;; uint8 _count
       (write-byte _count s)
     ;; uint8 _connection_type
       (write-byte _connection_type s)
     ;; uint8 _info
       (write-byte _info s)
     ;; mavros_msgs/ESCInfoItem[] _esc_info
     (write-long (length _esc_info) s)
     (dolist (elem _esc_info)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _counter
     (setq _counter (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _count
     (setq _count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _connection_type
     (setq _connection_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _info
     (setq _info (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; mavros_msgs/ESCInfoItem[] _esc_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _esc_info (let (r) (dotimes (i n) (push (instance mavros_msgs::ESCInfoItem :init) r)) r))
     (dolist (elem- _esc_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mavros_msgs::ESCInfo :md5sum-) "0dadbe17da7077cfe645928710920e5e")
(setf (get mavros_msgs::ESCInfo :datatype-) "mavros_msgs/ESCInfo")
(setf (get mavros_msgs::ESCInfo :definition-)
      "# ESCInfo.msg
#
#
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#ESC_INFO

std_msgs/Header header

uint16 counter
uint8 count
uint8 connection_type
uint8 info
mavros_msgs/ESCInfoItem[] esc_info


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
MSG: mavros_msgs/ESCInfoItem
# ESCInfoItem.msg
#
#
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#ESC_INFO

std_msgs/Header header

uint16 failure_flags
uint32 error_count
uint8 temperature


")



(provide :mavros_msgs/ESCInfo "0dadbe17da7077cfe645928710920e5e")


