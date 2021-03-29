;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::FileChecksum)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'FileChecksum (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::FILECHECKSUM")
  (make-package "MAVROS_MSGS::FILECHECKSUM"))
(unless (find-package "MAVROS_MSGS::FILECHECKSUMREQUEST")
  (make-package "MAVROS_MSGS::FILECHECKSUMREQUEST"))
(unless (find-package "MAVROS_MSGS::FILECHECKSUMRESPONSE")
  (make-package "MAVROS_MSGS::FILECHECKSUMRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::FileChecksumRequest
  :super ros::object
  :slots (_file_path ))

(defmethod mavros_msgs::FileChecksumRequest
  (:init
   (&key
    ((:file_path __file_path) "")
    )
   (send-super :init)
   (setq _file_path (string __file_path))
   self)
  (:file_path
   (&optional __file_path)
   (if __file_path (setq _file_path __file_path)) _file_path)
  (:serialization-length
   ()
   (+
    ;; string _file_path
    4 (length _file_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_path
       (write-long (length _file_path) s) (princ _file_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mavros_msgs::FileChecksumResponse
  :super ros::object
  :slots (_crc32 _success _r_errno ))

(defmethod mavros_msgs::FileChecksumResponse
  (:init
   (&key
    ((:crc32 __crc32) 0)
    ((:success __success) nil)
    ((:r_errno __r_errno) 0)
    )
   (send-super :init)
   (setq _crc32 (round __crc32))
   (setq _success __success)
   (setq _r_errno (round __r_errno))
   self)
  (:crc32
   (&optional __crc32)
   (if __crc32 (setq _crc32 __crc32)) _crc32)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:r_errno
   (&optional __r_errno)
   (if __r_errno (setq _r_errno __r_errno)) _r_errno)
  (:serialization-length
   ()
   (+
    ;; uint32 _crc32
    4
    ;; bool _success
    1
    ;; int32 _r_errno
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _crc32
       (write-long _crc32 s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; int32 _r_errno
       (write-long _r_errno s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _crc32
     (setq _crc32 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _r_errno
     (setq _r_errno (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros_msgs::FileChecksum
  :super ros::object
  :slots ())

(setf (get mavros_msgs::FileChecksum :md5sum-) "c32158e17d9a1a1c682fe19adbd29fac")
(setf (get mavros_msgs::FileChecksum :datatype-) "mavros_msgs/FileChecksum")
(setf (get mavros_msgs::FileChecksum :request) mavros_msgs::FileChecksumRequest)
(setf (get mavros_msgs::FileChecksum :response) mavros_msgs::FileChecksumResponse)

(defmethod mavros_msgs::FileChecksumRequest
  (:response () (instance mavros_msgs::FileChecksumResponse :init)))

(setf (get mavros_msgs::FileChecksumRequest :md5sum-) "c32158e17d9a1a1c682fe19adbd29fac")
(setf (get mavros_msgs::FileChecksumRequest :datatype-) "mavros_msgs/FileChecksumRequest")
(setf (get mavros_msgs::FileChecksumRequest :definition-)
      "# FTP::Checksum
#
# :file_path:	file to calculate checksum
# :crc32:	file checksum
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string file_path
---
uint32 crc32
bool success
int32 r_errno

")

(setf (get mavros_msgs::FileChecksumResponse :md5sum-) "c32158e17d9a1a1c682fe19adbd29fac")
(setf (get mavros_msgs::FileChecksumResponse :datatype-) "mavros_msgs/FileChecksumResponse")
(setf (get mavros_msgs::FileChecksumResponse :definition-)
      "# FTP::Checksum
#
# :file_path:	file to calculate checksum
# :crc32:	file checksum
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string file_path
---
uint32 crc32
bool success
int32 r_errno

")



(provide :mavros_msgs/FileChecksum "c32158e17d9a1a1c682fe19adbd29fac")


