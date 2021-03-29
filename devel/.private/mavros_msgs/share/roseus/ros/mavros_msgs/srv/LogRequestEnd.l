;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::LogRequestEnd)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'LogRequestEnd (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::LOGREQUESTEND")
  (make-package "MAVROS_MSGS::LOGREQUESTEND"))
(unless (find-package "MAVROS_MSGS::LOGREQUESTENDREQUEST")
  (make-package "MAVROS_MSGS::LOGREQUESTENDREQUEST"))
(unless (find-package "MAVROS_MSGS::LOGREQUESTENDRESPONSE")
  (make-package "MAVROS_MSGS::LOGREQUESTENDRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::LogRequestEndRequest
  :super ros::object
  :slots ())

(defmethod mavros_msgs::LogRequestEndRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass mavros_msgs::LogRequestEndResponse
  :super ros::object
  :slots (_success ))

(defmethod mavros_msgs::LogRequestEndResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros_msgs::LogRequestEnd
  :super ros::object
  :slots ())

(setf (get mavros_msgs::LogRequestEnd :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get mavros_msgs::LogRequestEnd :datatype-) "mavros_msgs/LogRequestEnd")
(setf (get mavros_msgs::LogRequestEnd :request) mavros_msgs::LogRequestEndRequest)
(setf (get mavros_msgs::LogRequestEnd :response) mavros_msgs::LogRequestEndResponse)

(defmethod mavros_msgs::LogRequestEndRequest
  (:response () (instance mavros_msgs::LogRequestEndResponse :init)))

(setf (get mavros_msgs::LogRequestEndRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get mavros_msgs::LogRequestEndRequest :datatype-) "mavros_msgs/LogRequestEndRequest")
(setf (get mavros_msgs::LogRequestEndRequest :definition-)
      "# Stop log transfer and resume normal logging

---
bool success

")

(setf (get mavros_msgs::LogRequestEndResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get mavros_msgs::LogRequestEndResponse :datatype-) "mavros_msgs/LogRequestEndResponse")
(setf (get mavros_msgs::LogRequestEndResponse :definition-)
      "# Stop log transfer and resume normal logging

---
bool success

")



(provide :mavros_msgs/LogRequestEnd "358e233cde0c8a8bcfea4ce193f8fc15")


