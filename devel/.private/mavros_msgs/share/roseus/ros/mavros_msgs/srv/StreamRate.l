;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::StreamRate)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'StreamRate (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::STREAMRATE")
  (make-package "MAVROS_MSGS::STREAMRATE"))
(unless (find-package "MAVROS_MSGS::STREAMRATEREQUEST")
  (make-package "MAVROS_MSGS::STREAMRATEREQUEST"))
(unless (find-package "MAVROS_MSGS::STREAMRATERESPONSE")
  (make-package "MAVROS_MSGS::STREAMRATERESPONSE"))

(in-package "ROS")





(intern "*STREAM_ALL*" (find-package "MAVROS_MSGS::STREAMRATEREQUEST"))
(shadow '*STREAM_ALL* (find-package "MAVROS_MSGS::STREAMRATEREQUEST"))
(defconstant mavros_msgs::StreamRateRequest::*STREAM_ALL* 0)
(intern "*STREAM_RAW_SENSORS*" (find-package "MAVROS_MSGS::STREAMRATEREQUEST"))
(shadow '*STREAM_RAW_SENSORS* (find-package "MAVROS_MSGS::STREAMRATEREQUEST"))
(defconstant mavros_msgs::StreamRateRequest::*STREAM_RAW_SENSORS* 1)
(intern "*STREAM_EXTENDED_STATUS*" (find-package "MAVROS_MSGS::STREAMRATEREQUEST"))
(shadow '*STREAM_EXTENDED_STATUS* (find-package "MAVROS_MSGS::STREAMRATEREQUEST"))
(defconstant mavros_msgs::StreamRateRequest::*STREAM_EXTENDED_STATUS* 2)
(intern "*STREAM_RC_CHANNELS*" (find-package "MAVROS_MSGS::STREAMRATEREQUEST"))
(shadow '*STREAM_RC_CHANNELS* (find-package "MAVROS_MSGS::STREAMRATEREQUEST"))
(defconstant mavros_msgs::StreamRateRequest::*STREAM_RC_CHANNELS* 3)
(intern "*STREAM_RAW_CONTROLLER*" (find-package "MAVROS_MSGS::STREAMRATEREQUEST"))
(shadow '*STREAM_RAW_CONTROLLER* (find-package "MAVROS_MSGS::STREAMRATEREQUEST"))
(defconstant mavros_msgs::StreamRateRequest::*STREAM_RAW_CONTROLLER* 4)
(intern "*STREAM_POSITION*" (find-package "MAVROS_MSGS::STREAMRATEREQUEST"))
(shadow '*STREAM_POSITION* (find-package "MAVROS_MSGS::STREAMRATEREQUEST"))
(defconstant mavros_msgs::StreamRateRequest::*STREAM_POSITION* 6)
(intern "*STREAM_EXTRA1*" (find-package "MAVROS_MSGS::STREAMRATEREQUEST"))
(shadow '*STREAM_EXTRA1* (find-package "MAVROS_MSGS::STREAMRATEREQUEST"))
(defconstant mavros_msgs::StreamRateRequest::*STREAM_EXTRA1* 10)
(intern "*STREAM_EXTRA2*" (find-package "MAVROS_MSGS::STREAMRATEREQUEST"))
(shadow '*STREAM_EXTRA2* (find-package "MAVROS_MSGS::STREAMRATEREQUEST"))
(defconstant mavros_msgs::StreamRateRequest::*STREAM_EXTRA2* 11)
(intern "*STREAM_EXTRA3*" (find-package "MAVROS_MSGS::STREAMRATEREQUEST"))
(shadow '*STREAM_EXTRA3* (find-package "MAVROS_MSGS::STREAMRATEREQUEST"))
(defconstant mavros_msgs::StreamRateRequest::*STREAM_EXTRA3* 12)
(defclass mavros_msgs::StreamRateRequest
  :super ros::object
  :slots (_stream_id _message_rate _on_off ))

(defmethod mavros_msgs::StreamRateRequest
  (:init
   (&key
    ((:stream_id __stream_id) 0)
    ((:message_rate __message_rate) 0)
    ((:on_off __on_off) nil)
    )
   (send-super :init)
   (setq _stream_id (round __stream_id))
   (setq _message_rate (round __message_rate))
   (setq _on_off __on_off)
   self)
  (:stream_id
   (&optional __stream_id)
   (if __stream_id (setq _stream_id __stream_id)) _stream_id)
  (:message_rate
   (&optional __message_rate)
   (if __message_rate (setq _message_rate __message_rate)) _message_rate)
  (:on_off
   (&optional __on_off)
   (if __on_off (setq _on_off __on_off)) _on_off)
  (:serialization-length
   ()
   (+
    ;; uint8 _stream_id
    1
    ;; uint16 _message_rate
    2
    ;; bool _on_off
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _stream_id
       (write-byte _stream_id s)
     ;; uint16 _message_rate
       (write-word _message_rate s)
     ;; bool _on_off
       (if _on_off (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _stream_id
     (setq _stream_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _message_rate
     (setq _message_rate (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _on_off
     (setq _on_off (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros_msgs::StreamRateResponse
  :super ros::object
  :slots ())

(defmethod mavros_msgs::StreamRateResponse
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

(defclass mavros_msgs::StreamRate
  :super ros::object
  :slots ())

(setf (get mavros_msgs::StreamRate :md5sum-) "d12f7661724c8ba25f67ba597bb7d039")
(setf (get mavros_msgs::StreamRate :datatype-) "mavros_msgs/StreamRate")
(setf (get mavros_msgs::StreamRate :request) mavros_msgs::StreamRateRequest)
(setf (get mavros_msgs::StreamRate :response) mavros_msgs::StreamRateResponse)

(defmethod mavros_msgs::StreamRateRequest
  (:response () (instance mavros_msgs::StreamRateResponse :init)))

(setf (get mavros_msgs::StreamRateRequest :md5sum-) "d12f7661724c8ba25f67ba597bb7d039")
(setf (get mavros_msgs::StreamRateRequest :datatype-) "mavros_msgs/StreamRateRequest")
(setf (get mavros_msgs::StreamRateRequest :definition-)
      "# sets stream rate
# See REQUEST_DATA_STREAM message

uint8 STREAM_ALL = 0
uint8 STREAM_RAW_SENSORS = 1
uint8 STREAM_EXTENDED_STATUS = 2
uint8 STREAM_RC_CHANNELS = 3
uint8 STREAM_RAW_CONTROLLER = 4
uint8 STREAM_POSITION = 6
uint8 STREAM_EXTRA1 = 10
uint8 STREAM_EXTRA2 = 11
uint8 STREAM_EXTRA3 = 12

uint8 stream_id
uint16 message_rate
bool on_off
---

")

(setf (get mavros_msgs::StreamRateResponse :md5sum-) "d12f7661724c8ba25f67ba597bb7d039")
(setf (get mavros_msgs::StreamRateResponse :datatype-) "mavros_msgs/StreamRateResponse")
(setf (get mavros_msgs::StreamRateResponse :definition-)
      "# sets stream rate
# See REQUEST_DATA_STREAM message

uint8 STREAM_ALL = 0
uint8 STREAM_RAW_SENSORS = 1
uint8 STREAM_EXTENDED_STATUS = 2
uint8 STREAM_RC_CHANNELS = 3
uint8 STREAM_RAW_CONTROLLER = 4
uint8 STREAM_POSITION = 6
uint8 STREAM_EXTRA1 = 10
uint8 STREAM_EXTRA2 = 11
uint8 STREAM_EXTRA3 = 12

uint8 stream_id
uint16 message_rate
bool on_off
---

")



(provide :mavros_msgs/StreamRate "d12f7661724c8ba25f67ba597bb7d039")


