;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::EstimatorStatus)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'EstimatorStatus (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::ESTIMATORSTATUS")
  (make-package "MAVROS_MSGS::ESTIMATORSTATUS"))

(in-package "ROS")
;;//! \htmlinclude EstimatorStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::EstimatorStatus
  :super ros::object
  :slots (_header _attitude_status_flag _velocity_horiz_status_flag _velocity_vert_status_flag _pos_horiz_rel_status_flag _pos_horiz_abs_status_flag _pos_vert_abs_status_flag _pos_vert_agl_status_flag _const_pos_mode_status_flag _pred_pos_horiz_rel_status_flag _pred_pos_horiz_abs_status_flag _gps_glitch_status_flag _accel_error_status_flag ))

(defmethod mavros_msgs::EstimatorStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:attitude_status_flag __attitude_status_flag) nil)
    ((:velocity_horiz_status_flag __velocity_horiz_status_flag) nil)
    ((:velocity_vert_status_flag __velocity_vert_status_flag) nil)
    ((:pos_horiz_rel_status_flag __pos_horiz_rel_status_flag) nil)
    ((:pos_horiz_abs_status_flag __pos_horiz_abs_status_flag) nil)
    ((:pos_vert_abs_status_flag __pos_vert_abs_status_flag) nil)
    ((:pos_vert_agl_status_flag __pos_vert_agl_status_flag) nil)
    ((:const_pos_mode_status_flag __const_pos_mode_status_flag) nil)
    ((:pred_pos_horiz_rel_status_flag __pred_pos_horiz_rel_status_flag) nil)
    ((:pred_pos_horiz_abs_status_flag __pred_pos_horiz_abs_status_flag) nil)
    ((:gps_glitch_status_flag __gps_glitch_status_flag) nil)
    ((:accel_error_status_flag __accel_error_status_flag) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _attitude_status_flag __attitude_status_flag)
   (setq _velocity_horiz_status_flag __velocity_horiz_status_flag)
   (setq _velocity_vert_status_flag __velocity_vert_status_flag)
   (setq _pos_horiz_rel_status_flag __pos_horiz_rel_status_flag)
   (setq _pos_horiz_abs_status_flag __pos_horiz_abs_status_flag)
   (setq _pos_vert_abs_status_flag __pos_vert_abs_status_flag)
   (setq _pos_vert_agl_status_flag __pos_vert_agl_status_flag)
   (setq _const_pos_mode_status_flag __const_pos_mode_status_flag)
   (setq _pred_pos_horiz_rel_status_flag __pred_pos_horiz_rel_status_flag)
   (setq _pred_pos_horiz_abs_status_flag __pred_pos_horiz_abs_status_flag)
   (setq _gps_glitch_status_flag __gps_glitch_status_flag)
   (setq _accel_error_status_flag __accel_error_status_flag)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:attitude_status_flag
   (&optional __attitude_status_flag)
   (if __attitude_status_flag (setq _attitude_status_flag __attitude_status_flag)) _attitude_status_flag)
  (:velocity_horiz_status_flag
   (&optional __velocity_horiz_status_flag)
   (if __velocity_horiz_status_flag (setq _velocity_horiz_status_flag __velocity_horiz_status_flag)) _velocity_horiz_status_flag)
  (:velocity_vert_status_flag
   (&optional __velocity_vert_status_flag)
   (if __velocity_vert_status_flag (setq _velocity_vert_status_flag __velocity_vert_status_flag)) _velocity_vert_status_flag)
  (:pos_horiz_rel_status_flag
   (&optional __pos_horiz_rel_status_flag)
   (if __pos_horiz_rel_status_flag (setq _pos_horiz_rel_status_flag __pos_horiz_rel_status_flag)) _pos_horiz_rel_status_flag)
  (:pos_horiz_abs_status_flag
   (&optional __pos_horiz_abs_status_flag)
   (if __pos_horiz_abs_status_flag (setq _pos_horiz_abs_status_flag __pos_horiz_abs_status_flag)) _pos_horiz_abs_status_flag)
  (:pos_vert_abs_status_flag
   (&optional __pos_vert_abs_status_flag)
   (if __pos_vert_abs_status_flag (setq _pos_vert_abs_status_flag __pos_vert_abs_status_flag)) _pos_vert_abs_status_flag)
  (:pos_vert_agl_status_flag
   (&optional __pos_vert_agl_status_flag)
   (if __pos_vert_agl_status_flag (setq _pos_vert_agl_status_flag __pos_vert_agl_status_flag)) _pos_vert_agl_status_flag)
  (:const_pos_mode_status_flag
   (&optional __const_pos_mode_status_flag)
   (if __const_pos_mode_status_flag (setq _const_pos_mode_status_flag __const_pos_mode_status_flag)) _const_pos_mode_status_flag)
  (:pred_pos_horiz_rel_status_flag
   (&optional __pred_pos_horiz_rel_status_flag)
   (if __pred_pos_horiz_rel_status_flag (setq _pred_pos_horiz_rel_status_flag __pred_pos_horiz_rel_status_flag)) _pred_pos_horiz_rel_status_flag)
  (:pred_pos_horiz_abs_status_flag
   (&optional __pred_pos_horiz_abs_status_flag)
   (if __pred_pos_horiz_abs_status_flag (setq _pred_pos_horiz_abs_status_flag __pred_pos_horiz_abs_status_flag)) _pred_pos_horiz_abs_status_flag)
  (:gps_glitch_status_flag
   (&optional __gps_glitch_status_flag)
   (if __gps_glitch_status_flag (setq _gps_glitch_status_flag __gps_glitch_status_flag)) _gps_glitch_status_flag)
  (:accel_error_status_flag
   (&optional __accel_error_status_flag)
   (if __accel_error_status_flag (setq _accel_error_status_flag __accel_error_status_flag)) _accel_error_status_flag)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _attitude_status_flag
    1
    ;; bool _velocity_horiz_status_flag
    1
    ;; bool _velocity_vert_status_flag
    1
    ;; bool _pos_horiz_rel_status_flag
    1
    ;; bool _pos_horiz_abs_status_flag
    1
    ;; bool _pos_vert_abs_status_flag
    1
    ;; bool _pos_vert_agl_status_flag
    1
    ;; bool _const_pos_mode_status_flag
    1
    ;; bool _pred_pos_horiz_rel_status_flag
    1
    ;; bool _pred_pos_horiz_abs_status_flag
    1
    ;; bool _gps_glitch_status_flag
    1
    ;; bool _accel_error_status_flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _attitude_status_flag
       (if _attitude_status_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _velocity_horiz_status_flag
       (if _velocity_horiz_status_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _velocity_vert_status_flag
       (if _velocity_vert_status_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _pos_horiz_rel_status_flag
       (if _pos_horiz_rel_status_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _pos_horiz_abs_status_flag
       (if _pos_horiz_abs_status_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _pos_vert_abs_status_flag
       (if _pos_vert_abs_status_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _pos_vert_agl_status_flag
       (if _pos_vert_agl_status_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _const_pos_mode_status_flag
       (if _const_pos_mode_status_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _pred_pos_horiz_rel_status_flag
       (if _pred_pos_horiz_rel_status_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _pred_pos_horiz_abs_status_flag
       (if _pred_pos_horiz_abs_status_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _gps_glitch_status_flag
       (if _gps_glitch_status_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _accel_error_status_flag
       (if _accel_error_status_flag (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _attitude_status_flag
     (setq _attitude_status_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _velocity_horiz_status_flag
     (setq _velocity_horiz_status_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _velocity_vert_status_flag
     (setq _velocity_vert_status_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pos_horiz_rel_status_flag
     (setq _pos_horiz_rel_status_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pos_horiz_abs_status_flag
     (setq _pos_horiz_abs_status_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pos_vert_abs_status_flag
     (setq _pos_vert_abs_status_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pos_vert_agl_status_flag
     (setq _pos_vert_agl_status_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _const_pos_mode_status_flag
     (setq _const_pos_mode_status_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pred_pos_horiz_rel_status_flag
     (setq _pred_pos_horiz_rel_status_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pred_pos_horiz_abs_status_flag
     (setq _pred_pos_horiz_abs_status_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gps_glitch_status_flag
     (setq _gps_glitch_status_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _accel_error_status_flag
     (setq _accel_error_status_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mavros_msgs::EstimatorStatus :md5sum-) "39dbcc4be3f04b68422f784827c47dd5")
(setf (get mavros_msgs::EstimatorStatus :datatype-) "mavros_msgs/EstimatorStatus")
(setf (get mavros_msgs::EstimatorStatus :definition-)
      "# Current autopilot estimator state
#
# https://mavlink.io/en/messages/common.html#ESTIMATOR_STATUS_FLAGS

std_msgs/Header header
bool attitude_status_flag

bool velocity_horiz_status_flag
bool velocity_vert_status_flag

bool pos_horiz_rel_status_flag
bool pos_horiz_abs_status_flag

bool pos_vert_abs_status_flag
bool pos_vert_agl_status_flag

bool const_pos_mode_status_flag

bool pred_pos_horiz_rel_status_flag
bool pred_pos_horiz_abs_status_flag

bool gps_glitch_status_flag
bool accel_error_status_flag
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



(provide :mavros_msgs/EstimatorStatus "39dbcc4be3f04b68422f784827c47dd5")


