;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::TimesyncStatus)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'TimesyncStatus (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::TIMESYNCSTATUS")
  (make-package "MAVROS_MSGS::TIMESYNCSTATUS"))

(in-package "ROS")
;;//! \htmlinclude TimesyncStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::TimesyncStatus
  :super ros::object
  :slots (_header _remote_timestamp_ns _observed_offset_ns _estimated_offset_ns _round_trip_time_ms ))

(defmethod mavros_msgs::TimesyncStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:remote_timestamp_ns __remote_timestamp_ns) 0)
    ((:observed_offset_ns __observed_offset_ns) 0)
    ((:estimated_offset_ns __estimated_offset_ns) 0)
    ((:round_trip_time_ms __round_trip_time_ms) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _remote_timestamp_ns (round __remote_timestamp_ns))
   (setq _observed_offset_ns (round __observed_offset_ns))
   (setq _estimated_offset_ns (round __estimated_offset_ns))
   (setq _round_trip_time_ms (float __round_trip_time_ms))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:remote_timestamp_ns
   (&optional __remote_timestamp_ns)
   (if __remote_timestamp_ns (setq _remote_timestamp_ns __remote_timestamp_ns)) _remote_timestamp_ns)
  (:observed_offset_ns
   (&optional __observed_offset_ns)
   (if __observed_offset_ns (setq _observed_offset_ns __observed_offset_ns)) _observed_offset_ns)
  (:estimated_offset_ns
   (&optional __estimated_offset_ns)
   (if __estimated_offset_ns (setq _estimated_offset_ns __estimated_offset_ns)) _estimated_offset_ns)
  (:round_trip_time_ms
   (&optional __round_trip_time_ms)
   (if __round_trip_time_ms (setq _round_trip_time_ms __round_trip_time_ms)) _round_trip_time_ms)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _remote_timestamp_ns
    8
    ;; int64 _observed_offset_ns
    8
    ;; int64 _estimated_offset_ns
    8
    ;; float32 _round_trip_time_ms
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint64 _remote_timestamp_ns
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _remote_timestamp_ns (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _remote_timestamp_ns) (= (length (_remote_timestamp_ns . bv)) 2)) ;; bignum
              (write-long (ash (elt (_remote_timestamp_ns . bv) 0) 0) s)
              (write-long (ash (elt (_remote_timestamp_ns . bv) 1) -1) s))
             ((and (class _remote_timestamp_ns) (= (length (_remote_timestamp_ns . bv)) 1)) ;; big1
              (write-long (elt (_remote_timestamp_ns . bv) 0) s)
              (write-long (if (>= _remote_timestamp_ns 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _remote_timestamp_ns s)(write-long (if (>= _remote_timestamp_ns 0) 0 #xffffffff) s)))
     ;; int64 _observed_offset_ns
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _observed_offset_ns (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _observed_offset_ns) (= (length (_observed_offset_ns . bv)) 2)) ;; bignum
              (write-long (ash (elt (_observed_offset_ns . bv) 0) 0) s)
              (write-long (ash (elt (_observed_offset_ns . bv) 1) -1) s))
             ((and (class _observed_offset_ns) (= (length (_observed_offset_ns . bv)) 1)) ;; big1
              (write-long (elt (_observed_offset_ns . bv) 0) s)
              (write-long (if (>= _observed_offset_ns 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _observed_offset_ns s)(write-long (if (>= _observed_offset_ns 0) 0 #xffffffff) s)))
     ;; int64 _estimated_offset_ns
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _estimated_offset_ns (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _estimated_offset_ns) (= (length (_estimated_offset_ns . bv)) 2)) ;; bignum
              (write-long (ash (elt (_estimated_offset_ns . bv) 0) 0) s)
              (write-long (ash (elt (_estimated_offset_ns . bv) 1) -1) s))
             ((and (class _estimated_offset_ns) (= (length (_estimated_offset_ns . bv)) 1)) ;; big1
              (write-long (elt (_estimated_offset_ns . bv) 0) s)
              (write-long (if (>= _estimated_offset_ns 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _estimated_offset_ns s)(write-long (if (>= _estimated_offset_ns 0) 0 #xffffffff) s)))
     ;; float32 _round_trip_time_ms
       (sys::poke _round_trip_time_ms (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint64 _remote_timestamp_ns
     
#+(or :alpha :irix6 :x86_64)
      (setf _remote_timestamp_ns (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _remote_timestamp_ns (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _observed_offset_ns
#+(or :alpha :irix6 :x86_64)
      (setf _observed_offset_ns (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _observed_offset_ns (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _estimated_offset_ns
#+(or :alpha :irix6 :x86_64)
      (setf _estimated_offset_ns (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _estimated_offset_ns (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _round_trip_time_ms
     (setq _round_trip_time_ms (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mavros_msgs::TimesyncStatus :md5sum-) "021ec8044e747bea518b441f374ba64b")
(setf (get mavros_msgs::TimesyncStatus :datatype-) "mavros_msgs/TimesyncStatus")
(setf (get mavros_msgs::TimesyncStatus :definition-)
      "# Status of the MAVLink time synchroniser

std_msgs/Header header
uint64 remote_timestamp_ns		# remote system timestamp (nanoseconds)
int64 observed_offset_ns		# raw time offset directly observed from this timesync packet (nanoseconds)
int64 estimated_offset_ns		# smoothed time offset between companion system and Mavros (nanoseconds)
float32 round_trip_time_ms		# round trip time of this timesync packet (milliseconds)
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



(provide :mavros_msgs/TimesyncStatus "021ec8044e747bea518b441f374ba64b")


