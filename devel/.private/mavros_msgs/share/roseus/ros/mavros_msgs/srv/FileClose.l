;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::FileClose)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'FileClose (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::FILECLOSE")
  (make-package "MAVROS_MSGS::FILECLOSE"))
(unless (find-package "MAVROS_MSGS::FILECLOSEREQUEST")
  (make-package "MAVROS_MSGS::FILECLOSEREQUEST"))
(unless (find-package "MAVROS_MSGS::FILECLOSERESPONSE")
  (make-package "MAVROS_MSGS::FILECLOSERESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::FileCloseRequest
  :super ros::object
  :slots (_file_path ))

(defmethod mavros_msgs::FileCloseRequest
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

(defclass mavros_msgs::FileCloseResponse
  :super ros::object
  :slots (_success _r_errno ))

(defmethod mavros_msgs::FileCloseResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:r_errno __r_errno) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _r_errno (round __r_errno))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:r_errno
   (&optional __r_errno)
   (if __r_errno (setq _r_errno __r_errno)) _r_errno)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; int32 _r_errno
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; int32 _r_errno
       (write-long _r_errno s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _r_errno
     (setq _r_errno (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros_msgs::FileClose
  :super ros::object
  :slots ())

(setf (get mavros_msgs::FileClose :md5sum-) "1c309002d7f7c6df7d3f094925ea8e10")
(setf (get mavros_msgs::FileClose :datatype-) "mavros_msgs/FileClose")
(setf (get mavros_msgs::FileClose :request) mavros_msgs::FileCloseRequest)
(setf (get mavros_msgs::FileClose :response) mavros_msgs::FileCloseResponse)

(defmethod mavros_msgs::FileCloseRequest
  (:response () (instance mavros_msgs::FileCloseResponse :init)))

(setf (get mavros_msgs::FileCloseRequest :md5sum-) "1c309002d7f7c6df7d3f094925ea8e10")
(setf (get mavros_msgs::FileCloseRequest :datatype-) "mavros_msgs/FileCloseRequest")
(setf (get mavros_msgs::FileCloseRequest :definition-)
      "# FTP::Close
#
# Call FTP::Open first.
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string file_path
---
bool success
int32 r_errno

")

(setf (get mavros_msgs::FileCloseResponse :md5sum-) "1c309002d7f7c6df7d3f094925ea8e10")
(setf (get mavros_msgs::FileCloseResponse :datatype-) "mavros_msgs/FileCloseResponse")
(setf (get mavros_msgs::FileCloseResponse :definition-)
      "# FTP::Close
#
# Call FTP::Open first.
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string file_path
---
bool success
int32 r_errno

")



(provide :mavros_msgs/FileClose "1c309002d7f7c6df7d3f094925ea8e10")


