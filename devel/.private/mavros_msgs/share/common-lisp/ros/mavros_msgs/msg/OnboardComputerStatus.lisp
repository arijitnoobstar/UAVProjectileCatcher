; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude OnboardComputerStatus.msg.html

(cl:defclass <OnboardComputerStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (component
    :reader component
    :initarg :component
    :type cl:fixnum
    :initform 0)
   (uptime
    :reader uptime
    :initarg :uptime
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (cpu_cores
    :reader cpu_cores
    :initarg :cpu_cores
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 8 :element-type 'cl:fixnum :initial-element 0))
   (cpu_combined
    :reader cpu_combined
    :initarg :cpu_combined
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 10 :element-type 'cl:fixnum :initial-element 0))
   (gpu_cores
    :reader gpu_cores
    :initarg :gpu_cores
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 4 :element-type 'cl:fixnum :initial-element 0))
   (gpu_combined
    :reader gpu_combined
    :initarg :gpu_combined
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 10 :element-type 'cl:fixnum :initial-element 0))
   (temperature_board
    :reader temperature_board
    :initarg :temperature_board
    :type cl:fixnum
    :initform 0)
   (temperature_core
    :reader temperature_core
    :initarg :temperature_core
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 8 :element-type 'cl:fixnum :initial-element 0))
   (fan_speed
    :reader fan_speed
    :initarg :fan_speed
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 4 :element-type 'cl:fixnum :initial-element 0))
   (ram_usage
    :reader ram_usage
    :initarg :ram_usage
    :type cl:integer
    :initform 0)
   (ram_total
    :reader ram_total
    :initarg :ram_total
    :type cl:integer
    :initform 0)
   (storage_type
    :reader storage_type
    :initarg :storage_type
    :type (cl:vector cl:integer)
   :initform (cl:make-array 4 :element-type 'cl:integer :initial-element 0))
   (storage_usage
    :reader storage_usage
    :initarg :storage_usage
    :type (cl:vector cl:integer)
   :initform (cl:make-array 4 :element-type 'cl:integer :initial-element 0))
   (storage_total
    :reader storage_total
    :initarg :storage_total
    :type (cl:vector cl:integer)
   :initform (cl:make-array 4 :element-type 'cl:integer :initial-element 0))
   (link_type
    :reader link_type
    :initarg :link_type
    :type (cl:vector cl:integer)
   :initform (cl:make-array 6 :element-type 'cl:integer :initial-element 0))
   (link_tx_rate
    :reader link_tx_rate
    :initarg :link_tx_rate
    :type (cl:vector cl:integer)
   :initform (cl:make-array 6 :element-type 'cl:integer :initial-element 0))
   (link_rx_rate
    :reader link_rx_rate
    :initarg :link_rx_rate
    :type (cl:vector cl:integer)
   :initform (cl:make-array 6 :element-type 'cl:integer :initial-element 0))
   (link_tx_max
    :reader link_tx_max
    :initarg :link_tx_max
    :type (cl:vector cl:integer)
   :initform (cl:make-array 6 :element-type 'cl:integer :initial-element 0))
   (link_rx_max
    :reader link_rx_max
    :initarg :link_rx_max
    :type (cl:vector cl:integer)
   :initform (cl:make-array 6 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass OnboardComputerStatus (<OnboardComputerStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OnboardComputerStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OnboardComputerStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<OnboardComputerStatus> is deprecated: use mavros_msgs-msg:OnboardComputerStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OnboardComputerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'component-val :lambda-list '(m))
(cl:defmethod component-val ((m <OnboardComputerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:component-val is deprecated.  Use mavros_msgs-msg:component instead.")
  (component m))

(cl:ensure-generic-function 'uptime-val :lambda-list '(m))
(cl:defmethod uptime-val ((m <OnboardComputerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:uptime-val is deprecated.  Use mavros_msgs-msg:uptime instead.")
  (uptime m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <OnboardComputerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:type-val is deprecated.  Use mavros_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'cpu_cores-val :lambda-list '(m))
(cl:defmethod cpu_cores-val ((m <OnboardComputerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:cpu_cores-val is deprecated.  Use mavros_msgs-msg:cpu_cores instead.")
  (cpu_cores m))

(cl:ensure-generic-function 'cpu_combined-val :lambda-list '(m))
(cl:defmethod cpu_combined-val ((m <OnboardComputerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:cpu_combined-val is deprecated.  Use mavros_msgs-msg:cpu_combined instead.")
  (cpu_combined m))

(cl:ensure-generic-function 'gpu_cores-val :lambda-list '(m))
(cl:defmethod gpu_cores-val ((m <OnboardComputerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:gpu_cores-val is deprecated.  Use mavros_msgs-msg:gpu_cores instead.")
  (gpu_cores m))

(cl:ensure-generic-function 'gpu_combined-val :lambda-list '(m))
(cl:defmethod gpu_combined-val ((m <OnboardComputerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:gpu_combined-val is deprecated.  Use mavros_msgs-msg:gpu_combined instead.")
  (gpu_combined m))

(cl:ensure-generic-function 'temperature_board-val :lambda-list '(m))
(cl:defmethod temperature_board-val ((m <OnboardComputerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:temperature_board-val is deprecated.  Use mavros_msgs-msg:temperature_board instead.")
  (temperature_board m))

(cl:ensure-generic-function 'temperature_core-val :lambda-list '(m))
(cl:defmethod temperature_core-val ((m <OnboardComputerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:temperature_core-val is deprecated.  Use mavros_msgs-msg:temperature_core instead.")
  (temperature_core m))

(cl:ensure-generic-function 'fan_speed-val :lambda-list '(m))
(cl:defmethod fan_speed-val ((m <OnboardComputerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:fan_speed-val is deprecated.  Use mavros_msgs-msg:fan_speed instead.")
  (fan_speed m))

(cl:ensure-generic-function 'ram_usage-val :lambda-list '(m))
(cl:defmethod ram_usage-val ((m <OnboardComputerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:ram_usage-val is deprecated.  Use mavros_msgs-msg:ram_usage instead.")
  (ram_usage m))

(cl:ensure-generic-function 'ram_total-val :lambda-list '(m))
(cl:defmethod ram_total-val ((m <OnboardComputerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:ram_total-val is deprecated.  Use mavros_msgs-msg:ram_total instead.")
  (ram_total m))

(cl:ensure-generic-function 'storage_type-val :lambda-list '(m))
(cl:defmethod storage_type-val ((m <OnboardComputerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:storage_type-val is deprecated.  Use mavros_msgs-msg:storage_type instead.")
  (storage_type m))

(cl:ensure-generic-function 'storage_usage-val :lambda-list '(m))
(cl:defmethod storage_usage-val ((m <OnboardComputerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:storage_usage-val is deprecated.  Use mavros_msgs-msg:storage_usage instead.")
  (storage_usage m))

(cl:ensure-generic-function 'storage_total-val :lambda-list '(m))
(cl:defmethod storage_total-val ((m <OnboardComputerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:storage_total-val is deprecated.  Use mavros_msgs-msg:storage_total instead.")
  (storage_total m))

(cl:ensure-generic-function 'link_type-val :lambda-list '(m))
(cl:defmethod link_type-val ((m <OnboardComputerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:link_type-val is deprecated.  Use mavros_msgs-msg:link_type instead.")
  (link_type m))

(cl:ensure-generic-function 'link_tx_rate-val :lambda-list '(m))
(cl:defmethod link_tx_rate-val ((m <OnboardComputerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:link_tx_rate-val is deprecated.  Use mavros_msgs-msg:link_tx_rate instead.")
  (link_tx_rate m))

(cl:ensure-generic-function 'link_rx_rate-val :lambda-list '(m))
(cl:defmethod link_rx_rate-val ((m <OnboardComputerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:link_rx_rate-val is deprecated.  Use mavros_msgs-msg:link_rx_rate instead.")
  (link_rx_rate m))

(cl:ensure-generic-function 'link_tx_max-val :lambda-list '(m))
(cl:defmethod link_tx_max-val ((m <OnboardComputerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:link_tx_max-val is deprecated.  Use mavros_msgs-msg:link_tx_max instead.")
  (link_tx_max m))

(cl:ensure-generic-function 'link_rx_max-val :lambda-list '(m))
(cl:defmethod link_rx_max-val ((m <OnboardComputerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:link_rx_max-val is deprecated.  Use mavros_msgs-msg:link_rx_max instead.")
  (link_rx_max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OnboardComputerStatus>) ostream)
  "Serializes a message object of type '<OnboardComputerStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'component)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uptime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uptime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uptime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uptime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'cpu_cores))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'cpu_combined))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'gpu_cores))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'gpu_combined))
  (cl:let* ((signed (cl:slot-value msg 'temperature_board)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'temperature_core))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'fan_speed))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ram_usage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ram_usage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ram_usage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ram_usage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ram_total)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ram_total)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ram_total)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ram_total)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'storage_type))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'storage_usage))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'storage_total))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'link_type))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'link_tx_rate))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'link_rx_rate))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'link_tx_max))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'link_rx_max))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OnboardComputerStatus>) istream)
  "Deserializes a message object of type '<OnboardComputerStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'component)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uptime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uptime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uptime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uptime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cpu_cores) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'cpu_cores)))
    (cl:dotimes (i 8)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'cpu_combined) (cl:make-array 10))
  (cl:let ((vals (cl:slot-value msg 'cpu_combined)))
    (cl:dotimes (i 10)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'gpu_cores) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'gpu_cores)))
    (cl:dotimes (i 4)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'gpu_combined) (cl:make-array 10))
  (cl:let ((vals (cl:slot-value msg 'gpu_combined)))
    (cl:dotimes (i 10)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temperature_board) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:setf (cl:slot-value msg 'temperature_core) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'temperature_core)))
    (cl:dotimes (i 8)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))))
  (cl:setf (cl:slot-value msg 'fan_speed) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'fan_speed)))
    (cl:dotimes (i 4)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ram_usage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ram_usage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ram_usage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ram_usage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ram_total)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ram_total)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ram_total)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ram_total)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'storage_type) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'storage_type)))
    (cl:dotimes (i 4)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'storage_usage) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'storage_usage)))
    (cl:dotimes (i 4)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'storage_total) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'storage_total)))
    (cl:dotimes (i 4)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'link_type) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'link_type)))
    (cl:dotimes (i 6)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'link_tx_rate) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'link_tx_rate)))
    (cl:dotimes (i 6)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'link_rx_rate) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'link_rx_rate)))
    (cl:dotimes (i 6)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'link_tx_max) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'link_tx_max)))
    (cl:dotimes (i 6)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'link_rx_max) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'link_rx_max)))
    (cl:dotimes (i 6)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OnboardComputerStatus>)))
  "Returns string type for a message object of type '<OnboardComputerStatus>"
  "mavros_msgs/OnboardComputerStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OnboardComputerStatus)))
  "Returns string type for a message object of type 'OnboardComputerStatus"
  "mavros_msgs/OnboardComputerStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OnboardComputerStatus>)))
  "Returns md5sum for a message object of type '<OnboardComputerStatus>"
  "aebe864fac2952ca9de45a2b65875a60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OnboardComputerStatus)))
  "Returns md5sum for a message object of type 'OnboardComputerStatus"
  "aebe864fac2952ca9de45a2b65875a60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OnboardComputerStatus>)))
  "Returns full string definition for message of type '<OnboardComputerStatus>"
  (cl:format cl:nil "# Mavros message: ONBOARDCOMPUTERSTATUS~%~%std_msgs/Header header~%~%uint8 component               # See enum MAV_COMPONENT~%~%uint32 uptime               # [ms] Time since system boot~%uint8 type                  # Type of the onboard computer: 0: Mission computer primary, 1: Mission computer backup 1, 2: Mission computer backup 2, 3: Compute node, 4-5: Compute spares, 6-9: Payload computers.~%uint8[8] cpu_cores          # CPU usage on the component in percent (100 - idle). A value of UINT8_MAX implies the field is unused.~%uint8[10] cpu_combined      # Combined CPU usage as the last 10 slices of 100 MS (a histogram). This allows to identify spikes in load that max out the system, but only for a short amount of time. A value of UINT8_MAX implies the field is unused~%uint8[4] gpu_cores          # GPU usage on the component in percent (100 - idle). A value of UINT8_MAX implies the field is unused~%uint8[10] gpu_combined      # Combined GPU usage as the last 10 slices of 100 MS (a histogram). This allows to identify spikes in load that max out the system, but only for a short amount of time. A value of UINT8_MAX implies the field is unused.~%int8 temperature_board      # [degC] Temperature of the board. A value of INT8_MAX implies the field is unused.~%int8[8] temperature_core    # [degC] Temperature of the CPU core. A value of INT8_MAX implies the field is unused.~%int16[4] fan_speed          # [rpm] Fan speeds. A value of INT16_MAX implies the field is unused.~%uint32 ram_usage            # [MiB] Amount of used RAM on the component system. A value of UINT32_MAX implies the field is unused.~%uint32 ram_total            # [MiB] Total amount of RAM on the component system. A value of UINT32_MAX implies the field is unused.~%uint32[4] storage_type      # Storage type: 0: HDD, 1: SSD, 2: EMMC, 3: SD card (non-removable), 4: SD card (removable). A value of UINT32_MAX implies the field is unused.~%uint32[4] storage_usage     # [MiB] Amount of used storage space on the component system. A value of UINT32_MAX implies the field is unused.~%uint32[4] storage_total     # [MiB] Total amount of storage space on the component system. A value of UINT32_MAX implies the field is unused.~%uint32[6] link_type         # Link type: 0-9: UART, 10-19: Wired network, 20-29: Wifi, 30-39: Point-to-point proprietary, 40-49: Mesh proprietary.~%uint32[6] link_tx_rate      # [KiB/s] Network traffic from the component system. A value of UINT32_MAX implies the field is unused.~%uint32[6] link_rx_rate      # [KiB/s] Network traffic to the component system. A value of UINT32_MAX implies the field is unused.~%uint32[6] link_tx_max       # [KiB/s] Network capacity from the component system. A value of UINT32_MAX implies the field is unused.~%uint32[6] link_rx_max       # [KiB/s] Network capacity to the component system. A value of UINT32_MAX implies the field is unused.~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OnboardComputerStatus)))
  "Returns full string definition for message of type 'OnboardComputerStatus"
  (cl:format cl:nil "# Mavros message: ONBOARDCOMPUTERSTATUS~%~%std_msgs/Header header~%~%uint8 component               # See enum MAV_COMPONENT~%~%uint32 uptime               # [ms] Time since system boot~%uint8 type                  # Type of the onboard computer: 0: Mission computer primary, 1: Mission computer backup 1, 2: Mission computer backup 2, 3: Compute node, 4-5: Compute spares, 6-9: Payload computers.~%uint8[8] cpu_cores          # CPU usage on the component in percent (100 - idle). A value of UINT8_MAX implies the field is unused.~%uint8[10] cpu_combined      # Combined CPU usage as the last 10 slices of 100 MS (a histogram). This allows to identify spikes in load that max out the system, but only for a short amount of time. A value of UINT8_MAX implies the field is unused~%uint8[4] gpu_cores          # GPU usage on the component in percent (100 - idle). A value of UINT8_MAX implies the field is unused~%uint8[10] gpu_combined      # Combined GPU usage as the last 10 slices of 100 MS (a histogram). This allows to identify spikes in load that max out the system, but only for a short amount of time. A value of UINT8_MAX implies the field is unused.~%int8 temperature_board      # [degC] Temperature of the board. A value of INT8_MAX implies the field is unused.~%int8[8] temperature_core    # [degC] Temperature of the CPU core. A value of INT8_MAX implies the field is unused.~%int16[4] fan_speed          # [rpm] Fan speeds. A value of INT16_MAX implies the field is unused.~%uint32 ram_usage            # [MiB] Amount of used RAM on the component system. A value of UINT32_MAX implies the field is unused.~%uint32 ram_total            # [MiB] Total amount of RAM on the component system. A value of UINT32_MAX implies the field is unused.~%uint32[4] storage_type      # Storage type: 0: HDD, 1: SSD, 2: EMMC, 3: SD card (non-removable), 4: SD card (removable). A value of UINT32_MAX implies the field is unused.~%uint32[4] storage_usage     # [MiB] Amount of used storage space on the component system. A value of UINT32_MAX implies the field is unused.~%uint32[4] storage_total     # [MiB] Total amount of storage space on the component system. A value of UINT32_MAX implies the field is unused.~%uint32[6] link_type         # Link type: 0-9: UART, 10-19: Wired network, 20-29: Wifi, 30-39: Point-to-point proprietary, 40-49: Mesh proprietary.~%uint32[6] link_tx_rate      # [KiB/s] Network traffic from the component system. A value of UINT32_MAX implies the field is unused.~%uint32[6] link_rx_rate      # [KiB/s] Network traffic to the component system. A value of UINT32_MAX implies the field is unused.~%uint32[6] link_tx_max       # [KiB/s] Network capacity from the component system. A value of UINT32_MAX implies the field is unused.~%uint32[6] link_rx_max       # [KiB/s] Network capacity to the component system. A value of UINT32_MAX implies the field is unused.~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OnboardComputerStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'cpu_cores) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'cpu_combined) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'gpu_cores) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'gpu_combined) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'temperature_core) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'fan_speed) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'storage_type) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'storage_usage) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'storage_total) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'link_type) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'link_tx_rate) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'link_rx_rate) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'link_tx_max) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'link_rx_max) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OnboardComputerStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'OnboardComputerStatus
    (cl:cons ':header (header msg))
    (cl:cons ':component (component msg))
    (cl:cons ':uptime (uptime msg))
    (cl:cons ':type (type msg))
    (cl:cons ':cpu_cores (cpu_cores msg))
    (cl:cons ':cpu_combined (cpu_combined msg))
    (cl:cons ':gpu_cores (gpu_cores msg))
    (cl:cons ':gpu_combined (gpu_combined msg))
    (cl:cons ':temperature_board (temperature_board msg))
    (cl:cons ':temperature_core (temperature_core msg))
    (cl:cons ':fan_speed (fan_speed msg))
    (cl:cons ':ram_usage (ram_usage msg))
    (cl:cons ':ram_total (ram_total msg))
    (cl:cons ':storage_type (storage_type msg))
    (cl:cons ':storage_usage (storage_usage msg))
    (cl:cons ':storage_total (storage_total msg))
    (cl:cons ':link_type (link_type msg))
    (cl:cons ':link_tx_rate (link_tx_rate msg))
    (cl:cons ':link_rx_rate (link_rx_rate msg))
    (cl:cons ':link_tx_max (link_tx_max msg))
    (cl:cons ':link_rx_max (link_rx_max msg))
))
