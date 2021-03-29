;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::LogRequestList)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'LogRequestList (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::LOGREQUESTLIST")
  (make-package "MAVROS_MSGS::LOGREQUESTLIST"))
(unless (find-package "MAVROS_MSGS::LOGREQUESTLISTREQUEST")
  (make-package "MAVROS_MSGS::LOGREQUESTLISTREQUEST"))
(unless (find-package "MAVROS_MSGS::LOGREQUESTLISTRESPONSE")
  (make-package "MAVROS_MSGS::LOGREQUESTLISTRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::LogRequestListRequest
  :super ros::object
  :slots (_start _end ))

(defmethod mavros_msgs::LogRequestListRequest
  (:init
   (&key
    ((:start __start) 0)
    ((:end __end) 0)
    )
   (send-super :init)
   (setq _start (round __start))
   (setq _end (round __end))
   self)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:end
   (&optional __end)
   (if __end (setq _end __end)) _end)
  (:serialization-length
   ()
   (+
    ;; uint16 _start
    2
    ;; uint16 _end
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _start
       (write-word _start s)
     ;; uint16 _end
       (write-word _end s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _start
     (setq _start (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _end
     (setq _end (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass mavros_msgs::LogRequestListResponse
  :super ros::object
  :slots (_success ))

(defmethod mavros_msgs::LogRequestListResponse
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

(defclass mavros_msgs::LogRequestList
  :super ros::object
  :slots ())

(setf (get mavros_msgs::LogRequestList :md5sum-) "3e2e88c935b3047e14f450bc4a90c4d2")
(setf (get mavros_msgs::LogRequestList :datatype-) "mavros_msgs/LogRequestList")
(setf (get mavros_msgs::LogRequestList :request) mavros_msgs::LogRequestListRequest)
(setf (get mavros_msgs::LogRequestList :response) mavros_msgs::LogRequestListResponse)

(defmethod mavros_msgs::LogRequestListRequest
  (:response () (instance mavros_msgs::LogRequestListResponse :init)))

(setf (get mavros_msgs::LogRequestListRequest :md5sum-) "3e2e88c935b3047e14f450bc4a90c4d2")
(setf (get mavros_msgs::LogRequestListRequest :datatype-) "mavros_msgs/LogRequestListRequest")
(setf (get mavros_msgs::LogRequestListRequest :definition-)
      "# Request a list of available logs
#
#  :start: - first log id (0 for first available)
#  :end: - last log id (0xffff for last available)

uint16 start
uint16 end
---
bool success

")

(setf (get mavros_msgs::LogRequestListResponse :md5sum-) "3e2e88c935b3047e14f450bc4a90c4d2")
(setf (get mavros_msgs::LogRequestListResponse :datatype-) "mavros_msgs/LogRequestListResponse")
(setf (get mavros_msgs::LogRequestListResponse :definition-)
      "# Request a list of available logs
#
#  :start: - first log id (0 for first available)
#  :end: - last log id (0xffff for last available)

uint16 start
uint16 end
---
bool success

")



(provide :mavros_msgs/LogRequestList "3e2e88c935b3047e14f450bc4a90c4d2")


