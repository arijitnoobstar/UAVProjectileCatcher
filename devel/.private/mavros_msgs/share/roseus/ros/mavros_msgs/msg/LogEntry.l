;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::LogEntry)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'LogEntry (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::LOGENTRY")
  (make-package "MAVROS_MSGS::LOGENTRY"))

(in-package "ROS")
;;//! \htmlinclude LogEntry.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::LogEntry
  :super ros::object
  :slots (_header _id _num_logs _last_log_num _time_utc _size ))

(defmethod mavros_msgs::LogEntry
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:num_logs __num_logs) 0)
    ((:last_log_num __last_log_num) 0)
    ((:time_utc __time_utc) (instance ros::time :init))
    ((:size __size) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _num_logs (round __num_logs))
   (setq _last_log_num (round __last_log_num))
   (setq _time_utc __time_utc)
   (setq _size (round __size))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:num_logs
   (&optional __num_logs)
   (if __num_logs (setq _num_logs __num_logs)) _num_logs)
  (:last_log_num
   (&optional __last_log_num)
   (if __last_log_num (setq _last_log_num __last_log_num)) _last_log_num)
  (:time_utc
   (&optional __time_utc)
   (if __time_utc (setq _time_utc __time_utc)) _time_utc)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _id
    2
    ;; uint16 _num_logs
    2
    ;; uint16 _last_log_num
    2
    ;; time _time_utc
    8
    ;; uint32 _size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _id
       (write-word _id s)
     ;; uint16 _num_logs
       (write-word _num_logs s)
     ;; uint16 _last_log_num
       (write-word _last_log_num s)
     ;; time _time_utc
       (write-long (send _time_utc :sec) s) (write-long (send _time_utc :nsec) s)
     ;; uint32 _size
       (write-long _size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _num_logs
     (setq _num_logs (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _last_log_num
     (setq _last_log_num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; time _time_utc
     (send _time_utc :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_utc :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mavros_msgs::LogEntry :md5sum-) "a1428fc1ec4b2bfc8ab0c0ead7cce571")
(setf (get mavros_msgs::LogEntry :datatype-) "mavros_msgs/LogEntry")
(setf (get mavros_msgs::LogEntry :definition-)
      "# Information about a single log
#
#  :id: - log id
#  :num_logs: - total number of logs
#  :last_log_num: - id of last log
#  :time_utc: - UTC timestamp of log (ros::Time(0) if not available)
#  :size: - size of log in bytes (may be approximate)

std_msgs/Header header

uint16 id
uint16 num_logs
uint16 last_log_num
time time_utc
uint32 size

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



(provide :mavros_msgs/LogEntry "a1428fc1ec4b2bfc8ab0c0ead7cce571")


