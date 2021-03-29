;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::Param)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'Param (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::PARAM")
  (make-package "MAVROS_MSGS::PARAM"))

(in-package "ROS")
;;//! \htmlinclude Param.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::Param
  :super ros::object
  :slots (_header _param_id _value _param_index _param_count ))

(defmethod mavros_msgs::Param
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:param_id __param_id) "")
    ((:value __value) (instance mavros_msgs::ParamValue :init))
    ((:param_index __param_index) 0)
    ((:param_count __param_count) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _param_id (string __param_id))
   (setq _value __value)
   (setq _param_index (round __param_index))
   (setq _param_count (round __param_count))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:param_id
   (&optional __param_id)
   (if __param_id (setq _param_id __param_id)) _param_id)
  (:value
   (&rest __value)
   (if (keywordp (car __value))
       (send* _value __value)
     (progn
       (if __value (setq _value (car __value)))
       _value)))
  (:param_index
   (&optional __param_index)
   (if __param_index (setq _param_index __param_index)) _param_index)
  (:param_count
   (&optional __param_count)
   (if __param_count (setq _param_count __param_count)) _param_count)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _param_id
    4 (length _param_id)
    ;; mavros_msgs/ParamValue _value
    (send _value :serialization-length)
    ;; uint16 _param_index
    2
    ;; uint16 _param_count
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _param_id
       (write-long (length _param_id) s) (princ _param_id s)
     ;; mavros_msgs/ParamValue _value
       (send _value :serialize s)
     ;; uint16 _param_index
       (write-word _param_index s)
     ;; uint16 _param_count
       (write-word _param_count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _param_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _param_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; mavros_msgs/ParamValue _value
     (send _value :deserialize buf ptr-) (incf ptr- (send _value :serialization-length))
   ;; uint16 _param_index
     (setq _param_index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _param_count
     (setq _param_count (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get mavros_msgs::Param :md5sum-) "62165a8f212050223dda9583b0f22c3c")
(setf (get mavros_msgs::Param :datatype-) "mavros_msgs/Param")
(setf (get mavros_msgs::Param :definition-)
      "# Parameter msg.

std_msgs/Header header

string param_id
mavros_msgs/ParamValue value

uint16 param_index
uint16 param_count

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
MSG: mavros_msgs/ParamValue
# Parameter value storage type.
#
# Integer and float fields:
#
# if integer != 0: it is integer value
# else if real != 0.0: it is float value
# else: it is zero.

int64 integer
float64 real

")



(provide :mavros_msgs/Param "62165a8f212050223dda9583b0f22c3c")


