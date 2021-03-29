;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::WaypointPush)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'WaypointPush (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::WAYPOINTPUSH")
  (make-package "MAVROS_MSGS::WAYPOINTPUSH"))
(unless (find-package "MAVROS_MSGS::WAYPOINTPUSHREQUEST")
  (make-package "MAVROS_MSGS::WAYPOINTPUSHREQUEST"))
(unless (find-package "MAVROS_MSGS::WAYPOINTPUSHRESPONSE")
  (make-package "MAVROS_MSGS::WAYPOINTPUSHRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::WaypointPushRequest
  :super ros::object
  :slots (_start_index _waypoints ))

(defmethod mavros_msgs::WaypointPushRequest
  (:init
   (&key
    ((:start_index __start_index) 0)
    ((:waypoints __waypoints) (let (r) (dotimes (i 0) (push (instance mavros_msgs::Waypoint :init) r)) r))
    )
   (send-super :init)
   (setq _start_index (round __start_index))
   (setq _waypoints __waypoints)
   self)
  (:start_index
   (&optional __start_index)
   (if __start_index (setq _start_index __start_index)) _start_index)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:serialization-length
   ()
   (+
    ;; uint16 _start_index
    2
    ;; mavros_msgs/Waypoint[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _start_index
       (write-word _start_index s)
     ;; mavros_msgs/Waypoint[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _start_index
     (setq _start_index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; mavros_msgs/Waypoint[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance mavros_msgs::Waypoint :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass mavros_msgs::WaypointPushResponse
  :super ros::object
  :slots (_success _wp_transfered ))

(defmethod mavros_msgs::WaypointPushResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:wp_transfered __wp_transfered) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _wp_transfered (round __wp_transfered))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:wp_transfered
   (&optional __wp_transfered)
   (if __wp_transfered (setq _wp_transfered __wp_transfered)) _wp_transfered)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint32 _wp_transfered
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _wp_transfered
       (write-long _wp_transfered s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _wp_transfered
     (setq _wp_transfered (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros_msgs::WaypointPush
  :super ros::object
  :slots ())

(setf (get mavros_msgs::WaypointPush :md5sum-) "5b2bca74e830798e1579b58cafd50527")
(setf (get mavros_msgs::WaypointPush :datatype-) "mavros_msgs/WaypointPush")
(setf (get mavros_msgs::WaypointPush :request) mavros_msgs::WaypointPushRequest)
(setf (get mavros_msgs::WaypointPush :response) mavros_msgs::WaypointPushResponse)

(defmethod mavros_msgs::WaypointPushRequest
  (:response () (instance mavros_msgs::WaypointPushResponse :init)))

(setf (get mavros_msgs::WaypointPushRequest :md5sum-) "5b2bca74e830798e1579b58cafd50527")
(setf (get mavros_msgs::WaypointPushRequest :datatype-) "mavros_msgs/WaypointPushRequest")
(setf (get mavros_msgs::WaypointPushRequest :definition-)
      "# Send waypoints to device
#
#  :start_index: will define a partial waypoint update. Set to 0 for full update
#
# Returns success status and transfered count

uint16 start_index
mavros_msgs/Waypoint[] waypoints

================================================================================
MSG: mavros_msgs/Waypoint
# Waypoint.msg
#
# ROS representation of MAVLink MISSION_ITEM
# See mavlink documentation



# see enum MAV_FRAME
uint8 frame
uint8 FRAME_GLOBAL = 0
uint8 FRAME_LOCAL_NED = 1
uint8 FRAME_MISSION = 2
uint8 FRAME_GLOBAL_REL_ALT = 3
uint8 FRAME_LOCAL_ENU = 4

# see enum MAV_CMD and CommandCode.msg
uint16 command

bool is_current
bool autocontinue
# meaning of this params described in enum MAV_CMD
float32 param1
float32 param2
float32 param3
float32 param4
float64 x_lat
float64 y_long
float64 z_alt
---
bool success
uint32 wp_transfered

")

(setf (get mavros_msgs::WaypointPushResponse :md5sum-) "5b2bca74e830798e1579b58cafd50527")
(setf (get mavros_msgs::WaypointPushResponse :datatype-) "mavros_msgs/WaypointPushResponse")
(setf (get mavros_msgs::WaypointPushResponse :definition-)
      "# Send waypoints to device
#
#  :start_index: will define a partial waypoint update. Set to 0 for full update
#
# Returns success status and transfered count

uint16 start_index
mavros_msgs/Waypoint[] waypoints

================================================================================
MSG: mavros_msgs/Waypoint
# Waypoint.msg
#
# ROS representation of MAVLink MISSION_ITEM
# See mavlink documentation



# see enum MAV_FRAME
uint8 frame
uint8 FRAME_GLOBAL = 0
uint8 FRAME_LOCAL_NED = 1
uint8 FRAME_MISSION = 2
uint8 FRAME_GLOBAL_REL_ALT = 3
uint8 FRAME_LOCAL_ENU = 4

# see enum MAV_CMD and CommandCode.msg
uint16 command

bool is_current
bool autocontinue
# meaning of this params described in enum MAV_CMD
float32 param1
float32 param2
float32 param3
float32 param4
float64 x_lat
float64 y_long
float64 z_alt
---
bool success
uint32 wp_transfered

")



(provide :mavros_msgs/WaypointPush "5b2bca74e830798e1579b58cafd50527")


