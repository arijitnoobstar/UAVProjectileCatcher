;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::CommandBool)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'CommandBool (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::COMMANDBOOL")
  (make-package "MAVROS_MSGS::COMMANDBOOL"))
(unless (find-package "MAVROS_MSGS::COMMANDBOOLREQUEST")
  (make-package "MAVROS_MSGS::COMMANDBOOLREQUEST"))
(unless (find-package "MAVROS_MSGS::COMMANDBOOLRESPONSE")
  (make-package "MAVROS_MSGS::COMMANDBOOLRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::CommandBoolRequest
  :super ros::object
  :slots (_value ))

(defmethod mavros_msgs::CommandBoolRequest
  (:init
   (&key
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _value __value)
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros_msgs::CommandBoolResponse
  :super ros::object
  :slots (_success _result ))

(defmethod mavros_msgs::CommandBoolResponse
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

(defclass mavros_msgs::CommandBool
  :super ros::object
  :slots ())

(setf (get mavros_msgs::CommandBool :md5sum-) "e09abbb4e5bae6b558e5010966eb6e9e")
(setf (get mavros_msgs::CommandBool :datatype-) "mavros_msgs/CommandBool")
(setf (get mavros_msgs::CommandBool :request) mavros_msgs::CommandBoolRequest)
(setf (get mavros_msgs::CommandBool :response) mavros_msgs::CommandBoolResponse)

(defmethod mavros_msgs::CommandBoolRequest
  (:response () (instance mavros_msgs::CommandBoolResponse :init)))

(setf (get mavros_msgs::CommandBoolRequest :md5sum-) "e09abbb4e5bae6b558e5010966eb6e9e")
(setf (get mavros_msgs::CommandBoolRequest :datatype-) "mavros_msgs/CommandBoolRequest")
(setf (get mavros_msgs::CommandBoolRequest :definition-)
      "# Common type for switch commands

bool value
---
bool success
uint8 result

")

(setf (get mavros_msgs::CommandBoolResponse :md5sum-) "e09abbb4e5bae6b558e5010966eb6e9e")
(setf (get mavros_msgs::CommandBoolResponse :datatype-) "mavros_msgs/CommandBoolResponse")
(setf (get mavros_msgs::CommandBoolResponse :definition-)
      "# Common type for switch commands

bool value
---
bool success
uint8 result

")



(provide :mavros_msgs/CommandBool "e09abbb4e5bae6b558e5010966eb6e9e")


