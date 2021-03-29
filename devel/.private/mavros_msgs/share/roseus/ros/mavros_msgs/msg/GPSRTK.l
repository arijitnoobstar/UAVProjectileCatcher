;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::GPSRTK)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'GPSRTK (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::GPSRTK")
  (make-package "MAVROS_MSGS::GPSRTK"))

(in-package "ROS")
;;//! \htmlinclude GPSRTK.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::GPSRTK
  :super ros::object
  :slots (_header _rtk_receiver_id _wn _tow _rtk_health _rtk_rate _nsats _baseline_a _baseline_b _baseline_c _accuracy _iar_num_hypotheses ))

(defmethod mavros_msgs::GPSRTK
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rtk_receiver_id __rtk_receiver_id) 0)
    ((:wn __wn) 0)
    ((:tow __tow) 0)
    ((:rtk_health __rtk_health) 0)
    ((:rtk_rate __rtk_rate) 0)
    ((:nsats __nsats) 0)
    ((:baseline_a __baseline_a) 0)
    ((:baseline_b __baseline_b) 0)
    ((:baseline_c __baseline_c) 0)
    ((:accuracy __accuracy) 0)
    ((:iar_num_hypotheses __iar_num_hypotheses) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _rtk_receiver_id (round __rtk_receiver_id))
   (setq _wn (round __wn))
   (setq _tow (round __tow))
   (setq _rtk_health (round __rtk_health))
   (setq _rtk_rate (round __rtk_rate))
   (setq _nsats (round __nsats))
   (setq _baseline_a (round __baseline_a))
   (setq _baseline_b (round __baseline_b))
   (setq _baseline_c (round __baseline_c))
   (setq _accuracy (round __accuracy))
   (setq _iar_num_hypotheses (round __iar_num_hypotheses))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rtk_receiver_id
   (&optional __rtk_receiver_id)
   (if __rtk_receiver_id (setq _rtk_receiver_id __rtk_receiver_id)) _rtk_receiver_id)
  (:wn
   (&optional __wn)
   (if __wn (setq _wn __wn)) _wn)
  (:tow
   (&optional __tow)
   (if __tow (setq _tow __tow)) _tow)
  (:rtk_health
   (&optional __rtk_health)
   (if __rtk_health (setq _rtk_health __rtk_health)) _rtk_health)
  (:rtk_rate
   (&optional __rtk_rate)
   (if __rtk_rate (setq _rtk_rate __rtk_rate)) _rtk_rate)
  (:nsats
   (&optional __nsats)
   (if __nsats (setq _nsats __nsats)) _nsats)
  (:baseline_a
   (&optional __baseline_a)
   (if __baseline_a (setq _baseline_a __baseline_a)) _baseline_a)
  (:baseline_b
   (&optional __baseline_b)
   (if __baseline_b (setq _baseline_b __baseline_b)) _baseline_b)
  (:baseline_c
   (&optional __baseline_c)
   (if __baseline_c (setq _baseline_c __baseline_c)) _baseline_c)
  (:accuracy
   (&optional __accuracy)
   (if __accuracy (setq _accuracy __accuracy)) _accuracy)
  (:iar_num_hypotheses
   (&optional __iar_num_hypotheses)
   (if __iar_num_hypotheses (setq _iar_num_hypotheses __iar_num_hypotheses)) _iar_num_hypotheses)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _rtk_receiver_id
    1
    ;; int16 _wn
    2
    ;; uint32 _tow
    4
    ;; uint8 _rtk_health
    1
    ;; uint8 _rtk_rate
    1
    ;; uint8 _nsats
    1
    ;; int32 _baseline_a
    4
    ;; int32 _baseline_b
    4
    ;; int32 _baseline_c
    4
    ;; uint32 _accuracy
    4
    ;; int32 _iar_num_hypotheses
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _rtk_receiver_id
       (write-byte _rtk_receiver_id s)
     ;; int16 _wn
       (write-word _wn s)
     ;; uint32 _tow
       (write-long _tow s)
     ;; uint8 _rtk_health
       (write-byte _rtk_health s)
     ;; uint8 _rtk_rate
       (write-byte _rtk_rate s)
     ;; uint8 _nsats
       (write-byte _nsats s)
     ;; int32 _baseline_a
       (write-long _baseline_a s)
     ;; int32 _baseline_b
       (write-long _baseline_b s)
     ;; int32 _baseline_c
       (write-long _baseline_c s)
     ;; uint32 _accuracy
       (write-long _accuracy s)
     ;; int32 _iar_num_hypotheses
       (write-long _iar_num_hypotheses s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _rtk_receiver_id
     (setq _rtk_receiver_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _wn
     (setq _wn (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _tow
     (setq _tow (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _rtk_health
     (setq _rtk_health (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rtk_rate
     (setq _rtk_rate (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _nsats
     (setq _nsats (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _baseline_a
     (setq _baseline_a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _baseline_b
     (setq _baseline_b (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _baseline_c
     (setq _baseline_c (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _accuracy
     (setq _accuracy (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _iar_num_hypotheses
     (setq _iar_num_hypotheses (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mavros_msgs::GPSRTK :md5sum-) "ab2651768aa6464b60b7bc8ae031e017")
(setf (get mavros_msgs::GPSRTK :datatype-) "mavros_msgs/GPSRTK")
(setf (get mavros_msgs::GPSRTK :definition-)
      "# FCU GPS RTK message for the gps_status plugin
# A copy of <a href=\"https://mavlink.io/en/messages/common.html#GPS_RTK\">mavlink GPS_RTK message</a>

std_msgs/Header header

uint8 rtk_receiver_id      # Identification of connected RTK receiver.
int16 wn                   # GPS Week Number of last baseline.
uint32 tow                 # [ms] GPS Time of Week of last baseline.
uint8 rtk_health           # GPS-specific health report for RTK data.
uint8 rtk_rate             # [Hz] Rate of baseline messages being received by GPS.
uint8 nsats                # Current number of sats used for RTK calculation.
int32 baseline_a           # [mm] Current baseline in ECEF x or NED north component, depends on header.frame_id.
int32 baseline_b           # [mm] Current baseline in ECEF y or NED east component, depends on header.frame_id.
int32 baseline_c           # [mm] Current baseline in ECEF z or NED down component, depends on header.frame_id.
uint32 accuracy            # Current estimate of baseline accuracy.
int32 iar_num_hypotheses   # Current number of integer ambiguity hypotheses.



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



(provide :mavros_msgs/GPSRTK "ab2651768aa6464b60b7bc8ae031e017")


