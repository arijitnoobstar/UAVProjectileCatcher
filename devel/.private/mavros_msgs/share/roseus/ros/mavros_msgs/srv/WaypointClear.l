;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::WaypointClear)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'WaypointClear (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::WAYPOINTCLEAR")
  (make-package "MAVROS_MSGS::WAYPOINTCLEAR"))
(unless (find-package "MAVROS_MSGS::WAYPOINTCLEARREQUEST")
  (make-package "MAVROS_MSGS::WAYPOINTCLEARREQUEST"))
(unless (find-package "MAVROS_MSGS::WAYPOINTCLEARRESPONSE")
  (make-package "MAVROS_MSGS::WAYPOINTCLEARRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::WaypointClearRequest
  :super ros::object
  :slots ())

(defmethod mavros_msgs::WaypointClearRequest
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

(defclass mavros_msgs::WaypointClearResponse
  :super ros::object
  :slots (_success ))

(defmethod mavros_msgs::WaypointClearResponse
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

(defclass mavros_msgs::WaypointClear
  :super ros::object
  :slots ())

(setf (get mavros_msgs::WaypointClear :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get mavros_msgs::WaypointClear :datatype-) "mavros_msgs/WaypointClear")
(setf (get mavros_msgs::WaypointClear :request) mavros_msgs::WaypointClearRequest)
(setf (get mavros_msgs::WaypointClear :response) mavros_msgs::WaypointClearResponse)

(defmethod mavros_msgs::WaypointClearRequest
  (:response () (instance mavros_msgs::WaypointClearResponse :init)))

(setf (get mavros_msgs::WaypointClearRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get mavros_msgs::WaypointClearRequest :datatype-) "mavros_msgs/WaypointClearRequest")
(setf (get mavros_msgs::WaypointClearRequest :definition-)
      "# Request clear waypoint

---
bool success

")

(setf (get mavros_msgs::WaypointClearResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get mavros_msgs::WaypointClearResponse :datatype-) "mavros_msgs/WaypointClearResponse")
(setf (get mavros_msgs::WaypointClearResponse :definition-)
      "# Request clear waypoint

---
bool success

")



(provide :mavros_msgs/WaypointClear "358e233cde0c8a8bcfea4ce193f8fc15")


