;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::PlayTuneV2)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'PlayTuneV2 (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::PLAYTUNEV2")
  (make-package "MAVROS_MSGS::PLAYTUNEV2"))

(in-package "ROS")
;;//! \htmlinclude PlayTuneV2.msg.html


(intern "*QBASIC1_1*" (find-package "MAVROS_MSGS::PLAYTUNEV2"))
(shadow '*QBASIC1_1* (find-package "MAVROS_MSGS::PLAYTUNEV2"))
(defconstant mavros_msgs::PlayTuneV2::*QBASIC1_1* 1)
(intern "*MML_MODERN*" (find-package "MAVROS_MSGS::PLAYTUNEV2"))
(shadow '*MML_MODERN* (find-package "MAVROS_MSGS::PLAYTUNEV2"))
(defconstant mavros_msgs::PlayTuneV2::*MML_MODERN* 2)
(defclass mavros_msgs::PlayTuneV2
  :super ros::object
  :slots (_format _tune ))

(defmethod mavros_msgs::PlayTuneV2
  (:init
   (&key
    ((:format __format) 0)
    ((:tune __tune) "")
    )
   (send-super :init)
   (setq _format (round __format))
   (setq _tune (string __tune))
   self)
  (:format
   (&optional __format)
   (if __format (setq _format __format)) _format)
  (:tune
   (&optional __tune)
   (if __tune (setq _tune __tune)) _tune)
  (:serialization-length
   ()
   (+
    ;; uint8 _format
    1
    ;; string _tune
    4 (length _tune)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _format
       (write-byte _format s)
     ;; string _tune
       (write-long (length _tune) s) (princ _tune s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _format
     (setq _format (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _tune
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tune (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mavros_msgs::PlayTuneV2 :md5sum-) "177f99ce3572342a75a8b5cdefc8286e")
(setf (get mavros_msgs::PlayTuneV2 :datatype-) "mavros_msgs/PlayTuneV2")
(setf (get mavros_msgs::PlayTuneV2 :definition-)
      "# Play tune V2
#
# https://mavlink.io/en/messages/common.html#PLAY_TUNE_V2

## TUNE_FORMAT enum
uint8 QBASIC1_1 = 1
uint8 MML_MODERN = 2

uint8 format
string tune

")



(provide :mavros_msgs/PlayTuneV2 "177f99ce3572342a75a8b5cdefc8286e")


