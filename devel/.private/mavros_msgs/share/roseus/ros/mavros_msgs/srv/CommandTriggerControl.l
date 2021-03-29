;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::CommandTriggerControl)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'CommandTriggerControl (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::COMMANDTRIGGERCONTROL")
  (make-package "MAVROS_MSGS::COMMANDTRIGGERCONTROL"))
(unless (find-package "MAVROS_MSGS::COMMANDTRIGGERCONTROLREQUEST")
  (make-package "MAVROS_MSGS::COMMANDTRIGGERCONTROLREQUEST"))
(unless (find-package "MAVROS_MSGS::COMMANDTRIGGERCONTROLRESPONSE")
  (make-package "MAVROS_MSGS::COMMANDTRIGGERCONTROLRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::CommandTriggerControlRequest
  :super ros::object
  :slots (_trigger_enable _sequence_reset _trigger_pause ))

(defmethod mavros_msgs::CommandTriggerControlRequest
  (:init
   (&key
    ((:trigger_enable __trigger_enable) nil)
    ((:sequence_reset __sequence_reset) nil)
    ((:trigger_pause __trigger_pause) nil)
    )
   (send-super :init)
   (setq _trigger_enable __trigger_enable)
   (setq _sequence_reset __sequence_reset)
   (setq _trigger_pause __trigger_pause)
   self)
  (:trigger_enable
   (&optional __trigger_enable)
   (if __trigger_enable (setq _trigger_enable __trigger_enable)) _trigger_enable)
  (:sequence_reset
   (&optional __sequence_reset)
   (if __sequence_reset (setq _sequence_reset __sequence_reset)) _sequence_reset)
  (:trigger_pause
   (&optional __trigger_pause)
   (if __trigger_pause (setq _trigger_pause __trigger_pause)) _trigger_pause)
  (:serialization-length
   ()
   (+
    ;; bool _trigger_enable
    1
    ;; bool _sequence_reset
    1
    ;; bool _trigger_pause
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _trigger_enable
       (if _trigger_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _sequence_reset
       (if _sequence_reset (write-byte -1 s) (write-byte 0 s))
     ;; bool _trigger_pause
       (if _trigger_pause (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _trigger_enable
     (setq _trigger_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _sequence_reset
     (setq _sequence_reset (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _trigger_pause
     (setq _trigger_pause (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros_msgs::CommandTriggerControlResponse
  :super ros::object
  :slots (_success _result ))

(defmethod mavros_msgs::CommandTriggerControlResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _result (round __result))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros_msgs::CommandTriggerControl
  :super ros::object
  :slots ())

(setf (get mavros_msgs::CommandTriggerControl :md5sum-) "65be46a6918cb61b7dceb7c9ba9b1c97")
(setf (get mavros_msgs::CommandTriggerControl :datatype-) "mavros_msgs/CommandTriggerControl")
(setf (get mavros_msgs::CommandTriggerControl :request) mavros_msgs::CommandTriggerControlRequest)
(setf (get mavros_msgs::CommandTriggerControl :response) mavros_msgs::CommandTriggerControlResponse)

(defmethod mavros_msgs::CommandTriggerControlRequest
  (:response () (instance mavros_msgs::CommandTriggerControlResponse :init)))

(setf (get mavros_msgs::CommandTriggerControlRequest :md5sum-) "65be46a6918cb61b7dceb7c9ba9b1c97")
(setf (get mavros_msgs::CommandTriggerControlRequest :datatype-) "mavros_msgs/CommandTriggerControlRequest")
(setf (get mavros_msgs::CommandTriggerControlRequest :definition-)
      "# Type for controlling onboard camera triggering system

bool    trigger_enable		# Trigger enable/disable
bool    sequence_reset		# Reset the trigger sequence
bool    trigger_pause		# Pause triggering, but without switching the camera off or retracting it.
---
bool success
uint8 result

")

(setf (get mavros_msgs::CommandTriggerControlResponse :md5sum-) "65be46a6918cb61b7dceb7c9ba9b1c97")
(setf (get mavros_msgs::CommandTriggerControlResponse :datatype-) "mavros_msgs/CommandTriggerControlResponse")
(setf (get mavros_msgs::CommandTriggerControlResponse :definition-)
      "# Type for controlling onboard camera triggering system

bool    trigger_enable		# Trigger enable/disable
bool    sequence_reset		# Reset the trigger sequence
bool    trigger_pause		# Pause triggering, but without switching the camera off or retracting it.
---
bool success
uint8 result

")



(provide :mavros_msgs/CommandTriggerControl "65be46a6918cb61b7dceb7c9ba9b1c97")


