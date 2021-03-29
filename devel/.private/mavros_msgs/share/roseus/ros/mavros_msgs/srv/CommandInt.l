;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::CommandInt)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'CommandInt (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::COMMANDINT")
  (make-package "MAVROS_MSGS::COMMANDINT"))
(unless (find-package "MAVROS_MSGS::COMMANDINTREQUEST")
  (make-package "MAVROS_MSGS::COMMANDINTREQUEST"))
(unless (find-package "MAVROS_MSGS::COMMANDINTRESPONSE")
  (make-package "MAVROS_MSGS::COMMANDINTRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::CommandIntRequest
  :super ros::object
  :slots (_broadcast _frame _command _current _autocontinue _param1 _param2 _param3 _param4 _x _y _z ))

(defmethod mavros_msgs::CommandIntRequest
  (:init
   (&key
    ((:broadcast __broadcast) nil)
    ((:frame __frame) 0)
    ((:command __command) 0)
    ((:current __current) 0)
    ((:autocontinue __autocontinue) 0)
    ((:param1 __param1) 0.0)
    ((:param2 __param2) 0.0)
    ((:param3 __param3) 0.0)
    ((:param4 __param4) 0.0)
    ((:x __x) 0)
    ((:y __y) 0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _broadcast __broadcast)
   (setq _frame (round __frame))
   (setq _command (round __command))
   (setq _current (round __current))
   (setq _autocontinue (round __autocontinue))
   (setq _param1 (float __param1))
   (setq _param2 (float __param2))
   (setq _param3 (float __param3))
   (setq _param4 (float __param4))
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _z (float __z))
   self)
  (:broadcast
   (&optional __broadcast)
   (if __broadcast (setq _broadcast __broadcast)) _broadcast)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:autocontinue
   (&optional __autocontinue)
   (if __autocontinue (setq _autocontinue __autocontinue)) _autocontinue)
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
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; bool _broadcast
    1
    ;; uint8 _frame
    1
    ;; uint16 _command
    2
    ;; uint8 _current
    1
    ;; uint8 _autocontinue
    1
    ;; float32 _param1
    4
    ;; float32 _param2
    4
    ;; float32 _param3
    4
    ;; float32 _param4
    4
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; float32 _z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _broadcast
       (if _broadcast (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _frame
       (write-byte _frame s)
     ;; uint16 _command
       (write-word _command s)
     ;; uint8 _current
       (write-byte _current s)
     ;; uint8 _autocontinue
       (write-byte _autocontinue s)
     ;; float32 _param1
       (sys::poke _param1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param2
       (sys::poke _param2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param3
       (sys::poke _param3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _param4
       (sys::poke _param4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _broadcast
     (setq _broadcast (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _frame
     (setq _frame (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _command
     (setq _command (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _current
     (setq _current (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _autocontinue
     (setq _autocontinue (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _param1
     (setq _param1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param2
     (setq _param2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param3
     (setq _param3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _param4
     (setq _param4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros_msgs::CommandIntResponse
  :super ros::object
  :slots (_success ))

(defmethod mavros_msgs::CommandIntResponse
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

(defclass mavros_msgs::CommandInt
  :super ros::object
  :slots ())

(setf (get mavros_msgs::CommandInt :md5sum-) "5d5fd287bf3d27ad6ec508b1692f3b09")
(setf (get mavros_msgs::CommandInt :datatype-) "mavros_msgs/CommandInt")
(setf (get mavros_msgs::CommandInt :request) mavros_msgs::CommandIntRequest)
(setf (get mavros_msgs::CommandInt :response) mavros_msgs::CommandIntResponse)

(defmethod mavros_msgs::CommandIntRequest
  (:response () (instance mavros_msgs::CommandIntResponse :init)))

(setf (get mavros_msgs::CommandIntRequest :md5sum-) "5d5fd287bf3d27ad6ec508b1692f3b09")
(setf (get mavros_msgs::CommandIntRequest :datatype-) "mavros_msgs/CommandIntRequest")
(setf (get mavros_msgs::CommandIntRequest :definition-)
      "# Generic COMMAND_INT

bool broadcast # send this command in broadcast mode

uint8 frame
uint16 command
uint8 current
uint8 autocontinue
float32 param1
float32 param2
float32 param3
float32 param4
int32 x	# latitude in deg * 1E7 or local x * 1E4 m
int32 y	# longitude in deg * 1E7 or local y * 1E4 m
float32 z	# altitude
---
bool success
# seems that this message don't produce andy COMMAND_ACK messages
# so no result field

")

(setf (get mavros_msgs::CommandIntResponse :md5sum-) "5d5fd287bf3d27ad6ec508b1692f3b09")
(setf (get mavros_msgs::CommandIntResponse :datatype-) "mavros_msgs/CommandIntResponse")
(setf (get mavros_msgs::CommandIntResponse :definition-)
      "# Generic COMMAND_INT

bool broadcast # send this command in broadcast mode

uint8 frame
uint16 command
uint8 current
uint8 autocontinue
float32 param1
float32 param2
float32 param3
float32 param4
int32 x	# latitude in deg * 1E7 or local x * 1E4 m
int32 y	# longitude in deg * 1E7 or local y * 1E4 m
float32 z	# altitude
---
bool success
# seems that this message don't produce andy COMMAND_ACK messages
# so no result field

")



(provide :mavros_msgs/CommandInt "5d5fd287bf3d27ad6ec508b1692f3b09")


