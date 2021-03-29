;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::OverrideRCIn)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'OverrideRCIn (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::OVERRIDERCIN")
  (make-package "MAVROS_MSGS::OVERRIDERCIN"))

(in-package "ROS")
;;//! \htmlinclude OverrideRCIn.msg.html


(intern "*CHAN_RELEASE*" (find-package "MAVROS_MSGS::OVERRIDERCIN"))
(shadow '*CHAN_RELEASE* (find-package "MAVROS_MSGS::OVERRIDERCIN"))
(defconstant mavros_msgs::OverrideRCIn::*CHAN_RELEASE* 0)
(intern "*CHAN_NOCHANGE*" (find-package "MAVROS_MSGS::OVERRIDERCIN"))
(shadow '*CHAN_NOCHANGE* (find-package "MAVROS_MSGS::OVERRIDERCIN"))
(defconstant mavros_msgs::OverrideRCIn::*CHAN_NOCHANGE* 65535)
(defclass mavros_msgs::OverrideRCIn
  :super ros::object
  :slots (_channels ))

(defmethod mavros_msgs::OverrideRCIn
  (:init
   (&key
    ((:channels __channels) (make-array 8 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _channels __channels)
   self)
  (:channels
   (&optional __channels)
   (if __channels (setq _channels __channels)) _channels)
  (:serialization-length
   ()
   (+
    ;; uint16[8] _channels
    (* 2    8)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16[8] _channels
     (dotimes (i 8)
       (write-word (elt _channels i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16[8] _channels
   (dotimes (i (length _channels))
     (setf (elt _channels i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get mavros_msgs::OverrideRCIn :md5sum-) "73b27a463a40a3eda1f9fbb1fc86d6f3")
(setf (get mavros_msgs::OverrideRCIn :datatype-) "mavros_msgs/OverrideRCIn")
(setf (get mavros_msgs::OverrideRCIn :definition-)
      "# Override RC Input
# Currently MAVLink defines override for 8 channel

uint16 CHAN_RELEASE=0
uint16 CHAN_NOCHANGE=65535

uint16[8] channels

")



(provide :mavros_msgs/OverrideRCIn "73b27a463a40a3eda1f9fbb1fc86d6f3")


