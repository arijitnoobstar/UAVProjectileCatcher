;; Auto-generated. Do not edit!


(when (boundp 'hector_uav_msgs::MotorStatus)
  (if (not (find-package "HECTOR_UAV_MSGS"))
    (make-package "HECTOR_UAV_MSGS"))
  (shadow 'MotorStatus (find-package "HECTOR_UAV_MSGS")))
(unless (find-package "HECTOR_UAV_MSGS::MOTORSTATUS")
  (make-package "HECTOR_UAV_MSGS::MOTORSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MotorStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hector_uav_msgs::MotorStatus
  :super ros::object
  :slots (_header _on _running _voltage _frequency _current ))

(defmethod hector_uav_msgs::MotorStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:on __on) nil)
    ((:running __running) nil)
    ((:voltage __voltage) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:frequency __frequency) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:current __current) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _on __on)
   (setq _running __running)
   (setq _voltage __voltage)
   (setq _frequency __frequency)
   (setq _current __current)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:on
   (&optional __on)
   (if __on (setq _on __on)) _on)
  (:running
   (&optional __running)
   (if __running (setq _running __running)) _running)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _on
    1
    ;; bool _running
    1
    ;; float32[] _voltage
    (* 4    (length _voltage)) 4
    ;; float32[] _frequency
    (* 4    (length _frequency)) 4
    ;; float32[] _current
    (* 4    (length _current)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _on
       (if _on (write-byte -1 s) (write-byte 0 s))
     ;; bool _running
       (if _running (write-byte -1 s) (write-byte 0 s))
     ;; float32[] _voltage
     (write-long (length _voltage) s)
     (dotimes (i (length _voltage))
       (sys::poke (elt _voltage i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _frequency
     (write-long (length _frequency) s)
     (dotimes (i (length _frequency))
       (sys::poke (elt _frequency i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _current
     (write-long (length _current) s)
     (dotimes (i (length _current))
       (sys::poke (elt _current i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _on
     (setq _on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _running
     (setq _running (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32[] _voltage
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _voltage (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _voltage i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _frequency
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frequency (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _frequency i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _current
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _current i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get hector_uav_msgs::MotorStatus :md5sum-) "d771017cd812838d32da48fbe32b0928")
(setf (get hector_uav_msgs::MotorStatus :datatype-) "hector_uav_msgs/MotorStatus")
(setf (get hector_uav_msgs::MotorStatus :definition-)
      "Header header
bool on
bool running
float32[] voltage
float32[] frequency
float32[] current


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



(provide :hector_uav_msgs/MotorStatus "d771017cd812838d32da48fbe32b0928")


