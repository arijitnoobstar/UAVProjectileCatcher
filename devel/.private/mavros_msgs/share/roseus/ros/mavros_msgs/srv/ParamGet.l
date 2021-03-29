;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::ParamGet)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'ParamGet (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::PARAMGET")
  (make-package "MAVROS_MSGS::PARAMGET"))
(unless (find-package "MAVROS_MSGS::PARAMGETREQUEST")
  (make-package "MAVROS_MSGS::PARAMGETREQUEST"))
(unless (find-package "MAVROS_MSGS::PARAMGETRESPONSE")
  (make-package "MAVROS_MSGS::PARAMGETRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::ParamGetRequest
  :super ros::object
  :slots (_param_id ))

(defmethod mavros_msgs::ParamGetRequest
  (:init
   (&key
    ((:param_id __param_id) "")
    )
   (send-super :init)
   (setq _param_id (string __param_id))
   self)
  (:param_id
   (&optional __param_id)
   (if __param_id (setq _param_id __param_id)) _param_id)
  (:serialization-length
   ()
   (+
    ;; string _param_id
    4 (length _param_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _param_id
       (write-long (length _param_id) s) (princ _param_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _param_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _param_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mavros_msgs::ParamGetResponse
  :super ros::object
  :slots (_success _value ))

(defmethod mavros_msgs::ParamGetResponse
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

(defclass mavros_msgs::ParamGet
  :super ros::object
  :slots ())

(setf (get mavros_msgs::ParamGet :md5sum-) "777d24d2a7ab1765ef009a69f464d2bc")
(setf (get mavros_msgs::ParamGet :datatype-) "mavros_msgs/ParamGet")
(setf (get mavros_msgs::ParamGet :request) mavros_msgs::ParamGetRequest)
(setf (get mavros_msgs::ParamGet :response) mavros_msgs::ParamGetResponse)

(defmethod mavros_msgs::ParamGetRequest
  (:response () (instance mavros_msgs::ParamGetResponse :init)))

(setf (get mavros_msgs::ParamGetRequest :md5sum-) "777d24d2a7ab1765ef009a69f464d2bc")
(setf (get mavros_msgs::ParamGetRequest :datatype-) "mavros_msgs/ParamGetRequest")
(setf (get mavros_msgs::ParamGetRequest :definition-)
      "# Request parameter from attached device

string param_id
---
bool success
ParamValue value


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

(setf (get mavros_msgs::ParamGetResponse :md5sum-) "777d24d2a7ab1765ef009a69f464d2bc")
(setf (get mavros_msgs::ParamGetResponse :datatype-) "mavros_msgs/ParamGetResponse")
(setf (get mavros_msgs::ParamGetResponse :definition-)
      "# Request parameter from attached device

string param_id
---
bool success
ParamValue value


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



(provide :mavros_msgs/ParamGet "777d24d2a7ab1765ef009a69f464d2bc")


