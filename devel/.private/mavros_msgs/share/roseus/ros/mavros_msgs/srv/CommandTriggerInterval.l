;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::CommandTriggerInterval)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'CommandTriggerInterval (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::COMMANDTRIGGERINTERVAL")
  (make-package "MAVROS_MSGS::COMMANDTRIGGERINTERVAL"))
(unless (find-package "MAVROS_MSGS::COMMANDTRIGGERINTERVALREQUEST")
  (make-package "MAVROS_MSGS::COMMANDTRIGGERINTERVALREQUEST"))
(unless (find-package "MAVROS_MSGS::COMMANDTRIGGERINTERVALRESPONSE")
  (make-package "MAVROS_MSGS::COMMANDTRIGGERINTERVALRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::CommandTriggerIntervalRequest
  :super ros::object
  :slots (_cycle_time _integration_time ))

(defmethod mavros_msgs::CommandTriggerIntervalRequest
  (:init
   (&key
    ((:cycle_time __cycle_time) 0.0)
    ((:integration_time __integration_time) 0.0)
    )
   (send-super :init)
   (setq _cycle_time (float __cycle_time))
   (setq _integration_time (float __integration_time))
   self)
  (:cycle_time
   (&optional __cycle_time)
   (if __cycle_time (setq _cycle_time __cycle_time)) _cycle_time)
  (:integration_time
   (&optional __integration_time)
   (if __integration_time (setq _integration_time __integration_time)) _integration_time)
  (:serialization-length
   ()
   (+
    ;; float32 _cycle_time
    4
    ;; float32 _integration_time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _cycle_time
       (sys::poke _cycle_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _integration_time
       (sys::poke _integration_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _cycle_time
     (setq _cycle_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _integration_time
     (setq _integration_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros_msgs::CommandTriggerIntervalResponse
  :super ros::object
  :slots (_success _result ))

(defmethod mavros_msgs::CommandTriggerIntervalResponse
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

(defclass mavros_msgs::CommandTriggerInterval
  :super ros::object
  :slots ())

(setf (get mavros_msgs::CommandTriggerInterval :md5sum-) "b16f28a04389d5d47ddaa9e025e7383a")
(setf (get mavros_msgs::CommandTriggerInterval :datatype-) "mavros_msgs/CommandTriggerInterval")
(setf (get mavros_msgs::CommandTriggerInterval :request) mavros_msgs::CommandTriggerIntervalRequest)
(setf (get mavros_msgs::CommandTriggerInterval :response) mavros_msgs::CommandTriggerIntervalResponse)

(defmethod mavros_msgs::CommandTriggerIntervalRequest
  (:response () (instance mavros_msgs::CommandTriggerIntervalResponse :init)))

(setf (get mavros_msgs::CommandTriggerIntervalRequest :md5sum-) "b16f28a04389d5d47ddaa9e025e7383a")
(setf (get mavros_msgs::CommandTriggerIntervalRequest :datatype-) "mavros_msgs/CommandTriggerIntervalRequest")
(setf (get mavros_msgs::CommandTriggerIntervalRequest :definition-)
      "# Type for controlling camera trigger interval and integration time

float32   cycle_time			# Trigger cycle_time (interval between to triggers) - set to 0 to ignore command
float32   integration_time	# Camera shutter integration_time - set to 0 to ignore command
---
bool success
uint8 result
")

(setf (get mavros_msgs::CommandTriggerIntervalResponse :md5sum-) "b16f28a04389d5d47ddaa9e025e7383a")
(setf (get mavros_msgs::CommandTriggerIntervalResponse :datatype-) "mavros_msgs/CommandTriggerIntervalResponse")
(setf (get mavros_msgs::CommandTriggerIntervalResponse :definition-)
      "# Type for controlling camera trigger interval and integration time

float32   cycle_time			# Trigger cycle_time (interval between to triggers) - set to 0 to ignore command
float32   integration_time	# Camera shutter integration_time - set to 0 to ignore command
---
bool success
uint8 result
")



(provide :mavros_msgs/CommandTriggerInterval "b16f28a04389d5d47ddaa9e025e7383a")


