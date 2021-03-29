;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::State)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'State (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::STATE")
  (make-package "MAVROS_MSGS::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MODE_APM_PLANE_MANUAL*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_PLANE_MANUAL* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_PLANE_MANUAL* "MANUAL")
(intern "*MODE_APM_PLANE_CIRCLE*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_PLANE_CIRCLE* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_PLANE_CIRCLE* "CIRCLE")
(intern "*MODE_APM_PLANE_STABILIZE*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_PLANE_STABILIZE* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_PLANE_STABILIZE* "STABILIZE")
(intern "*MODE_APM_PLANE_TRAINING*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_PLANE_TRAINING* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_PLANE_TRAINING* "TRAINING")
(intern "*MODE_APM_PLANE_ACRO*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_PLANE_ACRO* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_PLANE_ACRO* "ACRO")
(intern "*MODE_APM_PLANE_FBWA*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_PLANE_FBWA* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_PLANE_FBWA* "FBWA")
(intern "*MODE_APM_PLANE_FBWB*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_PLANE_FBWB* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_PLANE_FBWB* "FBWB")
(intern "*MODE_APM_PLANE_CRUISE*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_PLANE_CRUISE* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_PLANE_CRUISE* "CRUISE")
(intern "*MODE_APM_PLANE_AUTOTUNE*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_PLANE_AUTOTUNE* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_PLANE_AUTOTUNE* "AUTOTUNE")
(intern "*MODE_APM_PLANE_AUTO*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_PLANE_AUTO* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_PLANE_AUTO* "AUTO")
(intern "*MODE_APM_PLANE_RTL*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_PLANE_RTL* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_PLANE_RTL* "RTL")
(intern "*MODE_APM_PLANE_LOITER*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_PLANE_LOITER* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_PLANE_LOITER* "LOITER")
(intern "*MODE_APM_PLANE_LAND*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_PLANE_LAND* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_PLANE_LAND* "LAND")
(intern "*MODE_APM_PLANE_GUIDED*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_PLANE_GUIDED* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_PLANE_GUIDED* "GUIDED")
(intern "*MODE_APM_PLANE_INITIALISING*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_PLANE_INITIALISING* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_PLANE_INITIALISING* "INITIALISING")
(intern "*MODE_APM_PLANE_QSTABILIZE*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_PLANE_QSTABILIZE* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_PLANE_QSTABILIZE* "QSTABILIZE")
(intern "*MODE_APM_PLANE_QHOVER*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_PLANE_QHOVER* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_PLANE_QHOVER* "QHOVER")
(intern "*MODE_APM_PLANE_QLOITER*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_PLANE_QLOITER* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_PLANE_QLOITER* "QLOITER")
(intern "*MODE_APM_PLANE_QLAND*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_PLANE_QLAND* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_PLANE_QLAND* "QLAND")
(intern "*MODE_APM_PLANE_QRTL*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_PLANE_QRTL* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_PLANE_QRTL* "QRTL")
(intern "*MODE_APM_COPTER_STABILIZE*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_COPTER_STABILIZE* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_COPTER_STABILIZE* "STABILIZE")
(intern "*MODE_APM_COPTER_ACRO*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_COPTER_ACRO* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_COPTER_ACRO* "ACRO")
(intern "*MODE_APM_COPTER_ALT_HOLD*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_COPTER_ALT_HOLD* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_COPTER_ALT_HOLD* "ALT_HOLD")
(intern "*MODE_APM_COPTER_AUTO*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_COPTER_AUTO* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_COPTER_AUTO* "AUTO")
(intern "*MODE_APM_COPTER_GUIDED*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_COPTER_GUIDED* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_COPTER_GUIDED* "GUIDED")
(intern "*MODE_APM_COPTER_LOITER*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_COPTER_LOITER* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_COPTER_LOITER* "LOITER")
(intern "*MODE_APM_COPTER_RTL*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_COPTER_RTL* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_COPTER_RTL* "RTL")
(intern "*MODE_APM_COPTER_CIRCLE*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_COPTER_CIRCLE* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_COPTER_CIRCLE* "CIRCLE")
(intern "*MODE_APM_COPTER_POSITION*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_COPTER_POSITION* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_COPTER_POSITION* "POSITION")
(intern "*MODE_APM_COPTER_LAND*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_COPTER_LAND* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_COPTER_LAND* "LAND")
(intern "*MODE_APM_COPTER_OF_LOITER*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_COPTER_OF_LOITER* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_COPTER_OF_LOITER* "OF_LOITER")
(intern "*MODE_APM_COPTER_DRIFT*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_COPTER_DRIFT* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_COPTER_DRIFT* "DRIFT")
(intern "*MODE_APM_COPTER_SPORT*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_COPTER_SPORT* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_COPTER_SPORT* "SPORT")
(intern "*MODE_APM_COPTER_FLIP*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_COPTER_FLIP* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_COPTER_FLIP* "FLIP")
(intern "*MODE_APM_COPTER_AUTOTUNE*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_COPTER_AUTOTUNE* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_COPTER_AUTOTUNE* "AUTOTUNE")
(intern "*MODE_APM_COPTER_POSHOLD*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_COPTER_POSHOLD* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_COPTER_POSHOLD* "POSHOLD")
(intern "*MODE_APM_COPTER_BRAKE*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_COPTER_BRAKE* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_COPTER_BRAKE* "BRAKE")
(intern "*MODE_APM_COPTER_THROW*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_COPTER_THROW* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_COPTER_THROW* "THROW")
(intern "*MODE_APM_COPTER_AVOID_ADSB*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_COPTER_AVOID_ADSB* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_COPTER_AVOID_ADSB* "AVOID_ADSB")
(intern "*MODE_APM_COPTER_GUIDED_NOGPS*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_COPTER_GUIDED_NOGPS* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_COPTER_GUIDED_NOGPS* "GUIDED_NOGPS")
(intern "*MODE_APM_ROVER_MANUAL*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_ROVER_MANUAL* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_ROVER_MANUAL* "MANUAL")
(intern "*MODE_APM_ROVER_LEARNING*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_ROVER_LEARNING* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_ROVER_LEARNING* "LEARNING")
(intern "*MODE_APM_ROVER_STEERING*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_ROVER_STEERING* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_ROVER_STEERING* "STEERING")
(intern "*MODE_APM_ROVER_HOLD*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_ROVER_HOLD* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_ROVER_HOLD* "HOLD")
(intern "*MODE_APM_ROVER_AUTO*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_ROVER_AUTO* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_ROVER_AUTO* "AUTO")
(intern "*MODE_APM_ROVER_RTL*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_ROVER_RTL* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_ROVER_RTL* "RTL")
(intern "*MODE_APM_ROVER_GUIDED*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_ROVER_GUIDED* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_ROVER_GUIDED* "GUIDED")
(intern "*MODE_APM_ROVER_INITIALISING*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_APM_ROVER_INITIALISING* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_APM_ROVER_INITIALISING* "INITIALISING")
(intern "*MODE_PX4_MANUAL*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_PX4_MANUAL* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_PX4_MANUAL* "MANUAL")
(intern "*MODE_PX4_ACRO*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_PX4_ACRO* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_PX4_ACRO* "ACRO")
(intern "*MODE_PX4_ALTITUDE*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_PX4_ALTITUDE* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_PX4_ALTITUDE* "ALTCTL")
(intern "*MODE_PX4_POSITION*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_PX4_POSITION* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_PX4_POSITION* "POSCTL")
(intern "*MODE_PX4_OFFBOARD*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_PX4_OFFBOARD* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_PX4_OFFBOARD* "OFFBOARD")
(intern "*MODE_PX4_STABILIZED*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_PX4_STABILIZED* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_PX4_STABILIZED* "STABILIZED")
(intern "*MODE_PX4_RATTITUDE*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_PX4_RATTITUDE* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_PX4_RATTITUDE* "RATTITUDE")
(intern "*MODE_PX4_MISSION*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_PX4_MISSION* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_PX4_MISSION* "AUTO.MISSION")
(intern "*MODE_PX4_LOITER*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_PX4_LOITER* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_PX4_LOITER* "AUTO.LOITER")
(intern "*MODE_PX4_RTL*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_PX4_RTL* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_PX4_RTL* "AUTO.RTL")
(intern "*MODE_PX4_LAND*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_PX4_LAND* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_PX4_LAND* "AUTO.LAND")
(intern "*MODE_PX4_RTGS*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_PX4_RTGS* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_PX4_RTGS* "AUTO.RTGS")
(intern "*MODE_PX4_READY*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_PX4_READY* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_PX4_READY* "AUTO.READY")
(intern "*MODE_PX4_TAKEOFF*" (find-package "MAVROS_MSGS::STATE"))
(shadow '*MODE_PX4_TAKEOFF* (find-package "MAVROS_MSGS::STATE"))
(defconstant mavros_msgs::State::*MODE_PX4_TAKEOFF* "AUTO.TAKEOFF")
(defclass mavros_msgs::State
  :super ros::object
  :slots (_header _connected _armed _guided _manual_input _mode _system_status ))

(defmethod mavros_msgs::State
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:connected __connected) nil)
    ((:armed __armed) nil)
    ((:guided __guided) nil)
    ((:manual_input __manual_input) nil)
    ((:mode __mode) "")
    ((:system_status __system_status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _connected __connected)
   (setq _armed __armed)
   (setq _guided __guided)
   (setq _manual_input __manual_input)
   (setq _mode (string __mode))
   (setq _system_status (round __system_status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:connected
   (&optional __connected)
   (if __connected (setq _connected __connected)) _connected)
  (:armed
   (&optional __armed)
   (if __armed (setq _armed __armed)) _armed)
  (:guided
   (&optional __guided)
   (if __guided (setq _guided __guided)) _guided)
  (:manual_input
   (&optional __manual_input)
   (if __manual_input (setq _manual_input __manual_input)) _manual_input)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:system_status
   (&optional __system_status)
   (if __system_status (setq _system_status __system_status)) _system_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _connected
    1
    ;; bool _armed
    1
    ;; bool _guided
    1
    ;; bool _manual_input
    1
    ;; string _mode
    4 (length _mode)
    ;; uint8 _system_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _connected
       (if _connected (write-byte -1 s) (write-byte 0 s))
     ;; bool _armed
       (if _armed (write-byte -1 s) (write-byte 0 s))
     ;; bool _guided
       (if _guided (write-byte -1 s) (write-byte 0 s))
     ;; bool _manual_input
       (if _manual_input (write-byte -1 s) (write-byte 0 s))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; uint8 _system_status
       (write-byte _system_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _connected
     (setq _connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _armed
     (setq _armed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _guided
     (setq _guided (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _manual_input
     (setq _manual_input (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _system_status
     (setq _system_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mavros_msgs::State :md5sum-) "65cd0a9fff993b062b91e354554ec7e9")
(setf (get mavros_msgs::State :datatype-) "mavros_msgs/State")
(setf (get mavros_msgs::State :definition-)
      "# Current autopilot state
#
# Known modes listed here:
# http://wiki.ros.org/mavros/CustomModes
#
# For system_status values
# see https://mavlink.io/en/messages/common.html#MAV_STATE
#

std_msgs/Header header
bool connected
bool armed
bool guided
bool manual_input
string mode
uint8 system_status

string MODE_APM_PLANE_MANUAL = MANUAL
string MODE_APM_PLANE_CIRCLE = CIRCLE
string MODE_APM_PLANE_STABILIZE = STABILIZE
string MODE_APM_PLANE_TRAINING = TRAINING
string MODE_APM_PLANE_ACRO = ACRO
string MODE_APM_PLANE_FBWA = FBWA
string MODE_APM_PLANE_FBWB = FBWB
string MODE_APM_PLANE_CRUISE = CRUISE
string MODE_APM_PLANE_AUTOTUNE = AUTOTUNE
string MODE_APM_PLANE_AUTO = AUTO
string MODE_APM_PLANE_RTL = RTL
string MODE_APM_PLANE_LOITER = LOITER
string MODE_APM_PLANE_LAND = LAND
string MODE_APM_PLANE_GUIDED = GUIDED
string MODE_APM_PLANE_INITIALISING = INITIALISING
string MODE_APM_PLANE_QSTABILIZE = QSTABILIZE
string MODE_APM_PLANE_QHOVER = QHOVER
string MODE_APM_PLANE_QLOITER = QLOITER
string MODE_APM_PLANE_QLAND = QLAND
string MODE_APM_PLANE_QRTL = QRTL

string MODE_APM_COPTER_STABILIZE = STABILIZE
string MODE_APM_COPTER_ACRO = ACRO
string MODE_APM_COPTER_ALT_HOLD = ALT_HOLD
string MODE_APM_COPTER_AUTO = AUTO
string MODE_APM_COPTER_GUIDED = GUIDED
string MODE_APM_COPTER_LOITER = LOITER
string MODE_APM_COPTER_RTL = RTL
string MODE_APM_COPTER_CIRCLE = CIRCLE
string MODE_APM_COPTER_POSITION = POSITION
string MODE_APM_COPTER_LAND = LAND
string MODE_APM_COPTER_OF_LOITER = OF_LOITER
string MODE_APM_COPTER_DRIFT = DRIFT
string MODE_APM_COPTER_SPORT = SPORT
string MODE_APM_COPTER_FLIP = FLIP
string MODE_APM_COPTER_AUTOTUNE = AUTOTUNE
string MODE_APM_COPTER_POSHOLD = POSHOLD
string MODE_APM_COPTER_BRAKE = BRAKE
string MODE_APM_COPTER_THROW = THROW
string MODE_APM_COPTER_AVOID_ADSB = AVOID_ADSB
string MODE_APM_COPTER_GUIDED_NOGPS = GUIDED_NOGPS

string MODE_APM_ROVER_MANUAL = MANUAL
string MODE_APM_ROVER_LEARNING = LEARNING
string MODE_APM_ROVER_STEERING = STEERING
string MODE_APM_ROVER_HOLD = HOLD
string MODE_APM_ROVER_AUTO = AUTO
string MODE_APM_ROVER_RTL = RTL
string MODE_APM_ROVER_GUIDED = GUIDED
string MODE_APM_ROVER_INITIALISING = INITIALISING

string MODE_PX4_MANUAL = MANUAL
string MODE_PX4_ACRO = ACRO
string MODE_PX4_ALTITUDE = ALTCTL
string MODE_PX4_POSITION = POSCTL
string MODE_PX4_OFFBOARD = OFFBOARD
string MODE_PX4_STABILIZED = STABILIZED
string MODE_PX4_RATTITUDE = RATTITUDE
string MODE_PX4_MISSION = AUTO.MISSION
string MODE_PX4_LOITER = AUTO.LOITER
string MODE_PX4_RTL = AUTO.RTL
string MODE_PX4_LAND = AUTO.LAND
string MODE_PX4_RTGS = AUTO.RTGS
string MODE_PX4_READY = AUTO.READY
string MODE_PX4_TAKEOFF = AUTO.TAKEOFF

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :mavros_msgs/State "65cd0a9fff993b062b91e354554ec7e9")


