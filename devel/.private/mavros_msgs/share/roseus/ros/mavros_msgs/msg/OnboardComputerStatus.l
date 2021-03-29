;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::OnboardComputerStatus)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'OnboardComputerStatus (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::ONBOARDCOMPUTERSTATUS")
  (make-package "MAVROS_MSGS::ONBOARDCOMPUTERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude OnboardComputerStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::OnboardComputerStatus
  :super ros::object
  :slots (_header _component _uptime _type _cpu_cores _cpu_combined _gpu_cores _gpu_combined _temperature_board _temperature_core _fan_speed _ram_usage _ram_total _storage_type _storage_usage _storage_total _link_type _link_tx_rate _link_rx_rate _link_tx_max _link_rx_max ))

(defmethod mavros_msgs::OnboardComputerStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:component __component) 0)
    ((:uptime __uptime) 0)
    ((:type __type) 0)
    ((:cpu_cores __cpu_cores) (make-array 8 :initial-element 0 :element-type :char))
    ((:cpu_combined __cpu_combined) (make-array 10 :initial-element 0 :element-type :char))
    ((:gpu_cores __gpu_cores) (make-array 4 :initial-element 0 :element-type :char))
    ((:gpu_combined __gpu_combined) (make-array 10 :initial-element 0 :element-type :char))
    ((:temperature_board __temperature_board) 0)
    ((:temperature_core __temperature_core) (make-array 8 :initial-element 0 :element-type :integer))
    ((:fan_speed __fan_speed) (make-array 4 :initial-element 0 :element-type :integer))
    ((:ram_usage __ram_usage) 0)
    ((:ram_total __ram_total) 0)
    ((:storage_type __storage_type) (make-array 4 :initial-element 0 :element-type :integer))
    ((:storage_usage __storage_usage) (make-array 4 :initial-element 0 :element-type :integer))
    ((:storage_total __storage_total) (make-array 4 :initial-element 0 :element-type :integer))
    ((:link_type __link_type) (make-array 6 :initial-element 0 :element-type :integer))
    ((:link_tx_rate __link_tx_rate) (make-array 6 :initial-element 0 :element-type :integer))
    ((:link_rx_rate __link_rx_rate) (make-array 6 :initial-element 0 :element-type :integer))
    ((:link_tx_max __link_tx_max) (make-array 6 :initial-element 0 :element-type :integer))
    ((:link_rx_max __link_rx_max) (make-array 6 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _component (round __component))
   (setq _uptime (round __uptime))
   (setq _type (round __type))
   (setq _cpu_cores __cpu_cores)
   (setq _cpu_combined __cpu_combined)
   (setq _gpu_cores __gpu_cores)
   (setq _gpu_combined __gpu_combined)
   (setq _temperature_board (round __temperature_board))
   (setq _temperature_core __temperature_core)
   (setq _fan_speed __fan_speed)
   (setq _ram_usage (round __ram_usage))
   (setq _ram_total (round __ram_total))
   (setq _storage_type __storage_type)
   (setq _storage_usage __storage_usage)
   (setq _storage_total __storage_total)
   (setq _link_type __link_type)
   (setq _link_tx_rate __link_tx_rate)
   (setq _link_rx_rate __link_rx_rate)
   (setq _link_tx_max __link_tx_max)
   (setq _link_rx_max __link_rx_max)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:component
   (&optional __component)
   (if __component (setq _component __component)) _component)
  (:uptime
   (&optional __uptime)
   (if __uptime (setq _uptime __uptime)) _uptime)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:cpu_cores
   (&optional __cpu_cores)
   (if __cpu_cores (setq _cpu_cores __cpu_cores)) _cpu_cores)
  (:cpu_combined
   (&optional __cpu_combined)
   (if __cpu_combined (setq _cpu_combined __cpu_combined)) _cpu_combined)
  (:gpu_cores
   (&optional __gpu_cores)
   (if __gpu_cores (setq _gpu_cores __gpu_cores)) _gpu_cores)
  (:gpu_combined
   (&optional __gpu_combined)
   (if __gpu_combined (setq _gpu_combined __gpu_combined)) _gpu_combined)
  (:temperature_board
   (&optional __temperature_board)
   (if __temperature_board (setq _temperature_board __temperature_board)) _temperature_board)
  (:temperature_core
   (&optional __temperature_core)
   (if __temperature_core (setq _temperature_core __temperature_core)) _temperature_core)
  (:fan_speed
   (&optional __fan_speed)
   (if __fan_speed (setq _fan_speed __fan_speed)) _fan_speed)
  (:ram_usage
   (&optional __ram_usage)
   (if __ram_usage (setq _ram_usage __ram_usage)) _ram_usage)
  (:ram_total
   (&optional __ram_total)
   (if __ram_total (setq _ram_total __ram_total)) _ram_total)
  (:storage_type
   (&optional __storage_type)
   (if __storage_type (setq _storage_type __storage_type)) _storage_type)
  (:storage_usage
   (&optional __storage_usage)
   (if __storage_usage (setq _storage_usage __storage_usage)) _storage_usage)
  (:storage_total
   (&optional __storage_total)
   (if __storage_total (setq _storage_total __storage_total)) _storage_total)
  (:link_type
   (&optional __link_type)
   (if __link_type (setq _link_type __link_type)) _link_type)
  (:link_tx_rate
   (&optional __link_tx_rate)
   (if __link_tx_rate (setq _link_tx_rate __link_tx_rate)) _link_tx_rate)
  (:link_rx_rate
   (&optional __link_rx_rate)
   (if __link_rx_rate (setq _link_rx_rate __link_rx_rate)) _link_rx_rate)
  (:link_tx_max
   (&optional __link_tx_max)
   (if __link_tx_max (setq _link_tx_max __link_tx_max)) _link_tx_max)
  (:link_rx_max
   (&optional __link_rx_max)
   (if __link_rx_max (setq _link_rx_max __link_rx_max)) _link_rx_max)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _component
    1
    ;; uint32 _uptime
    4
    ;; uint8 _type
    1
    ;; uint8[8] _cpu_cores
    (* 1    8)
    ;; uint8[10] _cpu_combined
    (* 1    10)
    ;; uint8[4] _gpu_cores
    (* 1    4)
    ;; uint8[10] _gpu_combined
    (* 1    10)
    ;; int8 _temperature_board
    1
    ;; int8[8] _temperature_core
    (* 1    8)
    ;; int16[4] _fan_speed
    (* 2    4)
    ;; uint32 _ram_usage
    4
    ;; uint32 _ram_total
    4
    ;; uint32[4] _storage_type
    (* 4    4)
    ;; uint32[4] _storage_usage
    (* 4    4)
    ;; uint32[4] _storage_total
    (* 4    4)
    ;; uint32[6] _link_type
    (* 4    6)
    ;; uint32[6] _link_tx_rate
    (* 4    6)
    ;; uint32[6] _link_rx_rate
    (* 4    6)
    ;; uint32[6] _link_tx_max
    (* 4    6)
    ;; uint32[6] _link_rx_max
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _component
       (write-byte _component s)
     ;; uint32 _uptime
       (write-long _uptime s)
     ;; uint8 _type
       (write-byte _type s)
     ;; uint8[8] _cpu_cores
     (princ _cpu_cores s)
     ;; uint8[10] _cpu_combined
     (princ _cpu_combined s)
     ;; uint8[4] _gpu_cores
     (princ _gpu_cores s)
     ;; uint8[10] _gpu_combined
     (princ _gpu_combined s)
     ;; int8 _temperature_board
       (write-byte _temperature_board s)
     ;; int8[8] _temperature_core
     (dotimes (i 8)
       (write-byte (elt _temperature_core i) s)
       )
     ;; int16[4] _fan_speed
     (dotimes (i 4)
       (write-word (elt _fan_speed i) s)
       )
     ;; uint32 _ram_usage
       (write-long _ram_usage s)
     ;; uint32 _ram_total
       (write-long _ram_total s)
     ;; uint32[4] _storage_type
     (dotimes (i 4)
       (write-long (elt _storage_type i) s)
       )
     ;; uint32[4] _storage_usage
     (dotimes (i 4)
       (write-long (elt _storage_usage i) s)
       )
     ;; uint32[4] _storage_total
     (dotimes (i 4)
       (write-long (elt _storage_total i) s)
       )
     ;; uint32[6] _link_type
     (dotimes (i 6)
       (write-long (elt _link_type i) s)
       )
     ;; uint32[6] _link_tx_rate
     (dotimes (i 6)
       (write-long (elt _link_tx_rate i) s)
       )
     ;; uint32[6] _link_rx_rate
     (dotimes (i 6)
       (write-long (elt _link_rx_rate i) s)
       )
     ;; uint32[6] _link_tx_max
     (dotimes (i 6)
       (write-long (elt _link_tx_max i) s)
       )
     ;; uint32[6] _link_rx_max
     (dotimes (i 6)
       (write-long (elt _link_rx_max i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _component
     (setq _component (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _uptime
     (setq _uptime (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[8] _cpu_cores
   (setq _cpu_cores (make-array 8 :element-type :char))
   (replace _cpu_cores buf :start2 ptr-) (incf ptr- 8)
   ;; uint8[10] _cpu_combined
   (setq _cpu_combined (make-array 10 :element-type :char))
   (replace _cpu_combined buf :start2 ptr-) (incf ptr- 10)
   ;; uint8[4] _gpu_cores
   (setq _gpu_cores (make-array 4 :element-type :char))
   (replace _gpu_cores buf :start2 ptr-) (incf ptr- 4)
   ;; uint8[10] _gpu_combined
   (setq _gpu_combined (make-array 10 :element-type :char))
   (replace _gpu_combined buf :start2 ptr-) (incf ptr- 10)
   ;; int8 _temperature_board
     (setq _temperature_board (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _temperature_board 127) (setq _temperature_board (- _temperature_board 256)))
   ;; int8[8] _temperature_core
   (dotimes (i (length _temperature_core))
     (setf (elt _temperature_core i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _temperature_core i) 127) (setf (elt _temperature_core i) (- (elt _temperature_core i) 256)))
     )
   ;; int16[4] _fan_speed
   (dotimes (i (length _fan_speed))
     (setf (elt _fan_speed i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; uint32 _ram_usage
     (setq _ram_usage (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _ram_total
     (setq _ram_total (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32[4] _storage_type
   (dotimes (i (length _storage_type))
     (setf (elt _storage_type i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; uint32[4] _storage_usage
   (dotimes (i (length _storage_usage))
     (setf (elt _storage_usage i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; uint32[4] _storage_total
   (dotimes (i (length _storage_total))
     (setf (elt _storage_total i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; uint32[6] _link_type
   (dotimes (i (length _link_type))
     (setf (elt _link_type i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; uint32[6] _link_tx_rate
   (dotimes (i (length _link_tx_rate))
     (setf (elt _link_tx_rate i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; uint32[6] _link_rx_rate
   (dotimes (i (length _link_rx_rate))
     (setf (elt _link_rx_rate i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; uint32[6] _link_tx_max
   (dotimes (i (length _link_tx_max))
     (setf (elt _link_tx_max i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; uint32[6] _link_rx_max
   (dotimes (i (length _link_rx_max))
     (setf (elt _link_rx_max i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get mavros_msgs::OnboardComputerStatus :md5sum-) "aebe864fac2952ca9de45a2b65875a60")
(setf (get mavros_msgs::OnboardComputerStatus :datatype-) "mavros_msgs/OnboardComputerStatus")
(setf (get mavros_msgs::OnboardComputerStatus :definition-)
      "# Mavros message: ONBOARDCOMPUTERSTATUS

std_msgs/Header header

uint8 component               # See enum MAV_COMPONENT

uint32 uptime               # [ms] Time since system boot
uint8 type                  # Type of the onboard computer: 0: Mission computer primary, 1: Mission computer backup 1, 2: Mission computer backup 2, 3: Compute node, 4-5: Compute spares, 6-9: Payload computers.
uint8[8] cpu_cores          # CPU usage on the component in percent (100 - idle). A value of UINT8_MAX implies the field is unused.
uint8[10] cpu_combined      # Combined CPU usage as the last 10 slices of 100 MS (a histogram). This allows to identify spikes in load that max out the system, but only for a short amount of time. A value of UINT8_MAX implies the field is unused
uint8[4] gpu_cores          # GPU usage on the component in percent (100 - idle). A value of UINT8_MAX implies the field is unused
uint8[10] gpu_combined      # Combined GPU usage as the last 10 slices of 100 MS (a histogram). This allows to identify spikes in load that max out the system, but only for a short amount of time. A value of UINT8_MAX implies the field is unused.
int8 temperature_board      # [degC] Temperature of the board. A value of INT8_MAX implies the field is unused.
int8[8] temperature_core    # [degC] Temperature of the CPU core. A value of INT8_MAX implies the field is unused.
int16[4] fan_speed          # [rpm] Fan speeds. A value of INT16_MAX implies the field is unused.
uint32 ram_usage            # [MiB] Amount of used RAM on the component system. A value of UINT32_MAX implies the field is unused.
uint32 ram_total            # [MiB] Total amount of RAM on the component system. A value of UINT32_MAX implies the field is unused.
uint32[4] storage_type      # Storage type: 0: HDD, 1: SSD, 2: EMMC, 3: SD card (non-removable), 4: SD card (removable). A value of UINT32_MAX implies the field is unused.
uint32[4] storage_usage     # [MiB] Amount of used storage space on the component system. A value of UINT32_MAX implies the field is unused.
uint32[4] storage_total     # [MiB] Total amount of storage space on the component system. A value of UINT32_MAX implies the field is unused.
uint32[6] link_type         # Link type: 0-9: UART, 10-19: Wired network, 20-29: Wifi, 30-39: Point-to-point proprietary, 40-49: Mesh proprietary.
uint32[6] link_tx_rate      # [KiB/s] Network traffic from the component system. A value of UINT32_MAX implies the field is unused.
uint32[6] link_rx_rate      # [KiB/s] Network traffic to the component system. A value of UINT32_MAX implies the field is unused.
uint32[6] link_tx_max       # [KiB/s] Network capacity from the component system. A value of UINT32_MAX implies the field is unused.
uint32[6] link_rx_max       # [KiB/s] Network capacity to the component system. A value of UINT32_MAX implies the field is unused.
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



(provide :mavros_msgs/OnboardComputerStatus "aebe864fac2952ca9de45a2b65875a60")


