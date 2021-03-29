;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::CommandTOL)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'CommandTOL (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::COMMANDTOL")
  (make-package "MAVROS_MSGS::COMMANDTOL"))
(unless (find-package "MAVROS_MSGS::COMMANDTOLREQUEST")
  (make-package "MAVROS_MSGS::COMMANDTOLREQUEST"))
(unless (find-package "MAVROS_MSGS::COMMANDTOLRESPONSE")
  (make-package "MAVROS_MSGS::COMMANDTOLRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::CommandTOLRequest
  :super ros::object
  :slots (_min_pitch _yaw _latitude _longitude _altitude ))

(defmethod mavros_msgs::CommandTOLRequest
  (:init
   (&key
    ((:min_pitch __min_pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    )
   (send-super :init)
   (setq _min_pitch (float __min_pitch))
   (setq _yaw (float __yaw))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   self)
  (:min_pitch
   (&optional __min_pitch)
   (if __min_pitch (setq _min_pitch __min_pitch)) _min_pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:serialization-length
   ()
   (+
    ;; float32 _min_pitch
    4
    ;; float32 _yaw
    4
    ;; float32 _latitude
    4
    ;; float32 _longitude
    4
    ;; float32 _altitude
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _min_pitch
       (sys::poke _min_pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _min_pitch
     (setq _min_pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _latitude
     (setq _latitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude
     (setq _longitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _altitude
     (setq _altitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros_msgs::CommandTOLResponse
  :super ros::object
  :slots (_success _result ))

(defmethod mavros_msgs::CommandTOLResponse
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

(defclass mavros_msgs::CommandTOL
  :super ros::object
  :slots ())

(setf (get mavros_msgs::CommandTOL :md5sum-) "93ff4eaa9907f58c0e7a909cddce23e2")
(setf (get mavros_msgs::CommandTOL :datatype-) "mavros_msgs/CommandTOL")
(setf (get mavros_msgs::CommandTOL :request) mavros_msgs::CommandTOLRequest)
(setf (get mavros_msgs::CommandTOL :response) mavros_msgs::CommandTOLResponse)

(defmethod mavros_msgs::CommandTOLRequest
  (:response () (instance mavros_msgs::CommandTOLResponse :init)))

(setf (get mavros_msgs::CommandTOLRequest :md5sum-) "93ff4eaa9907f58c0e7a909cddce23e2")
(setf (get mavros_msgs::CommandTOLRequest :datatype-) "mavros_msgs/CommandTOLRequest")
(setf (get mavros_msgs::CommandTOLRequest :definition-)
      "# Common type for Take Off and Landing

float32 min_pitch	# used by takeoff
float32 yaw
float32 latitude
float32 longitude
float32 altitude
---
bool success
uint8 result

")

(setf (get mavros_msgs::CommandTOLResponse :md5sum-) "93ff4eaa9907f58c0e7a909cddce23e2")
(setf (get mavros_msgs::CommandTOLResponse :datatype-) "mavros_msgs/CommandTOLResponse")
(setf (get mavros_msgs::CommandTOLResponse :definition-)
      "# Common type for Take Off and Landing

float32 min_pitch	# used by takeoff
float32 yaw
float32 latitude
float32 longitude
float32 altitude
---
bool success
uint8 result

")



(provide :mavros_msgs/CommandTOL "93ff4eaa9907f58c0e7a909cddce23e2")


