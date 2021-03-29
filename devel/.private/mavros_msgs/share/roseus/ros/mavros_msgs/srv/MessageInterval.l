;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::MessageInterval)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'MessageInterval (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::MESSAGEINTERVAL")
  (make-package "MAVROS_MSGS::MESSAGEINTERVAL"))
(unless (find-package "MAVROS_MSGS::MESSAGEINTERVALREQUEST")
  (make-package "MAVROS_MSGS::MESSAGEINTERVALREQUEST"))
(unless (find-package "MAVROS_MSGS::MESSAGEINTERVALRESPONSE")
  (make-package "MAVROS_MSGS::MESSAGEINTERVALRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::MessageIntervalRequest
  :super ros::object
  :slots (_message_id _message_rate ))

(defmethod mavros_msgs::MessageIntervalRequest
  (:init
   (&key
    ((:message_id __message_id) 0)
    ((:message_rate __message_rate) 0.0)
    )
   (send-super :init)
   (setq _message_id (round __message_id))
   (setq _message_rate (float __message_rate))
   self)
  (:message_id
   (&optional __message_id)
   (if __message_id (setq _message_id __message_id)) _message_id)
  (:message_rate
   (&optional __message_rate)
   (if __message_rate (setq _message_rate __message_rate)) _message_rate)
  (:serialization-length
   ()
   (+
    ;; uint32 _message_id
    4
    ;; float32 _message_rate
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _message_id
       (write-long _message_id s)
     ;; float32 _message_rate
       (sys::poke _message_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _message_id
     (setq _message_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _message_rate
     (setq _message_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros_msgs::MessageIntervalResponse
  :super ros::object
  :slots (_success ))

(defmethod mavros_msgs::MessageIntervalResponse
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

(defclass mavros_msgs::MessageInterval
  :super ros::object
  :slots ())

(setf (get mavros_msgs::MessageInterval :md5sum-) "99e633e185b7ee6b477bc9843a87b5ae")
(setf (get mavros_msgs::MessageInterval :datatype-) "mavros_msgs/MessageInterval")
(setf (get mavros_msgs::MessageInterval :request) mavros_msgs::MessageIntervalRequest)
(setf (get mavros_msgs::MessageInterval :response) mavros_msgs::MessageIntervalResponse)

(defmethod mavros_msgs::MessageIntervalRequest
  (:response () (instance mavros_msgs::MessageIntervalResponse :init)))

(setf (get mavros_msgs::MessageIntervalRequest :md5sum-) "99e633e185b7ee6b477bc9843a87b5ae")
(setf (get mavros_msgs::MessageIntervalRequest :datatype-) "mavros_msgs/MessageIntervalRequest")
(setf (get mavros_msgs::MessageIntervalRequest :definition-)
      "# sets message interval
# See MAV_CMD_SET_MESSAGE_INTERVAL

uint32 message_id
float32 message_rate
---
bool success

")

(setf (get mavros_msgs::MessageIntervalResponse :md5sum-) "99e633e185b7ee6b477bc9843a87b5ae")
(setf (get mavros_msgs::MessageIntervalResponse :datatype-) "mavros_msgs/MessageIntervalResponse")
(setf (get mavros_msgs::MessageIntervalResponse :definition-)
      "# sets message interval
# See MAV_CMD_SET_MESSAGE_INTERVAL

uint32 message_id
float32 message_rate
---
bool success

")



(provide :mavros_msgs/MessageInterval "99e633e185b7ee6b477bc9843a87b5ae")


