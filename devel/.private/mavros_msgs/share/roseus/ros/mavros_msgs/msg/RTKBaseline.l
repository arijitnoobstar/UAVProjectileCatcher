;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::RTKBaseline)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'RTKBaseline (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::RTKBASELINE")
  (make-package "MAVROS_MSGS::RTKBASELINE"))

(in-package "ROS")
;;//! \htmlinclude RTKBaseline.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*RTK_BASELINE_COORDINATE_SYSTEM_ECEF*" (find-package "MAVROS_MSGS::RTKBASELINE"))
(shadow '*RTK_BASELINE_COORDINATE_SYSTEM_ECEF* (find-package "MAVROS_MSGS::RTKBASELINE"))
(defconstant mavros_msgs::RTKBaseline::*RTK_BASELINE_COORDINATE_SYSTEM_ECEF* 0)
(intern "*RTK_BASELINE_COORDINATE_SYSTEM_NED*" (find-package "MAVROS_MSGS::RTKBASELINE"))
(shadow '*RTK_BASELINE_COORDINATE_SYSTEM_NED* (find-package "MAVROS_MSGS::RTKBASELINE"))
(defconstant mavros_msgs::RTKBaseline::*RTK_BASELINE_COORDINATE_SYSTEM_NED* 1)
(defclass mavros_msgs::RTKBaseline
  :super ros::object
  :slots (_header _time_last_baseline_ms _rtk_receiver_id _wn _tow _rtk_health _rtk_rate _nsats _baseline_coords_type _baseline_a_mm _baseline_b_mm _baseline_c_mm _accuracy _iar_num_hypotheses ))

(defmethod mavros_msgs::RTKBaseline
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_last_baseline_ms __time_last_baseline_ms) 0)
    ((:rtk_receiver_id __rtk_receiver_id) 0)
    ((:wn __wn) 0)
    ((:tow __tow) 0)
    ((:rtk_health __rtk_health) 0)
    ((:rtk_rate __rtk_rate) 0)
    ((:nsats __nsats) 0)
    ((:baseline_coords_type __baseline_coords_type) 0)
    ((:baseline_a_mm __baseline_a_mm) 0)
    ((:baseline_b_mm __baseline_b_mm) 0)
    ((:baseline_c_mm __baseline_c_mm) 0)
    ((:accuracy __accuracy) 0)
    ((:iar_num_hypotheses __iar_num_hypotheses) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_last_baseline_ms (round __time_last_baseline_ms))
   (setq _rtk_receiver_id (round __rtk_receiver_id))
   (setq _wn (round __wn))
   (setq _tow (round __tow))
   (setq _rtk_health (round __rtk_health))
   (setq _rtk_rate (round __rtk_rate))
   (setq _nsats (round __nsats))
   (setq _baseline_coords_type (round __baseline_coords_type))
   (setq _baseline_a_mm (round __baseline_a_mm))
   (setq _baseline_b_mm (round __baseline_b_mm))
   (setq _baseline_c_mm (round __baseline_c_mm))
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
  (:time_last_baseline_ms
   (&optional __time_last_baseline_ms)
   (if __time_last_baseline_ms (setq _time_last_baseline_ms __time_last_baseline_ms)) _time_last_baseline_ms)
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
  (:baseline_coords_type
   (&optional __baseline_coords_type)
   (if __baseline_coords_type (setq _baseline_coords_type __baseline_coords_type)) _baseline_coords_type)
  (:baseline_a_mm
   (&optional __baseline_a_mm)
   (if __baseline_a_mm (setq _baseline_a_mm __baseline_a_mm)) _baseline_a_mm)
  (:baseline_b_mm
   (&optional __baseline_b_mm)
   (if __baseline_b_mm (setq _baseline_b_mm __baseline_b_mm)) _baseline_b_mm)
  (:baseline_c_mm
   (&optional __baseline_c_mm)
   (if __baseline_c_mm (setq _baseline_c_mm __baseline_c_mm)) _baseline_c_mm)
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
    ;; uint32 _time_last_baseline_ms
    4
    ;; uint8 _rtk_receiver_id
    1
    ;; uint16 _wn
    2
    ;; uint32 _tow
    4
    ;; uint8 _rtk_health
    1
    ;; uint8 _rtk_rate
    1
    ;; uint8 _nsats
    1
    ;; uint8 _baseline_coords_type
    1
    ;; int32 _baseline_a_mm
    4
    ;; int32 _baseline_b_mm
    4
    ;; int32 _baseline_c_mm
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
     ;; uint32 _time_last_baseline_ms
       (write-long _time_last_baseline_ms s)
     ;; uint8 _rtk_receiver_id
       (write-byte _rtk_receiver_id s)
     ;; uint16 _wn
       (write-word _wn s)
     ;; uint32 _tow
       (write-long _tow s)
     ;; uint8 _rtk_health
       (write-byte _rtk_health s)
     ;; uint8 _rtk_rate
       (write-byte _rtk_rate s)
     ;; uint8 _nsats
       (write-byte _nsats s)
     ;; uint8 _baseline_coords_type
       (write-byte _baseline_coords_type s)
     ;; int32 _baseline_a_mm
       (write-long _baseline_a_mm s)
     ;; int32 _baseline_b_mm
       (write-long _baseline_b_mm s)
     ;; int32 _baseline_c_mm
       (write-long _baseline_c_mm s)
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
   ;; uint32 _time_last_baseline_ms
     (setq _time_last_baseline_ms (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _rtk_receiver_id
     (setq _rtk_receiver_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _wn
     (setq _wn (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _tow
     (setq _tow (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _rtk_health
     (setq _rtk_health (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rtk_rate
     (setq _rtk_rate (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _nsats
     (setq _nsats (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _baseline_coords_type
     (setq _baseline_coords_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _baseline_a_mm
     (setq _baseline_a_mm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _baseline_b_mm
     (setq _baseline_b_mm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _baseline_c_mm
     (setq _baseline_c_mm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _accuracy
     (setq _accuracy (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _iar_num_hypotheses
     (setq _iar_num_hypotheses (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mavros_msgs::RTKBaseline :md5sum-) "bd5852b76aa13136cec34a65089dfdb2")
(setf (get mavros_msgs::RTKBaseline :datatype-) "mavros_msgs/RTKBaseline")
(setf (get mavros_msgs::RTKBaseline :definition-)
      "# RTKBaseline received from the FCU.
# Full description: https://mavlink.io/en/messages/common.html#GPS_RTK
# Mavlink Common, #127and #128

std_msgs/Header header

uint32 time_last_baseline_ms
uint8 rtk_receiver_id
uint16 wn
uint32 tow
uint8 rtk_health
uint8 rtk_rate
uint8 nsats

uint8 baseline_coords_type 
uint8 RTK_BASELINE_COORDINATE_SYSTEM_ECEF = 0   # Earth-centered, earth-fixed
uint8 RTK_BASELINE_COORDINATE_SYSTEM_NED = 1    # RTK basestation centered, north, east, down

int32 baseline_a_mm
int32 baseline_b_mm
int32 baseline_c_mm
uint32 accuracy
int32 iar_num_hypotheses

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



(provide :mavros_msgs/RTKBaseline "bd5852b76aa13136cec34a65089dfdb2")


