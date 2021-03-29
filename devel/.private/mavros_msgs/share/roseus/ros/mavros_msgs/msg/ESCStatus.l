;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::ESCStatus)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'ESCStatus (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::ESCSTATUS")
  (make-package "MAVROS_MSGS::ESCSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ESCStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::ESCStatus
  :super ros::object
  :slots (_header _esc_status ))

(defmethod mavros_msgs::ESCStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:esc_status __esc_status) (let (r) (dotimes (i 0) (push (instance mavros_msgs::ESCStatusItem :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _esc_status __esc_status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:esc_status
   (&rest __esc_status)
   (if (keywordp (car __esc_status))
       (send* _esc_status __esc_status)
     (progn
       (if __esc_status (setq _esc_status (car __esc_status)))
       _esc_status)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mavros_msgs/ESCStatusItem[] _esc_status
    (apply #'+ (send-all _esc_status :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mavros_msgs/ESCStatusItem[] _esc_status
     (write-long (length _esc_status) s)
     (dolist (elem _esc_status)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mavros_msgs/ESCStatusItem[] _esc_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _esc_status (let (r) (dotimes (i n) (push (instance mavros_msgs::ESCStatusItem :init) r)) r))
     (dolist (elem- _esc_status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mavros_msgs::ESCStatus :md5sum-) "145d49eaf5cfecbdfd50ae4a22fe82d4")
(setf (get mavros_msgs::ESCStatus :datatype-) "mavros_msgs/ESCStatus")
(setf (get mavros_msgs::ESCStatus :definition-)
      "# ESCStatus.msg
#
#
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#ESC_STATUS

std_msgs/Header header

mavros_msgs/ESCStatusItem[] esc_status

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
MSG: mavros_msgs/ESCStatusItem
# ESCStatusItem.msg
#
#
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#ESC_STATUS

std_msgs/Header header

int32 rpm
float32 voltage
float32 current

")



(provide :mavros_msgs/ESCStatus "145d49eaf5cfecbdfd50ae4a22fe82d4")


