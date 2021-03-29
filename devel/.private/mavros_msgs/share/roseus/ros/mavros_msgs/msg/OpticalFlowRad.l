;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::OpticalFlowRad)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'OpticalFlowRad (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::OPTICALFLOWRAD")
  (make-package "MAVROS_MSGS::OPTICALFLOWRAD"))

(in-package "ROS")
;;//! \htmlinclude OpticalFlowRad.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::OpticalFlowRad
  :super ros::object
  :slots (_header _integration_time_us _integrated_x _integrated_y _integrated_xgyro _integrated_ygyro _integrated_zgyro _temperature _quality _time_delta_distance_us _distance ))

(defmethod mavros_msgs::OpticalFlowRad
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:integration_time_us __integration_time_us) 0)
    ((:integrated_x __integrated_x) 0.0)
    ((:integrated_y __integrated_y) 0.0)
    ((:integrated_xgyro __integrated_xgyro) 0.0)
    ((:integrated_ygyro __integrated_ygyro) 0.0)
    ((:integrated_zgyro __integrated_zgyro) 0.0)
    ((:temperature __temperature) 0)
    ((:quality __quality) 0)
    ((:time_delta_distance_us __time_delta_distance_us) 0)
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _integration_time_us (round __integration_time_us))
   (setq _integrated_x (float __integrated_x))
   (setq _integrated_y (float __integrated_y))
   (setq _integrated_xgyro (float __integrated_xgyro))
   (setq _integrated_ygyro (float __integrated_ygyro))
   (setq _integrated_zgyro (float __integrated_zgyro))
   (setq _temperature (round __temperature))
   (setq _quality (round __quality))
   (setq _time_delta_distance_us (round __time_delta_distance_us))
   (setq _distance (float __distance))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:integration_time_us
   (&optional __integration_time_us)
   (if __integration_time_us (setq _integration_time_us __integration_time_us)) _integration_time_us)
  (:integrated_x
   (&optional __integrated_x)
   (if __integrated_x (setq _integrated_x __integrated_x)) _integrated_x)
  (:integrated_y
   (&optional __integrated_y)
   (if __integrated_y (setq _integrated_y __integrated_y)) _integrated_y)
  (:integrated_xgyro
   (&optional __integrated_xgyro)
   (if __integrated_xgyro (setq _integrated_xgyro __integrated_xgyro)) _integrated_xgyro)
  (:integrated_ygyro
   (&optional __integrated_ygyro)
   (if __integrated_ygyro (setq _integrated_ygyro __integrated_ygyro)) _integrated_ygyro)
  (:integrated_zgyro
   (&optional __integrated_zgyro)
   (if __integrated_zgyro (setq _integrated_zgyro __integrated_zgyro)) _integrated_zgyro)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:quality
   (&optional __quality)
   (if __quality (setq _quality __quality)) _quality)
  (:time_delta_distance_us
   (&optional __time_delta_distance_us)
   (if __time_delta_distance_us (setq _time_delta_distance_us __time_delta_distance_us)) _time_delta_distance_us)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _integration_time_us
    4
    ;; float32 _integrated_x
    4
    ;; float32 _integrated_y
    4
    ;; float32 _integrated_xgyro
    4
    ;; float32 _integrated_ygyro
    4
    ;; float32 _integrated_zgyro
    4
    ;; int16 _temperature
    2
    ;; uint8 _quality
    1
    ;; uint32 _time_delta_distance_us
    4
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _integration_time_us
       (write-long _integration_time_us s)
     ;; float32 _integrated_x
       (sys::poke _integrated_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _integrated_y
       (sys::poke _integrated_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _integrated_xgyro
       (sys::poke _integrated_xgyro (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _integrated_ygyro
       (sys::poke _integrated_ygyro (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _integrated_zgyro
       (sys::poke _integrated_zgyro (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _temperature
       (write-word _temperature s)
     ;; uint8 _quality
       (write-byte _quality s)
     ;; uint32 _time_delta_distance_us
       (write-long _time_delta_distance_us s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _integration_time_us
     (setq _integration_time_us (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _integrated_x
     (setq _integrated_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _integrated_y
     (setq _integrated_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _integrated_xgyro
     (setq _integrated_xgyro (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _integrated_ygyro
     (setq _integrated_ygyro (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _integrated_zgyro
     (setq _integrated_zgyro (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _temperature
     (setq _temperature (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _quality
     (setq _quality (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _time_delta_distance_us
     (setq _time_delta_distance_us (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mavros_msgs::OpticalFlowRad :md5sum-) "65d93e03c6188c7ee30415b2a39ad40d")
(setf (get mavros_msgs::OpticalFlowRad :datatype-) "mavros_msgs/OpticalFlowRad")
(setf (get mavros_msgs::OpticalFlowRad :definition-)
      "# OPTICAL_FLOW_RAD message data

std_msgs/Header header

uint32 integration_time_us
float32 integrated_x
float32 integrated_y
float32 integrated_xgyro
float32 integrated_ygyro
float32 integrated_zgyro
int16 temperature
uint8 quality
uint32 time_delta_distance_us
float32 distance

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



(provide :mavros_msgs/OpticalFlowRad "65d93e03c6188c7ee30415b2a39ad40d")


