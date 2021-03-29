;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::CommandLong)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'CommandLong (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::COMMANDLONG")
  (make-package "MAVROS_MSGS::COMMANDLONG"))
(unless (find-package "MAVROS_MSGS::COMMANDLONGREQUEST")
  (make-package "MAVROS_MSGS::COMMANDLONGREQUEST"))
(unless (find-package "MAVROS_MSGS::COMMANDLONGRESPONSE")
  (make-package "MAVROS_MSGS::COMMANDLONGRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::CommandLongRequest
  :super ros::object
  :slots (_broadcast _command _confirmation _param1 _param2 _param3 _param4 _param5 _param6 _param7 ))

(defmethod mavros_msgs::CommandLongRequest
  (:init
   (&key
    ((:broadcast __broadcast) nil)
    ((:command __command) 0)
    ((:confirmation __confirmation) 0)
    ((:param1 __param1) 0.0)
    ((:param2 __param2) 0.0)
    ((:param3 __param3) 0.0)
    ((:param4 __param4) 0.0)
    ((:param5 __param5) 0.0)
    ((:param6 __param6) 0.0)
    ((:param7 __param7) 0.0)
    )
   (send-super :init)
   (setq _broadcast __broadcast)
   (setq _command (round __command))
   (setq _confirmation (round __confirmation))
   (setq _param1 (float __param1))
   (setq _param2 (float __param2))
   (setq _param3 (float __param3))
   (setq _param4 (float __param4))
   (setq _param5 (float __param5))
   (setq _param6 (float __param6))
   (setq _param7 (float __param7))
   self)
  (:broadcast
   (&optional __broadcast)
   (if __broadcast (setq _broadcast __broadcast)) _broadcast)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:confirmation
   (&optional __confirmation)
   (if __confirmation (setq _confirmation __confirmation)) _confirmation)
  (:param1
   (&optional __param1)
   (if __param1 (setq _param1 __param1)) _param1)
  (:param2
   (&optional __param2)
   (if __param2 (setq _param2 __param2)) _param2)
  (:param3
   (&optional __param3)
   (if __param3 (setq _param3 __param3)) _param3)
  (:param4
   (&optional __param4)
   (if __param4 (setq _param4 __param4)) _param4)
  (:param5
   (&optional __param5)
   (if __param5 (setq _param5 __param5)) _param5)
  (:param6
   (&optional __param6)
   (if __param6 (setq _param6 __param6)) _param6)
  (:param7
   (&optional __param7)
   (if __param7 (setq _param7 __param7)) _param7)
  (:serialization-length
   ()
   (+
    ;; bool _broadcast
    1
    ;; uint16 _command
    2
    ;; uint8 _confirmation
    1
    ;; float32 _param1
    4
    ;; float32 _param2
    4
    ;; float32 _param3
    4
    ;; float32 _param4
    4
    ;; float32 _param5
    4
    ;; float32 _param6
    4
    ;; float32 _param7
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _broadcast
       (if _broadcast (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _command
       (write-word _command s)
     ;; uint8 _confirmation
       (write-byte _confirmation s)
     ;; float32 _param1
       (sys::poke _param1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param2
       (sys::poke _param2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param3
       (sys::poke _param3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param4
       (sys::poke _param4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param5
       (sys::poke _param5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param6
       (sys::poke _param6 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param7
       (sys::poke _param7 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _broadcast
     (setq _broadcast (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _command
     (setq _command (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _confirmation
     (setq _confirmation (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _param1
     (setq _param1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param2
     (setq _param2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param3
     (setq _param3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param4
     (setq _param4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param5
     (setq _param5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param6
     (setq _param6 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param7
     (setq _param7 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros_msgs::CommandLongResponse
  :super ros::object
  :slots (_success _result ))

(defmethod mavros_msgs::CommandLongResponse
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

(defclass mavros_msgs::CommandLong
  :super ros::object
  :slots ())

(setf (get mavros_msgs::CommandLong :md5sum-) "eb9034afc87577c0a235d45b8f3437d2")
(setf (get mavros_msgs::CommandLong :datatype-) "mavros_msgs/CommandLong")
(setf (get mavros_msgs::CommandLong :request) mavros_msgs::CommandLongRequest)
(setf (get mavros_msgs::CommandLong :response) mavros_msgs::CommandLongResponse)

(defmethod mavros_msgs::CommandLongRequest
  (:response () (instance mavros_msgs::CommandLongResponse :init)))

(setf (get mavros_msgs::CommandLongRequest :md5sum-) "eb9034afc87577c0a235d45b8f3437d2")
(setf (get mavros_msgs::CommandLongRequest :datatype-) "mavros_msgs/CommandLongRequest")
(setf (get mavros_msgs::CommandLongRequest :definition-)
      "# Generic COMMAND_LONG

bool broadcast # send this command in broadcast mode

uint16 command
uint8 confirmation
float32 param1
float32 param2
float32 param3
float32 param4
float32 param5	# x_lat
float32 param6	# y_lon
float32 param7	# z_alt
---
bool success
# raw result returned by COMMAND_ACK
uint8 result

")

(setf (get mavros_msgs::CommandLongResponse :md5sum-) "eb9034afc87577c0a235d45b8f3437d2")
(setf (get mavros_msgs::CommandLongResponse :datatype-) "mavros_msgs/CommandLongResponse")
(setf (get mavros_msgs::CommandLongResponse :definition-)
      "# Generic COMMAND_LONG

bool broadcast # send this command in broadcast mode

uint16 command
uint8 confirmation
float32 param1
float32 param2
float32 param3
float32 param4
float32 param5	# x_lat
float32 param6	# y_lon
float32 param7	# z_alt
---
bool success
# raw result returned by COMMAND_ACK
uint8 result

")



(provide :mavros_msgs/CommandLong "eb9034afc87577c0a235d45b8f3437d2")


