;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::CommandHome)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'CommandHome (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::COMMANDHOME")
  (make-package "MAVROS_MSGS::COMMANDHOME"))
(unless (find-package "MAVROS_MSGS::COMMANDHOMEREQUEST")
  (make-package "MAVROS_MSGS::COMMANDHOMEREQUEST"))
(unless (find-package "MAVROS_MSGS::COMMANDHOMERESPONSE")
  (make-package "MAVROS_MSGS::COMMANDHOMERESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::CommandHomeRequest
  :super ros::object
  :slots (_current_gps _yaw _latitude _longitude _altitude ))

(defmethod mavros_msgs::CommandHomeRequest
  (:init
   (&key
    ((:current_gps __current_gps) nil)
    ((:yaw __yaw) 0.0)
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    )
   (send-super :init)
   (setq _current_gps __current_gps)
   (setq _yaw (float __yaw))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   self)
  (:current_gps
   (&optional __current_gps)
   (if __current_gps (setq _current_gps __current_gps)) _current_gps)
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
    ;; bool _current_gps
    1
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
     ;; bool _current_gps
       (if _current_gps (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _current_gps
     (setq _current_gps (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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

(defclass mavros_msgs::CommandHomeResponse
  :super ros::object
  :slots (_success _result ))

(defmethod mavros_msgs::CommandHomeResponse
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

(defclass mavros_msgs::CommandHome
  :super ros::object
  :slots ())

(setf (get mavros_msgs::CommandHome :md5sum-) "05b5da557a6a0cf6c2b958dba173bca1")
(setf (get mavros_msgs::CommandHome :datatype-) "mavros_msgs/CommandHome")
(setf (get mavros_msgs::CommandHome :request) mavros_msgs::CommandHomeRequest)
(setf (get mavros_msgs::CommandHome :response) mavros_msgs::CommandHomeResponse)

(defmethod mavros_msgs::CommandHomeRequest
  (:response () (instance mavros_msgs::CommandHomeResponse :init)))

(setf (get mavros_msgs::CommandHomeRequest :md5sum-) "05b5da557a6a0cf6c2b958dba173bca1")
(setf (get mavros_msgs::CommandHomeRequest :datatype-) "mavros_msgs/CommandHomeRequest")
(setf (get mavros_msgs::CommandHomeRequest :definition-)
      "# request set new home position

bool current_gps
float32 yaw
float32 latitude
float32 longitude
float32 altitude
---
bool success
uint8 result

")

(setf (get mavros_msgs::CommandHomeResponse :md5sum-) "05b5da557a6a0cf6c2b958dba173bca1")
(setf (get mavros_msgs::CommandHomeResponse :datatype-) "mavros_msgs/CommandHomeResponse")
(setf (get mavros_msgs::CommandHomeResponse :definition-)
      "# request set new home position

bool current_gps
float32 yaw
float32 latitude
float32 longitude
float32 altitude
---
bool success
uint8 result

")



(provide :mavros_msgs/CommandHome "05b5da557a6a0cf6c2b958dba173bca1")


