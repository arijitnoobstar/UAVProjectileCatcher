;; Auto-generated. Do not edit!


(when (boundp 'hector_uav_msgs::EnableMotors)
  (if (not (find-package "HECTOR_UAV_MSGS"))
    (make-package "HECTOR_UAV_MSGS"))
  (shadow 'EnableMotors (find-package "HECTOR_UAV_MSGS")))
(unless (find-package "HECTOR_UAV_MSGS::ENABLEMOTORS")
  (make-package "HECTOR_UAV_MSGS::ENABLEMOTORS"))
(unless (find-package "HECTOR_UAV_MSGS::ENABLEMOTORSREQUEST")
  (make-package "HECTOR_UAV_MSGS::ENABLEMOTORSREQUEST"))
(unless (find-package "HECTOR_UAV_MSGS::ENABLEMOTORSRESPONSE")
  (make-package "HECTOR_UAV_MSGS::ENABLEMOTORSRESPONSE"))

(in-package "ROS")





(defclass hector_uav_msgs::EnableMotorsRequest
  :super ros::object
  :slots (_enable ))

(defmethod hector_uav_msgs::EnableMotorsRequest
  (:init
   (&key
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _enable __enable)
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hector_uav_msgs::EnableMotorsResponse
  :super ros::object
  :slots (_success ))

(defmethod hector_uav_msgs::EnableMotorsResponse
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

(defclass hector_uav_msgs::EnableMotors
  :super ros::object
  :slots ())

(setf (get hector_uav_msgs::EnableMotors :md5sum-) "6a0b406242562fc416b2c9c8a3efb051")
(setf (get hector_uav_msgs::EnableMotors :datatype-) "hector_uav_msgs/EnableMotors")
(setf (get hector_uav_msgs::EnableMotors :request) hector_uav_msgs::EnableMotorsRequest)
(setf (get hector_uav_msgs::EnableMotors :response) hector_uav_msgs::EnableMotorsResponse)

(defmethod hector_uav_msgs::EnableMotorsRequest
  (:response () (instance hector_uav_msgs::EnableMotorsResponse :init)))

(setf (get hector_uav_msgs::EnableMotorsRequest :md5sum-) "6a0b406242562fc416b2c9c8a3efb051")
(setf (get hector_uav_msgs::EnableMotorsRequest :datatype-) "hector_uav_msgs/EnableMotorsRequest")
(setf (get hector_uav_msgs::EnableMotorsRequest :definition-)
      "bool enable # enable or disable motors
---
bool success # whether enabling or disabling was successful
")

(setf (get hector_uav_msgs::EnableMotorsResponse :md5sum-) "6a0b406242562fc416b2c9c8a3efb051")
(setf (get hector_uav_msgs::EnableMotorsResponse :datatype-) "hector_uav_msgs/EnableMotorsResponse")
(setf (get hector_uav_msgs::EnableMotorsResponse :definition-)
      "bool enable # enable or disable motors
---
bool success # whether enabling or disabling was successful
")



(provide :hector_uav_msgs/EnableMotors "6a0b406242562fc416b2c9c8a3efb051")


