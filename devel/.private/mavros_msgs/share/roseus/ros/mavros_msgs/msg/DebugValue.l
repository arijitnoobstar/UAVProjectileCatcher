;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::DebugValue)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'DebugValue (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::DEBUGVALUE")
  (make-package "MAVROS_MSGS::DEBUGVALUE"))

(in-package "ROS")
;;//! \htmlinclude DebugValue.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*TYPE_DEBUG*" (find-package "MAVROS_MSGS::DEBUGVALUE"))
(shadow '*TYPE_DEBUG* (find-package "MAVROS_MSGS::DEBUGVALUE"))
(defconstant mavros_msgs::DebugValue::*TYPE_DEBUG* 0)
(intern "*TYPE_DEBUG_VECT*" (find-package "MAVROS_MSGS::DEBUGVALUE"))
(shadow '*TYPE_DEBUG_VECT* (find-package "MAVROS_MSGS::DEBUGVALUE"))
(defconstant mavros_msgs::DebugValue::*TYPE_DEBUG_VECT* 1)
(intern "*TYPE_DEBUG_ARRAY*" (find-package "MAVROS_MSGS::DEBUGVALUE"))
(shadow '*TYPE_DEBUG_ARRAY* (find-package "MAVROS_MSGS::DEBUGVALUE"))
(defconstant mavros_msgs::DebugValue::*TYPE_DEBUG_ARRAY* 2)
(intern "*TYPE_NAMED_VALUE_FLOAT*" (find-package "MAVROS_MSGS::DEBUGVALUE"))
(shadow '*TYPE_NAMED_VALUE_FLOAT* (find-package "MAVROS_MSGS::DEBUGVALUE"))
(defconstant mavros_msgs::DebugValue::*TYPE_NAMED_VALUE_FLOAT* 3)
(intern "*TYPE_NAMED_VALUE_INT*" (find-package "MAVROS_MSGS::DEBUGVALUE"))
(shadow '*TYPE_NAMED_VALUE_INT* (find-package "MAVROS_MSGS::DEBUGVALUE"))
(defconstant mavros_msgs::DebugValue::*TYPE_NAMED_VALUE_INT* 4)
(defclass mavros_msgs::DebugValue
  :super ros::object
  :slots (_header _index _name _value_float _value_int _data _type ))

(defmethod mavros_msgs::DebugValue
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:index __index) 0)
    ((:name __name) "")
    ((:value_float __value_float) 0.0)
    ((:value_int __value_int) 0)
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _index (round __index))
   (setq _name (string __name))
   (setq _value_float (float __value_float))
   (setq _value_int (round __value_int))
   (setq _data __data)
   (setq _type (round __type))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:value_float
   (&optional __value_float)
   (if __value_float (setq _value_float __value_float)) _value_float)
  (:value_int
   (&optional __value_int)
   (if __value_int (setq _value_int __value_int)) _value_int)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _index
    4
    ;; string _name
    4 (length _name)
    ;; float32 _value_float
    4
    ;; int32 _value_int
    4
    ;; float32[] _data
    (* 4    (length _data)) 4
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _index
       (write-long _index s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _value_float
       (sys::poke _value_float (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _value_int
       (write-long _value_int s)
     ;; float32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _value_float
     (setq _value_float (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _value_int
     (setq _value_int (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mavros_msgs::DebugValue :md5sum-) "af412ff7223c64155e7e3c6b7508eaaa")
(setf (get mavros_msgs::DebugValue :datatype-) "mavros_msgs/DebugValue")
(setf (get mavros_msgs::DebugValue :definition-)
      "# Msg for Debug MAVLink API
#
# Supported types:
# DEBUG			https://mavlink.io/en/messages/common.html#DEBUG
# DEBUG_VECTOR			https://mavlink.io/en/messages/common.html#DEBUG_VECT
# NAMED_VALUE_FLOAT		https://mavlink.io/en/messages/common.html#NAMED_VALUE_FLOAT
# NAMED_VALUE_INT		https://mavlink.io/en/messages/common.html#NAMED_VALUE_INT
# @TODO: add support for DEBUG_ARRAY (https://github.com/mavlink/mavlink/pull/734)

std_msgs/Header header

int32 index			# index value of DEBUG value (-1 if not indexed)

string name			# value name/key

float32 value_float		# float value for NAMED_VALUE_FLOAT and DEBUG
int32 value_int		# int value for NAMED_VALUE_INT
float32[] data			# DEBUG vector or array

uint8 type
uint8 TYPE_DEBUG		= 0
uint8 TYPE_DEBUG_VECT		= 1
uint8 TYPE_DEBUG_ARRAY		= 2
uint8 TYPE_NAMED_VALUE_FLOAT	= 3
uint8 TYPE_NAMED_VALUE_INT	= 4

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



(provide :mavros_msgs/DebugValue "af412ff7223c64155e7e3c6b7508eaaa")


