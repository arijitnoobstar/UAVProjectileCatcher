;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::FileRead)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'FileRead (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::FILEREAD")
  (make-package "MAVROS_MSGS::FILEREAD"))
(unless (find-package "MAVROS_MSGS::FILEREADREQUEST")
  (make-package "MAVROS_MSGS::FILEREADREQUEST"))
(unless (find-package "MAVROS_MSGS::FILEREADRESPONSE")
  (make-package "MAVROS_MSGS::FILEREADRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::FileReadRequest
  :super ros::object
  :slots (_file_path _offset _size ))

(defmethod mavros_msgs::FileReadRequest
  (:init
   (&key
    ((:file_path __file_path) "")
    ((:offset __offset) 0)
    ((:size __size) 0)
    )
   (send-super :init)
   (setq _file_path (string __file_path))
   (setq _offset (round __offset))
   (setq _size (round __size))
   self)
  (:file_path
   (&optional __file_path)
   (if __file_path (setq _file_path __file_path)) _file_path)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:serialization-length
   ()
   (+
    ;; string _file_path
    4 (length _file_path)
    ;; uint64 _offset
    8
    ;; uint64 _size
    8
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
     ;; uint64 _size
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _size (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _size) (= (length (_size . bv)) 2)) ;; bignum
              (write-long (ash (elt (_size . bv) 0) 0) s)
              (write-long (ash (elt (_size . bv) 1) -1) s))
             ((and (class _size) (= (length (_size . bv)) 1)) ;; big1
              (write-long (elt (_size . bv) 0) s)
              (write-long (if (>= _size 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _size s)(write-long (if (>= _size 0) 0 #xffffffff) s)))
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
   ;; uint64 _size
     
#+(or :alpha :irix6 :x86_64)
      (setf _size (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _size (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass mavros_msgs::FileReadResponse
  :super ros::object
  :slots (_data _success _r_errno ))

(defmethod mavros_msgs::FileReadResponse
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    ((:success __success) nil)
    ((:r_errno __r_errno) 0)
    )
   (send-super :init)
   (setq _data __data)
   (setq _success __success)
   (setq _r_errno (round __r_errno))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:r_errno
   (&optional __r_errno)
   (if __r_errno (setq _r_errno __r_errno)) _r_errno)
  (:serialization-length
   ()
   (+
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ;; bool _success
    1
    ;; int32 _r_errno
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; int32 _r_errno
       (write-long _r_errno s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _r_errno
     (setq _r_errno (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros_msgs::FileRead
  :super ros::object
  :slots ())

(setf (get mavros_msgs::FileRead :md5sum-) "7700526a6a54d8971e0db6dc1d712523")
(setf (get mavros_msgs::FileRead :datatype-) "mavros_msgs/FileRead")
(setf (get mavros_msgs::FileRead :request) mavros_msgs::FileReadRequest)
(setf (get mavros_msgs::FileRead :response) mavros_msgs::FileReadResponse)

(defmethod mavros_msgs::FileReadRequest
  (:response () (instance mavros_msgs::FileReadResponse :init)))

(setf (get mavros_msgs::FileReadRequest :md5sum-) "7700526a6a54d8971e0db6dc1d712523")
(setf (get mavros_msgs::FileReadRequest :datatype-) "mavros_msgs/FileReadRequest")
(setf (get mavros_msgs::FileReadRequest :definition-)
      "# FTP::Read
#
# Call FTP::Open first.
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string file_path
uint64 offset
uint64 size
---
uint8[] data
bool success
int32 r_errno

")

(setf (get mavros_msgs::FileReadResponse :md5sum-) "7700526a6a54d8971e0db6dc1d712523")
(setf (get mavros_msgs::FileReadResponse :datatype-) "mavros_msgs/FileReadResponse")
(setf (get mavros_msgs::FileReadResponse :definition-)
      "# FTP::Read
#
# Call FTP::Open first.
# :success:	indicates success end of request
# :r_errno:	remote errno if applicapable

string file_path
uint64 offset
uint64 size
---
uint8[] data
bool success
int32 r_errno

")



(provide :mavros_msgs/FileRead "7700526a6a54d8971e0db6dc1d712523")


