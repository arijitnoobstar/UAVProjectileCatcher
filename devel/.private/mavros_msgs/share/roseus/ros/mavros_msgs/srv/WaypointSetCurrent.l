;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::WaypointSetCurrent)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'WaypointSetCurrent (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::WAYPOINTSETCURRENT")
  (make-package "MAVROS_MSGS::WAYPOINTSETCURRENT"))
(unless (find-package "MAVROS_MSGS::WAYPOINTSETCURRENTREQUEST")
  (make-package "MAVROS_MSGS::WAYPOINTSETCURRENTREQUEST"))
(unless (find-package "MAVROS_MSGS::WAYPOINTSETCURRENTRESPONSE")
  (make-package "MAVROS_MSGS::WAYPOINTSETCURRENTRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::WaypointSetCurrentRequest
  :super ros::object
  :slots (_wp_seq ))

(defmethod mavros_msgs::WaypointSetCurrentRequest
  (:init
   (&key
    ((:wp_seq __wp_seq) 0)
    )
   (send-super :init)
   (setq _wp_seq (round __wp_seq))
   self)
  (:wp_seq
   (&optional __wp_seq)
   (if __wp_seq (setq _wp_seq __wp_seq)) _wp_seq)
  (:serialization-length
   ()
   (+
    ;; uint16 _wp_seq
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _wp_seq
       (write-word _wp_seq s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _wp_seq
     (setq _wp_seq (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass mavros_msgs::WaypointSetCurrentResponse
  :super ros::object
  :slots (_success ))

(defmethod mavros_msgs::WaypointSetCurrentResponse
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

(defclass mavros_msgs::WaypointSetCurrent
  :super ros::object
  :slots ())

(setf (get mavros_msgs::WaypointSetCurrent :md5sum-) "f99aa1a911a80ab546ea470f4e90c807")
(setf (get mavros_msgs::WaypointSetCurrent :datatype-) "mavros_msgs/WaypointSetCurrent")
(setf (get mavros_msgs::WaypointSetCurrent :request) mavros_msgs::WaypointSetCurrentRequest)
(setf (get mavros_msgs::WaypointSetCurrent :response) mavros_msgs::WaypointSetCurrentResponse)

(defmethod mavros_msgs::WaypointSetCurrentRequest
  (:response () (instance mavros_msgs::WaypointSetCurrentResponse :init)))

(setf (get mavros_msgs::WaypointSetCurrentRequest :md5sum-) "f99aa1a911a80ab546ea470f4e90c807")
(setf (get mavros_msgs::WaypointSetCurrentRequest :datatype-) "mavros_msgs/WaypointSetCurrentRequest")
(setf (get mavros_msgs::WaypointSetCurrentRequest :definition-)
      "# Request set current waypoint
#
# wp_seq - index in waypoint array

uint16 wp_seq
---
bool success

")

(setf (get mavros_msgs::WaypointSetCurrentResponse :md5sum-) "f99aa1a911a80ab546ea470f4e90c807")
(setf (get mavros_msgs::WaypointSetCurrentResponse :datatype-) "mavros_msgs/WaypointSetCurrentResponse")
(setf (get mavros_msgs::WaypointSetCurrentResponse :definition-)
      "# Request set current waypoint
#
# wp_seq - index in waypoint array

uint16 wp_seq
---
bool success

")



(provide :mavros_msgs/WaypointSetCurrent "f99aa1a911a80ab546ea470f4e90c807")


