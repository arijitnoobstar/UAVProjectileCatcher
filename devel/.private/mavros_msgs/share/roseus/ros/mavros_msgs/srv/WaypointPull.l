;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::WaypointPull)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'WaypointPull (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::WAYPOINTPULL")
  (make-package "MAVROS_MSGS::WAYPOINTPULL"))
(unless (find-package "MAVROS_MSGS::WAYPOINTPULLREQUEST")
  (make-package "MAVROS_MSGS::WAYPOINTPULLREQUEST"))
(unless (find-package "MAVROS_MSGS::WAYPOINTPULLRESPONSE")
  (make-package "MAVROS_MSGS::WAYPOINTPULLRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::WaypointPullRequest
  :super ros::object
  :slots ())

(defmethod mavros_msgs::WaypointPullRequest
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

(defclass mavros_msgs::WaypointPullResponse
  :super ros::object
  :slots (_success _wp_received ))

(defmethod mavros_msgs::WaypointPullResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:wp_received __wp_received) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _wp_received (round __wp_received))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:wp_received
   (&optional __wp_received)
   (if __wp_received (setq _wp_received __wp_received)) _wp_received)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint32 _wp_received
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _wp_received
       (write-long _wp_received s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _wp_received
     (setq _wp_received (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros_msgs::WaypointPull
  :super ros::object
  :slots ())

(setf (get mavros_msgs::WaypointPull :md5sum-) "a8d9ecef8fb37028d2db2a9aa4ed7e79")
(setf (get mavros_msgs::WaypointPull :datatype-) "mavros_msgs/WaypointPull")
(setf (get mavros_msgs::WaypointPull :request) mavros_msgs::WaypointPullRequest)
(setf (get mavros_msgs::WaypointPull :response) mavros_msgs::WaypointPullResponse)

(defmethod mavros_msgs::WaypointPullRequest
  (:response () (instance mavros_msgs::WaypointPullResponse :init)))

(setf (get mavros_msgs::WaypointPullRequest :md5sum-) "a8d9ecef8fb37028d2db2a9aa4ed7e79")
(setf (get mavros_msgs::WaypointPullRequest :datatype-) "mavros_msgs/WaypointPullRequest")
(setf (get mavros_msgs::WaypointPullRequest :definition-)
      "# Requests waypoints from device
#
# Returns success status and received count

---
bool success
uint32 wp_received

")

(setf (get mavros_msgs::WaypointPullResponse :md5sum-) "a8d9ecef8fb37028d2db2a9aa4ed7e79")
(setf (get mavros_msgs::WaypointPullResponse :datatype-) "mavros_msgs/WaypointPullResponse")
(setf (get mavros_msgs::WaypointPullResponse :definition-)
      "# Requests waypoints from device
#
# Returns success status and received count

---
bool success
uint32 wp_received

")



(provide :mavros_msgs/WaypointPull "a8d9ecef8fb37028d2db2a9aa4ed7e79")


