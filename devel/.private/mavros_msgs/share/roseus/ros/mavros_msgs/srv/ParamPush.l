;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::ParamPush)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'ParamPush (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::PARAMPUSH")
  (make-package "MAVROS_MSGS::PARAMPUSH"))
(unless (find-package "MAVROS_MSGS::PARAMPUSHREQUEST")
  (make-package "MAVROS_MSGS::PARAMPUSHREQUEST"))
(unless (find-package "MAVROS_MSGS::PARAMPUSHRESPONSE")
  (make-package "MAVROS_MSGS::PARAMPUSHRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::ParamPushRequest
  :super ros::object
  :slots ())

(defmethod mavros_msgs::ParamPushRequest
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

(defclass mavros_msgs::ParamPushResponse
  :super ros::object
  :slots (_success _param_transfered ))

(defmethod mavros_msgs::ParamPushResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:param_transfered __param_transfered) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _param_transfered (round __param_transfered))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:param_transfered
   (&optional __param_transfered)
   (if __param_transfered (setq _param_transfered __param_transfered)) _param_transfered)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint32 _param_transfered
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _param_transfered
       (write-long _param_transfered s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _param_transfered
     (setq _param_transfered (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros_msgs::ParamPush
  :super ros::object
  :slots ())

(setf (get mavros_msgs::ParamPush :md5sum-) "d3fc4d8cefa193382985a92a041a2a3d")
(setf (get mavros_msgs::ParamPush :datatype-) "mavros_msgs/ParamPush")
(setf (get mavros_msgs::ParamPush :request) mavros_msgs::ParamPushRequest)
(setf (get mavros_msgs::ParamPush :response) mavros_msgs::ParamPushResponse)

(defmethod mavros_msgs::ParamPushRequest
  (:response () (instance mavros_msgs::ParamPushResponse :init)))

(setf (get mavros_msgs::ParamPushRequest :md5sum-) "d3fc4d8cefa193382985a92a041a2a3d")
(setf (get mavros_msgs::ParamPushRequest :datatype-) "mavros_msgs/ParamPushRequest")
(setf (get mavros_msgs::ParamPushRequest :definition-)
      "# Send current send
#
# Returns success status and param_transfered count

---
bool success
uint32 param_transfered

")

(setf (get mavros_msgs::ParamPushResponse :md5sum-) "d3fc4d8cefa193382985a92a041a2a3d")
(setf (get mavros_msgs::ParamPushResponse :datatype-) "mavros_msgs/ParamPushResponse")
(setf (get mavros_msgs::ParamPushResponse :definition-)
      "# Send current send
#
# Returns success status and param_transfered count

---
bool success
uint32 param_transfered

")



(provide :mavros_msgs/ParamPush "d3fc4d8cefa193382985a92a041a2a3d")


