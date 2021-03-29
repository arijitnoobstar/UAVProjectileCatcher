;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::Mavlink)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'Mavlink (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::MAVLINK")
  (make-package "MAVROS_MSGS::MAVLINK"))

(in-package "ROS")
;;//! \htmlinclude Mavlink.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*FRAMING_OK*" (find-package "MAVROS_MSGS::MAVLINK"))
(shadow '*FRAMING_OK* (find-package "MAVROS_MSGS::MAVLINK"))
(defconstant mavros_msgs::Mavlink::*FRAMING_OK* 1)
(intern "*FRAMING_BAD_CRC*" (find-package "MAVROS_MSGS::MAVLINK"))
(shadow '*FRAMING_BAD_CRC* (find-package "MAVROS_MSGS::MAVLINK"))
(defconstant mavros_msgs::Mavlink::*FRAMING_BAD_CRC* 2)
(intern "*FRAMING_BAD_SIGNATURE*" (find-package "MAVROS_MSGS::MAVLINK"))
(shadow '*FRAMING_BAD_SIGNATURE* (find-package "MAVROS_MSGS::MAVLINK"))
(defconstant mavros_msgs::Mavlink::*FRAMING_BAD_SIGNATURE* 3)
(intern "*MAVLINK_V10*" (find-package "MAVROS_MSGS::MAVLINK"))
(shadow '*MAVLINK_V10* (find-package "MAVROS_MSGS::MAVLINK"))
(defconstant mavros_msgs::Mavlink::*MAVLINK_V10* 254)
(intern "*MAVLINK_V20*" (find-package "MAVROS_MSGS::MAVLINK"))
(shadow '*MAVLINK_V20* (find-package "MAVROS_MSGS::MAVLINK"))
(defconstant mavros_msgs::Mavlink::*MAVLINK_V20* 253)
(defclass mavros_msgs::Mavlink
  :super ros::object
  :slots (_header _framing_status _magic _len _incompat_flags _compat_flags _seq _sysid _compid _msgid _checksum _payload64 _signature ))

(defmethod mavros_msgs::Mavlink
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:framing_status __framing_status) 0)
    ((:magic __magic) 0)
    ((:len __len) 0)
    ((:incompat_flags __incompat_flags) 0)
    ((:compat_flags __compat_flags) 0)
    ((:seq __seq) 0)
    ((:sysid __sysid) 0)
    ((:compid __compid) 0)
    ((:msgid __msgid) 0)
    ((:checksum __checksum) 0)
    ((:payload64 __payload64) (make-array 0 :initial-element 0 :element-type :integer))
    ((:signature __signature) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _framing_status (round __framing_status))
   (setq _magic (round __magic))
   (setq _len (round __len))
   (setq _incompat_flags (round __incompat_flags))
   (setq _compat_flags (round __compat_flags))
   (setq _seq (round __seq))
   (setq _sysid (round __sysid))
   (setq _compid (round __compid))
   (setq _msgid (round __msgid))
   (setq _checksum (round __checksum))
   (setq _payload64 __payload64)
   (setq _signature __signature)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:framing_status
   (&optional __framing_status)
   (if __framing_status (setq _framing_status __framing_status)) _framing_status)
  (:magic
   (&optional __magic)
   (if __magic (setq _magic __magic)) _magic)
  (:len
   (&optional __len)
   (if __len (setq _len __len)) _len)
  (:incompat_flags
   (&optional __incompat_flags)
   (if __incompat_flags (setq _incompat_flags __incompat_flags)) _incompat_flags)
  (:compat_flags
   (&optional __compat_flags)
   (if __compat_flags (setq _compat_flags __compat_flags)) _compat_flags)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:sysid
   (&optional __sysid)
   (if __sysid (setq _sysid __sysid)) _sysid)
  (:compid
   (&optional __compid)
   (if __compid (setq _compid __compid)) _compid)
  (:msgid
   (&optional __msgid)
   (if __msgid (setq _msgid __msgid)) _msgid)
  (:checksum
   (&optional __checksum)
   (if __checksum (setq _checksum __checksum)) _checksum)
  (:payload64
   (&optional __payload64)
   (if __payload64 (setq _payload64 __payload64)) _payload64)
  (:signature
   (&optional __signature)
   (if __signature (setq _signature __signature)) _signature)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _framing_status
    1
    ;; uint8 _magic
    1
    ;; uint8 _len
    1
    ;; uint8 _incompat_flags
    1
    ;; uint8 _compat_flags
    1
    ;; uint8 _seq
    1
    ;; uint8 _sysid
    1
    ;; uint8 _compid
    1
    ;; uint32 _msgid
    4
    ;; uint16 _checksum
    2
    ;; uint64[] _payload64
    (* 8    (length _payload64)) 4
    ;; uint8[] _signature
    (* 1    (length _signature)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _framing_status
       (write-byte _framing_status s)
     ;; uint8 _magic
       (write-byte _magic s)
     ;; uint8 _len
       (write-byte _len s)
     ;; uint8 _incompat_flags
       (write-byte _incompat_flags s)
     ;; uint8 _compat_flags
       (write-byte _compat_flags s)
     ;; uint8 _seq
       (write-byte _seq s)
     ;; uint8 _sysid
       (write-byte _sysid s)
     ;; uint8 _compid
       (write-byte _compid s)
     ;; uint32 _msgid
       (write-long _msgid s)
     ;; uint16 _checksum
       (write-word _checksum s)
     ;; uint64[] _payload64
     (write-long (length _payload64) s)
     (dotimes (i (length _payload64))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _payload64 i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _payload64 i)) (= (length ((elt _payload64 i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _payload64 i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _payload64 i) . bv) 1) -1) s))
             ((and (class (elt _payload64 i)) (= (length ((elt _payload64 i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _payload64 i) . bv) 0) s)
              (write-long (if (>= (elt _payload64 i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _payload64 i) s)(write-long (if (>= (elt _payload64 i) 0) 0 #xffffffff) s)))
       )
     ;; uint8[] _signature
     (write-long (length _signature) s)
     (princ _signature s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _framing_status
     (setq _framing_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _magic
     (setq _magic (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _len
     (setq _len (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _incompat_flags
     (setq _incompat_flags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _compat_flags
     (setq _compat_flags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _seq
     (setq _seq (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sysid
     (setq _sysid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _compid
     (setq _compid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _msgid
     (setq _msgid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _checksum
     (setq _checksum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint64[] _payload64
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _payload64 (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _payload64 i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _payload64 i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; uint8[] _signature
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _signature (make-array n :element-type :char))
     (replace _signature buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get mavros_msgs::Mavlink :md5sum-) "41093e1fd0f3eea1da2aa33a177e5ba6")
(setf (get mavros_msgs::Mavlink :datatype-) "mavros_msgs/Mavlink")
(setf (get mavros_msgs::Mavlink :definition-)
      "# Mavlink message transport type.
#
# Used to transport mavlink_message_t via ROS topic
#
# :framing_status:
#       Frame decoding status: OK, CRC error, bad Signature (mavlink v2.0)
#       You may simply drop all non valid messages.
#       Used for GCS Bridge to transport unknown messages.
#
# :magic:
#       STX byte, used to determine protocol version v1.0 or v2.0.
#
# Please use mavros_msgs::mavlink::convert() from <mavros_msgs/mavlink_convert.h>
# to convert between ROS and MAVLink message type

# mavlink_framing_t enum
uint8 FRAMING_OK = 1
uint8 FRAMING_BAD_CRC = 2
uint8 FRAMING_BAD_SIGNATURE = 3

# stx values
uint8 MAVLINK_V10 = 254
uint8 MAVLINK_V20 = 253

std_msgs/Header header
uint8 framing_status

uint8 magic		# STX byte
uint8 len
uint8 incompat_flags
uint8 compat_flags
uint8 seq
uint8 sysid
uint8 compid
uint32 msgid		# 24-bit message id
uint16 checksum
uint64[] payload64
uint8[] signature	# optional signature

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



(provide :mavros_msgs/Mavlink "41093e1fd0f3eea1da2aa33a177e5ba6")


