;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::LogRequestData)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'LogRequestData (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::LOGREQUESTDATA")
  (make-package "MAVROS_MSGS::LOGREQUESTDATA"))
(unless (find-package "MAVROS_MSGS::LOGREQUESTDATAREQUEST")
  (make-package "MAVROS_MSGS::LOGREQUESTDATAREQUEST"))
(unless (find-package "MAVROS_MSGS::LOGREQUESTDATARESPONSE")
  (make-package "MAVROS_MSGS::LOGREQUESTDATARESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::LogRequestDataRequest
  :super ros::object
  :slots (_id _offset _count ))

(defmethod mavros_msgs::LogRequestDataRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:offset __offset) 0)
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _offset (round __offset))
   (setq _count (round __count))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; uint16 _id
    2
    ;; uint32 _offset
    4
    ;; uint32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _id
       (write-word _id s)
     ;; uint32 _offset
       (write-long _offset s)
     ;; uint32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _offset
     (setq _offset (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros_msgs::LogRequestDataResponse
  :super ros::object
  :slots (_success ))

(defmethod mavros_msgs::LogRequestDataResponse
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

(defclass mavros_msgs::LogRequestData
  :super ros::object
  :slots ())

(setf (get mavros_msgs::LogRequestData :md5sum-) "91170669bcd08438f0440f9b4d12a11a")
(setf (get mavros_msgs::LogRequestData :datatype-) "mavros_msgs/LogRequestData")
(setf (get mavros_msgs::LogRequestData :request) mavros_msgs::LogRequestDataRequest)
(setf (get mavros_msgs::LogRequestData :response) mavros_msgs::LogRequestDataResponse)

(defmethod mavros_msgs::LogRequestDataRequest
  (:response () (instance mavros_msgs::LogRequestDataResponse :init)))

(setf (get mavros_msgs::LogRequestDataRequest :md5sum-) "91170669bcd08438f0440f9b4d12a11a")
(setf (get mavros_msgs::LogRequestDataRequest :datatype-) "mavros_msgs/LogRequestDataRequest")
(setf (get mavros_msgs::LogRequestDataRequest :definition-)
      "# Request a chunk of a log
#
#  :id: - log id from LogEntry message
#  :offset: - offset into the log
#  :count: - number of bytes to get

uint16 id
uint32 offset
uint32 count
---
bool success

")

(setf (get mavros_msgs::LogRequestDataResponse :md5sum-) "91170669bcd08438f0440f9b4d12a11a")
(setf (get mavros_msgs::LogRequestDataResponse :datatype-) "mavros_msgs/LogRequestDataResponse")
(setf (get mavros_msgs::LogRequestDataResponse :definition-)
      "# Request a chunk of a log
#
#  :id: - log id from LogEntry message
#  :offset: - offset into the log
#  :count: - number of bytes to get

uint16 id
uint32 offset
uint32 count
---
bool success

")



(provide :mavros_msgs/LogRequestData "91170669bcd08438f0440f9b4d12a11a")


