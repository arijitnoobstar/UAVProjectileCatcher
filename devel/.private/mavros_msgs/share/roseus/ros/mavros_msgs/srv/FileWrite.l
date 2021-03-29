;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::FileWrite)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'FileWrite (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::FILEWRITE")
  (make-package "MAVROS_MSGS::FILEWRITE"))
(unless (find-package "MAVROS_MSGS::FILEWRITEREQUEST")
  (make-package "MAVROS_MSGS::FILEWRITEREQUEST"))
(unless (find-package "MAVROS_MSGS::FILEWRITERESPONSE")
  (make-package "MAVROS_MSGS::FILEWRITERESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::FileWriteRequest
  :super ros::object
  :slots (_file_path _offset _data ))

(defmethod mavros_msgs::FileWriteRequest
  (:init
   (&key
    ((:file_path __file_path) "")
    ((:offset __offset) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _file_path (string __file_path))
   (setq _offset (round __offset))
   (setq _data __data)
   self)
  (:file_path
   (&optional __file_path)
   (if __file_path (setq _file_path __file_path)) _file_path)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _file_path
    4 (length _file_path)
    ;; uint64 _offset
    8
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_path
       (write-long (length _file_path) s) (princ _file_path s)
     ;; uint64 _offset
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _offset (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _offset) (= (length (_offset . bv)) 2)) ;; bignum
              (write-long (ash (elt (_offset . bv) 0) 0) s)
              (write-long (ash (elt (_offset . bv) 1) -1) s))
             ((and (class _offset) (= (length (_offset . bv)) 1)) ;; big1
              (write-long (elt (_offset . bv) 0) s)
              (write-long (if (>= _offset 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _offset s)(write-long (if (>= _offset 0) 0 #xffffffff) s)))
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _offset
     
#+(or :alpha :irix6 :x86_64)
      (setf _offset (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _offset (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass mavros_msgs::FileWriteResponse
  :super ros::object
  :slots (_success _r_errno ))

(defmethod mavros_msgs::FileWriteResponse
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

(defclass mavros_msgs::FileWrite
  :super ros::object
  :slots ())

(setf (get mavros_msgs::FileWrite :md5sum-) "7d7e0ed4d86797a80355795ee6728fac")
(setf (get mavros_msgs::FileWrite :datatype-) "mavros_msgs/FileWrite")
(setf (get mavros_msgs::FileWrite :request) mavros_msgs::FileWriteRequest)
(setf (get mavros_msgs::FileWrite :response) mavros_msgs::FileWriteResponse)

(defmethod mavros_msgs::FileWriteRequest
  (:response () (instance mavros_msgs::FileWriteResponse :init)))

(setf (get mavros_msgs::FileWriteRequest :md5sum-) "7d7e0ed4d86797a80355795ee6728fac")
(setf (get mavros_msgs::FileWriteRequest :datatype-) "mavros_msgs/FileWriteRequest")
(setf (get mavros_msgs::FileWriteRequest :definition-)
      "# FTP::Write
#
# Call FTP::Open first.
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string file_path
uint64 offset
uint8[] data
---
bool success
int32 r_errno

")

(setf (get mavros_msgs::FileWriteResponse :md5sum-) "7d7e0ed4d86797a80355795ee6728fac")
(setf (get mavros_msgs::FileWriteResponse :datatype-) "mavros_msgs/FileWriteResponse")
(setf (get mavros_msgs::FileWriteResponse :definition-)
      "# FTP::Write
#
# Call FTP::Open first.
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string file_path
uint64 offset
uint8[] data
---
bool success
int32 r_errno

")



(provide :mavros_msgs/FileWrite "7d7e0ed4d86797a80355795ee6728fac")


