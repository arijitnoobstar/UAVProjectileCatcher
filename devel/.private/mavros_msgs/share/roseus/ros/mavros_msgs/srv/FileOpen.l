;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::FileOpen)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'FileOpen (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::FILEOPEN")
  (make-package "MAVROS_MSGS::FILEOPEN"))
(unless (find-package "MAVROS_MSGS::FILEOPENREQUEST")
  (make-package "MAVROS_MSGS::FILEOPENREQUEST"))
(unless (find-package "MAVROS_MSGS::FILEOPENRESPONSE")
  (make-package "MAVROS_MSGS::FILEOPENRESPONSE"))

(in-package "ROS")





(intern "*MODE_READ*" (find-package "MAVROS_MSGS::FILEOPENREQUEST"))
(shadow '*MODE_READ* (find-package "MAVROS_MSGS::FILEOPENREQUEST"))
(defconstant mavros_msgs::FileOpenRequest::*MODE_READ* 0)
(intern "*MODE_WRITE*" (find-package "MAVROS_MSGS::FILEOPENREQUEST"))
(shadow '*MODE_WRITE* (find-package "MAVROS_MSGS::FILEOPENREQUEST"))
(defconstant mavros_msgs::FileOpenRequest::*MODE_WRITE* 1)
(intern "*MODE_CREATE*" (find-package "MAVROS_MSGS::FILEOPENREQUEST"))
(shadow '*MODE_CREATE* (find-package "MAVROS_MSGS::FILEOPENREQUEST"))
(defconstant mavros_msgs::FileOpenRequest::*MODE_CREATE* 2)
(defclass mavros_msgs::FileOpenRequest
  :super ros::object
  :slots (_file_path _mode ))

(defmethod mavros_msgs::FileOpenRequest
  (:init
   (&key
    ((:file_path __file_path) "")
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _file_path (string __file_path))
   (setq _mode (round __mode))
   self)
  (:file_path
   (&optional __file_path)
   (if __file_path (setq _file_path __file_path)) _file_path)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; string _file_path
    4 (length _file_path)
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_path
       (write-long (length _file_path) s) (princ _file_path s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros_msgs::FileOpenResponse
  :super ros::object
  :slots (_size _success _r_errno ))

(defmethod mavros_msgs::FileOpenResponse
  (:init
   (&key
    ((:size __size) 0)
    ((:success __success) nil)
    ((:r_errno __r_errno) 0)
    )
   (send-super :init)
   (setq _size (round __size))
   (setq _success __success)
   (setq _r_errno (round __r_errno))
   self)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:r_errno
   (&optional __r_errno)
   (if __r_errno (setq _r_errno __r_errno)) _r_errno)
  (:serialization-length
   ()
   (+
    ;; uint32 _size
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
     ;; uint32 _size
       (write-long _size s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; int32 _r_errno
       (write-long _r_errno s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _r_errno
     (setq _r_errno (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros_msgs::FileOpen
  :super ros::object
  :slots ())

(setf (get mavros_msgs::FileOpen :md5sum-) "99a3f49cc67b91477cf49ff15c42af0e")
(setf (get mavros_msgs::FileOpen :datatype-) "mavros_msgs/FileOpen")
(setf (get mavros_msgs::FileOpen :request) mavros_msgs::FileOpenRequest)
(setf (get mavros_msgs::FileOpen :response) mavros_msgs::FileOpenResponse)

(defmethod mavros_msgs::FileOpenRequest
  (:response () (instance mavros_msgs::FileOpenResponse :init)))

(setf (get mavros_msgs::FileOpenRequest :md5sum-) "99a3f49cc67b91477cf49ff15c42af0e")
(setf (get mavros_msgs::FileOpenRequest :datatype-) "mavros_msgs/FileOpenRequest")
(setf (get mavros_msgs::FileOpenRequest :definition-)
      "# FTP::Open
#
# :file_path:	used as session id in read/write/close services
# :size:	file size returned for MODE_READ
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

uint8 MODE_READ = 0	# open for read
uint8 MODE_WRITE = 1	# open for write
uint8 MODE_CREATE = 2	# do creat()

string file_path
uint8 mode
---
uint32 size
bool success
int32 r_errno

")

(setf (get mavros_msgs::FileOpenResponse :md5sum-) "99a3f49cc67b91477cf49ff15c42af0e")
(setf (get mavros_msgs::FileOpenResponse :datatype-) "mavros_msgs/FileOpenResponse")
(setf (get mavros_msgs::FileOpenResponse :definition-)
      "# FTP::Open
#
# :file_path:	used as session id in read/write/close services
# :size:	file size returned for MODE_READ
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

uint8 MODE_READ = 0	# open for read
uint8 MODE_WRITE = 1	# open for write
uint8 MODE_CREATE = 2	# do creat()

string file_path
uint8 mode
---
uint32 size
bool success
int32 r_errno

")



(provide :mavros_msgs/FileOpen "99a3f49cc67b91477cf49ff15c42af0e")


