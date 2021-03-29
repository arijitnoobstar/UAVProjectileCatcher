;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::ParamSet)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'ParamSet (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::PARAMSET")
  (make-package "MAVROS_MSGS::PARAMSET"))
(unless (find-package "MAVROS_MSGS::PARAMSETREQUEST")
  (make-package "MAVROS_MSGS::PARAMSETREQUEST"))
(unless (find-package "MAVROS_MSGS::PARAMSETRESPONSE")
  (make-package "MAVROS_MSGS::PARAMSETRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::ParamSetRequest
  :super ros::object
  :slots (_param_id _value ))

(defmethod mavros_msgs::ParamSetRequest
  (:init
   (&key
    ((:param_id __param_id) "")
    ((:value __value) (instance mavros_msgs::ParamValue :init))
    )
   (send-super :init)
   (setq _param_id (string __param_id))
   (setq _value __value)
   self)
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
  (:serialization-length
   ()
   (+
    ;; string _param_id
    4 (length _param_id)
    ;; mavros_msgs/ParamValue _value
    (send _value :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _param_id
       (write-long (length _param_id) s) (princ _param_id s)
     ;; mavros_msgs/ParamValue _value
       (send _value :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _param_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _param_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; mavros_msgs/ParamValue _value
     (send _value :deserialize buf ptr-) (incf ptr- (send _value :serialization-length))
   ;;
   self)
  )

(defclass mavros_msgs::ParamSetResponse
  :super ros::object
  :slots (_success _value ))

(defmethod mavros_msgs::ParamSetResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:value __value) (instance mavros_msgs::ParamValue :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _value __value)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:value
   (&rest __value)
   (if (keywordp (car __value))
       (send* _value __value)
     (progn
       (if __value (setq _value (car __value)))
       _value)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; mavros_msgs/ParamValue _value
    (send _value :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; mavros_msgs/ParamValue _value
       (send _value :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; mavros_msgs/ParamValue _value
     (send _value :deserialize buf ptr-) (incf ptr- (send _value :serialization-length))
   ;;
   self)
  )

(defclass mavros_msgs::ParamSet
  :super ros::object
  :slots ())

(setf (get mavros_msgs::ParamSet :md5sum-) "c423cafb898fff374cbe8530ecd4d285")
(setf (get mavros_msgs::ParamSet :datatype-) "mavros_msgs/ParamSet")
(setf (get mavros_msgs::ParamSet :request) mavros_msgs::ParamSetRequest)
(setf (get mavros_msgs::ParamSet :response) mavros_msgs::ParamSetResponse)

(defmethod mavros_msgs::ParamSetRequest
  (:response () (instance mavros_msgs::ParamSetResponse :init)))

(setf (get mavros_msgs::ParamSetRequest :md5sum-) "c423cafb898fff374cbe8530ecd4d285")
(setf (get mavros_msgs::ParamSetRequest :datatype-) "mavros_msgs/ParamSetRequest")
(setf (get mavros_msgs::ParamSetRequest :definition-)
      "# Request set parameter value

string param_id
mavros_msgs/ParamValue value

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
---
bool success
mavros_msgs/ParamValue value


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

(setf (get mavros_msgs::ParamSetResponse :md5sum-) "c423cafb898fff374cbe8530ecd4d285")
(setf (get mavros_msgs::ParamSetResponse :datatype-) "mavros_msgs/ParamSetResponse")
(setf (get mavros_msgs::ParamSetResponse :definition-)
      "# Request set parameter value

string param_id
mavros_msgs/ParamValue value

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
---
bool success
mavros_msgs/ParamValue value


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



(provide :mavros_msgs/ParamSet "c423cafb898fff374cbe8530ecd4d285")


