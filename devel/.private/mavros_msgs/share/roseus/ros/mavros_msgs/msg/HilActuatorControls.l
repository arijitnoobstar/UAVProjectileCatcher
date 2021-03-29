;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::HilActuatorControls)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'HilActuatorControls (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::HILACTUATORCONTROLS")
  (make-package "MAVROS_MSGS::HILACTUATORCONTROLS"))

(in-package "ROS")
;;//! \htmlinclude HilActuatorControls.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::HilActuatorControls
  :super ros::object
  :slots (_header _controls _mode _flags ))

(defmethod mavros_msgs::HilActuatorControls
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:controls __controls) (make-array 16 :initial-element 0.0 :element-type :float))
    ((:mode __mode) 0)
    ((:flags __flags) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _controls __controls)
   (setq _mode (round __mode))
   (setq _flags (round __flags))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:controls
   (&optional __controls)
   (if __controls (setq _controls __controls)) _controls)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[16] _controls
    (* 4    16)
    ;; uint8 _mode
    1
    ;; uint64 _flags
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[16] _controls
     (dotimes (i 16)
       (sys::poke (elt _controls i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint64 _flags
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _flags (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _flags) (= (length (_flags . bv)) 2)) ;; bignum
              (write-long (ash (elt (_flags . bv) 0) 0) s)
              (write-long (ash (elt (_flags . bv) 1) -1) s))
             ((and (class _flags) (= (length (_flags . bv)) 1)) ;; big1
              (write-long (elt (_flags . bv) 0) s)
              (write-long (if (>= _flags 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _flags s)(write-long (if (>= _flags 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[16] _controls
   (dotimes (i (length _controls))
     (setf (elt _controls i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint64 _flags
     
#+(or :alpha :irix6 :x86_64)
      (setf _flags (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _flags (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get mavros_msgs::HilActuatorControls :md5sum-) "18482e8ef0330ac2fc9a0421be1d11c3")
(setf (get mavros_msgs::HilActuatorControls :datatype-) "mavros_msgs/HilActuatorControls")
(setf (get mavros_msgs::HilActuatorControls :definition-)
      "# HilActuatorControls.msg
#
# ROS representation of MAVLink HIL_ACTUATOR_CONTROLS
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#HIL_ACTUATOR_CONTROLS

std_msgs/Header header
float32[16] controls
uint8 mode
uint64 flags

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



(provide :mavros_msgs/HilActuatorControls "18482e8ef0330ac2fc9a0421be1d11c3")


