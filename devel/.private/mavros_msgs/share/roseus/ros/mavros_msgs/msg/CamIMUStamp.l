;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::CamIMUStamp)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'CamIMUStamp (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::CAMIMUSTAMP")
  (make-package "MAVROS_MSGS::CAMIMUSTAMP"))

(in-package "ROS")
;;//! \htmlinclude CamIMUStamp.msg.html


(defclass mavros_msgs::CamIMUStamp
  :super ros::object
  :slots (_frame_stamp _frame_seq_id ))

(defmethod mavros_msgs::CamIMUStamp
  (:init
   (&key
    ((:frame_stamp __frame_stamp) (instance ros::time :init))
    ((:frame_seq_id __frame_seq_id) 0)
    )
   (send-super :init)
   (setq _frame_stamp __frame_stamp)
   (setq _frame_seq_id (round __frame_seq_id))
   self)
  (:frame_stamp
   (&optional __frame_stamp)
   (if __frame_stamp (setq _frame_stamp __frame_stamp)) _frame_stamp)
  (:frame_seq_id
   (&optional __frame_seq_id)
   (if __frame_seq_id (setq _frame_seq_id __frame_seq_id)) _frame_seq_id)
  (:serialization-length
   ()
   (+
    ;; time _frame_stamp
    8
    ;; int32 _frame_seq_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _frame_stamp
       (write-long (send _frame_stamp :sec) s) (write-long (send _frame_stamp :nsec) s)
     ;; int32 _frame_seq_id
       (write-long _frame_seq_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _frame_stamp
     (send _frame_stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _frame_stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _frame_seq_id
     (setq _frame_seq_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mavros_msgs::CamIMUStamp :md5sum-) "ac22af9031671dd528a56f12d0986660")
(setf (get mavros_msgs::CamIMUStamp :datatype-) "mavros_msgs/CamIMUStamp")
(setf (get mavros_msgs::CamIMUStamp :definition-)
      "# IMU-Camera synchronisation data

time frame_stamp		# Timestamp when the camera was triggered
int32 frame_seq_id		# Sequence number of the image frame

")



(provide :mavros_msgs/CamIMUStamp "ac22af9031671dd528a56f12d0986660")


