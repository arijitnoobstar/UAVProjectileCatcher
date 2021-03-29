;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::FileList)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'FileList (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::FILELIST")
  (make-package "MAVROS_MSGS::FILELIST"))
(unless (find-package "MAVROS_MSGS::FILELISTREQUEST")
  (make-package "MAVROS_MSGS::FILELISTREQUEST"))
(unless (find-package "MAVROS_MSGS::FILELISTRESPONSE")
  (make-package "MAVROS_MSGS::FILELISTRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::FileListRequest
  :super ros::object
  :slots (_dir_path ))

(defmethod mavros_msgs::FileListRequest
  (:init
   (&key
    ((:dir_path __dir_path) "")
    )
   (send-super :init)
   (setq _dir_path (string __dir_path))
   self)
  (:dir_path
   (&optional __dir_path)
   (if __dir_path (setq _dir_path __dir_path)) _dir_path)
  (:serialization-length
   ()
   (+
    ;; string _dir_path
    4 (length _dir_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _dir_path
       (write-long (length _dir_path) s) (princ _dir_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _dir_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dir_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mavros_msgs::FileListResponse
  :super ros::object
  :slots (_list _success _r_errno ))

(defmethod mavros_msgs::FileListResponse
  (:init
   (&key
    ((:list __list) (let (r) (dotimes (i 0) (push (instance mavros_msgs::FileEntry :init) r)) r))
    ((:success __success) nil)
    ((:r_errno __r_errno) 0)
    )
   (send-super :init)
   (setq _list __list)
   (setq _success __success)
   (setq _r_errno (round __r_errno))
   self)
  (:list
   (&rest __list)
   (if (keywordp (car __list))
       (send* _list __list)
     (progn
       (if __list (setq _list (car __list)))
       _list)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:r_errno
   (&optional __r_errno)
   (if __r_errno (setq _r_errno __r_errno)) _r_errno)
  (:serialization-length
   ()
   (+
    ;; mavros_msgs/FileEntry[] _list
    (apply #'+ (send-all _list :serialization-length)) 4
    ;; bool _success
    1
    ;; int32 _r_errno
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mavros_msgs/FileEntry[] _list
     (write-long (length _list) s)
     (dolist (elem _list)
       (send elem :serialize s)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; int32 _r_errno
       (write-long _r_errno s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mavros_msgs/FileEntry[] _list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _list (let (r) (dotimes (i n) (push (instance mavros_msgs::FileEntry :init) r)) r))
     (dolist (elem- _list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _r_errno
     (setq _r_errno (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros_msgs::FileList
  :super ros::object
  :slots ())

(setf (get mavros_msgs::FileList :md5sum-) "1647c627907cac72fa2d06e0e5f96aac")
(setf (get mavros_msgs::FileList :datatype-) "mavros_msgs/FileList")
(setf (get mavros_msgs::FileList :request) mavros_msgs::FileListRequest)
(setf (get mavros_msgs::FileList :response) mavros_msgs::FileListResponse)

(defmethod mavros_msgs::FileListRequest
  (:response () (instance mavros_msgs::FileListResponse :init)))

(setf (get mavros_msgs::FileListRequest :md5sum-) "1647c627907cac72fa2d06e0e5f96aac")
(setf (get mavros_msgs::FileListRequest :datatype-) "mavros_msgs/FileListRequest")
(setf (get mavros_msgs::FileListRequest :definition-)
      "# FTP::List
#
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string dir_path
---
mavros_msgs/FileEntry[] list
bool success
int32 r_errno


================================================================================
MSG: mavros_msgs/FileEntry
# File/Dir information

uint8 TYPE_FILE = 0
uint8 TYPE_DIRECTORY = 1

string name
uint8 type
uint64 size

# Not supported by MAVLink FTP
#time atime
#int32 access_flags
")

(setf (get mavros_msgs::FileListResponse :md5sum-) "1647c627907cac72fa2d06e0e5f96aac")
(setf (get mavros_msgs::FileListResponse :datatype-) "mavros_msgs/FileListResponse")
(setf (get mavros_msgs::FileListResponse :definition-)
      "# FTP::List
#
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string dir_path
---
mavros_msgs/FileEntry[] list
bool success
int32 r_errno


================================================================================
MSG: mavros_msgs/FileEntry
# File/Dir information

uint8 TYPE_FILE = 0
uint8 TYPE_DIRECTORY = 1

string name
uint8 type
uint64 size

# Not supported by MAVLink FTP
#time atime
#int32 access_flags
")



(provide :mavros_msgs/FileList "1647c627907cac72fa2d06e0e5f96aac")


