;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::ParamValue)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'ParamValue (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::PARAMVALUE")
  (make-package "MAVROS_MSGS::PARAMVALUE"))

(in-package "ROS")
;;//! \htmlinclude ParamValue.msg.html


(defclass mavros_msgs::ParamValue
  :super ros::object
  :slots (_integer _real ))

(defmethod mavros_msgs::ParamValue
  (:init
   (&key
    ((:integer __integer) 0)
    ((:real __real) 0.0)
    )
   (send-super :init)
   (setq _integer (round __integer))
   (setq _real (float __real))
   self)
  (:integer
   (&optional __integer)
   (if __integer (setq _integer __integer)) _integer)
  (:real
   (&optional __real)
   (if __real (setq _real __real)) _real)
  (:serialization-length
   ()
   (+
    ;; int64 _integer
    8
    ;; float64 _real
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _integer
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _integer (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _integer) (= (length (_integer . bv)) 2)) ;; bignum
              (write-long (ash (elt (_integer . bv) 0) 0) s)
              (write-long (ash (elt (_integer . bv) 1) -1) s))
             ((and (class _integer) (= (length (_integer . bv)) 1)) ;; big1
              (write-long (elt (_integer . bv) 0) s)
              (write-long (if (>= _integer 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _integer s)(write-long (if (>= _integer 0) 0 #xffffffff) s)))
     ;; float64 _real
       (sys::poke _real (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _integer
#+(or :alpha :irix6 :x86_64)
      (setf _integer (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _integer (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _real
     (setq _real (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mavros_msgs::ParamValue :md5sum-) "e2cb1c7a0f6ef0c62d450cd9362c980d")
(setf (get mavros_msgs::ParamValue :datatype-) "mavros_msgs/ParamValue")
(setf (get mavros_msgs::ParamValue :definition-)
      "# Parameter value storage type.
#
# Integer and float fields:
#
# if integer != 0: it is integer value
# else if real != 0.0: it is float value
# else: it is zero.

int64 integer
float64 real

")



(provide :mavros_msgs/ParamValue "e2cb1c7a0f6ef0c62d450cd9362c980d")


