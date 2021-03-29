;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::RadioStatus)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'RadioStatus (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::RADIOSTATUS")
  (make-package "MAVROS_MSGS::RADIOSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RadioStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::RadioStatus
  :super ros::object
  :slots (_header _rssi _remrssi _txbuf _noise _remnoise _rxerrors _fixed _rssi_dbm _remrssi_dbm ))

(defmethod mavros_msgs::RadioStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rssi __rssi) 0)
    ((:remrssi __remrssi) 0)
    ((:txbuf __txbuf) 0)
    ((:noise __noise) 0)
    ((:remnoise __remnoise) 0)
    ((:rxerrors __rxerrors) 0)
    ((:fixed __fixed) 0)
    ((:rssi_dbm __rssi_dbm) 0.0)
    ((:remrssi_dbm __remrssi_dbm) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _rssi (round __rssi))
   (setq _remrssi (round __remrssi))
   (setq _txbuf (round __txbuf))
   (setq _noise (round __noise))
   (setq _remnoise (round __remnoise))
   (setq _rxerrors (round __rxerrors))
   (setq _fixed (round __fixed))
   (setq _rssi_dbm (float __rssi_dbm))
   (setq _remrssi_dbm (float __remrssi_dbm))
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
  (:remrssi
   (&optional __remrssi)
   (if __remrssi (setq _remrssi __remrssi)) _remrssi)
  (:txbuf
   (&optional __txbuf)
   (if __txbuf (setq _txbuf __txbuf)) _txbuf)
  (:noise
   (&optional __noise)
   (if __noise (setq _noise __noise)) _noise)
  (:remnoise
   (&optional __remnoise)
   (if __remnoise (setq _remnoise __remnoise)) _remnoise)
  (:rxerrors
   (&optional __rxerrors)
   (if __rxerrors (setq _rxerrors __rxerrors)) _rxerrors)
  (:fixed
   (&optional __fixed)
   (if __fixed (setq _fixed __fixed)) _fixed)
  (:rssi_dbm
   (&optional __rssi_dbm)
   (if __rssi_dbm (setq _rssi_dbm __rssi_dbm)) _rssi_dbm)
  (:remrssi_dbm
   (&optional __remrssi_dbm)
   (if __remrssi_dbm (setq _remrssi_dbm __remrssi_dbm)) _remrssi_dbm)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _rssi
    1
    ;; uint8 _remrssi
    1
    ;; uint8 _txbuf
    1
    ;; uint8 _noise
    1
    ;; uint8 _remnoise
    1
    ;; uint16 _rxerrors
    2
    ;; uint16 _fixed
    2
    ;; float32 _rssi_dbm
    4
    ;; float32 _remrssi_dbm
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _rssi
       (write-byte _rssi s)
     ;; uint8 _remrssi
       (write-byte _remrssi s)
     ;; uint8 _txbuf
       (write-byte _txbuf s)
     ;; uint8 _noise
       (write-byte _noise s)
     ;; uint8 _remnoise
       (write-byte _remnoise s)
     ;; uint16 _rxerrors
       (write-word _rxerrors s)
     ;; uint16 _fixed
       (write-word _fixed s)
     ;; float32 _rssi_dbm
       (sys::poke _rssi_dbm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _remrssi_dbm
       (sys::poke _remrssi_dbm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _rssi
     (setq _rssi (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _remrssi
     (setq _remrssi (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _txbuf
     (setq _txbuf (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _noise
     (setq _noise (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _remnoise
     (setq _remnoise (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _rxerrors
     (setq _rxerrors (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _fixed
     (setq _fixed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _rssi_dbm
     (setq _rssi_dbm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _remrssi_dbm
     (setq _remrssi_dbm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mavros_msgs::RadioStatus :md5sum-) "04e4a879bb2687140da50a1a821e2190")
(setf (get mavros_msgs::RadioStatus :datatype-) "mavros_msgs/RadioStatus")
(setf (get mavros_msgs::RadioStatus :definition-)
      "# RADIO_STATUS message

std_msgs/Header header

# message data
uint8 rssi
uint8 remrssi
uint8 txbuf
uint8 noise
uint8 remnoise
uint16 rxerrors
uint16 fixed

# calculated
float32 rssi_dbm
float32 remrssi_dbm

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



(provide :mavros_msgs/RadioStatus "04e4a879bb2687140da50a1a821e2190")


