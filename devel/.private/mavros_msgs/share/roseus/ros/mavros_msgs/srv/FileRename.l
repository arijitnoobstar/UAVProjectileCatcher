;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::FileRename)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'FileRename (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::FILERENAME")
  (make-package "MAVROS_MSGS::FILERENAME"))
(unless (find-package "MAVROS_MSGS::FILERENAMEREQUEST")
  (make-package "MAVROS_MSGS::FILERENAMEREQUEST"))
(unless (find-package "MAVROS_MSGS::FILERENAMERESPONSE")
  (make-package "MAVROS_MSGS::FILERENAMERESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::FileRenameRequest
  :super ros::object
  :slots (_old_path _new_path ))

(defmethod mavros_msgs::FileRenameRequest
  (:init
   (&key
    ((:old_path __old_path) "")
    ((:new_path __new_path) "")
    )
   (send-super :init)
   (setq _old_path (string __old_path))
   (setq _new_path (string __new_path))
   self)
  (:old_path
   (&optional __old_path)
   (if __old_path (setq _old_path __old_path)) _old_path)
  (:new_path
   (&optional __new_path)
   (if __new_path (setq _new_path __new_path)) _new_path)
  (:serialization-length
   ()
   (+
    ;; string _old_path
    4 (length _old_path)
    ;; string _new_path
    4 (length _new_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _old_path
       (write-long (length _old_path) s) (princ _old_path s)
     ;; string _new_path
       (write-long (length _new_path) s) (princ _new_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _old_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _old_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _new_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _new_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mavros_msgs::FileRenameResponse
  :super ros::object
  :slots (_success _r_errno ))

(defmethod mavros_msgs::FileRenameResponse
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

(defclass mavros_msgs::FileRename
  :super ros::object
  :slots ())

(setf (get mavros_msgs::FileRename :md5sum-) "07d853e3d48c88a648998515aab1f5b7")
(setf (get mavros_msgs::FileRename :datatype-) "mavros_msgs/FileRename")
(setf (get mavros_msgs::FileRename :request) mavros_msgs::FileRenameRequest)
(setf (get mavros_msgs::FileRename :response) mavros_msgs::FileRenameResponse)

(defmethod mavros_msgs::FileRenameRequest
  (:response () (instance mavros_msgs::FileRenameResponse :init)))

(setf (get mavros_msgs::FileRenameRequest :md5sum-) "07d853e3d48c88a648998515aab1f5b7")
(setf (get mavros_msgs::FileRenameRequest :datatype-) "mavros_msgs/FileRenameRequest")
(setf (get mavros_msgs::FileRenameRequest :definition-)
      "# FTP::Rename
#
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string old_path
string new_path
---
bool success
int32 r_errno

")

(setf (get mavros_msgs::FileRenameResponse :md5sum-) "07d853e3d48c88a648998515aab1f5b7")
(setf (get mavros_msgs::FileRenameResponse :datatype-) "mavros_msgs/FileRenameResponse")
(setf (get mavros_msgs::FileRenameResponse :definition-)
      "# FTP::Rename
#
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string old_path
string new_path
---
bool success
int32 r_errno

")



(provide :mavros_msgs/FileRename "07d853e3d48c88a648998515aab1f5b7")


