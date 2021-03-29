;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::RCIn)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'RCIn (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::RCIN")
  (make-package "MAVROS_MSGS::RCIN"))

(in-package "ROS")
;;//! \htmlinclude RCIn.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::RCIn
  :super ros::object
  :slots (_header _rssi _channels ))

(defmethod mavros_msgs::RCIn
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rssi __rssi) 0)
    ((:channels __channels) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _rssi (round __rssi))
   (setq _channels __channels)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rssi
   (&optional __rssi)
   (if __rssi (setq _rssi __rssi)) _rssi)
  (:channels
   (&optional __channels)
   (if __channels (setq _channels __channels)) _channels)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _rssi
    1
    ;; uint16[] _channels
    (* 2    (length _channels)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _rssi
       (write-byte _rssi s)
     ;; uint16[] _channels
     (write-long (length _channels) s)
     (dotimes (i (length _channels))
       (write-word (elt _channels i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _rssi
     (setq _rssi (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16[] _channels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _channels (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _channels i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get mavros_msgs::RCIn :md5sum-) "1c3eafdb5efbcda3c334e1788bbcfe39")
(setf (get mavros_msgs::RCIn :datatype-) "mavros_msgs/RCIn")
(setf (get mavros_msgs::RCIn :definition-)
      "# RAW RC input state

std_msgs/Header header
uint8 rssi
uint16[] channels

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



(provide :mavros_msgs/RCIn "1c3eafdb5efbcda3c334e1788bbcfe39")


