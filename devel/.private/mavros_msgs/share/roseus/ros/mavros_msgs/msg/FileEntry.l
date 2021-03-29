;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::FileEntry)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'FileEntry (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::FILEENTRY")
  (make-package "MAVROS_MSGS::FILEENTRY"))

(in-package "ROS")
;;//! \htmlinclude FileEntry.msg.html


(intern "*TYPE_FILE*" (find-package "MAVROS_MSGS::FILEENTRY"))
(shadow '*TYPE_FILE* (find-package "MAVROS_MSGS::FILEENTRY"))
(defconstant mavros_msgs::FileEntry::*TYPE_FILE* 0)
(intern "*TYPE_DIRECTORY*" (find-package "MAVROS_MSGS::FILEENTRY"))
(shadow '*TYPE_DIRECTORY* (find-package "MAVROS_MSGS::FILEENTRY"))
(defconstant mavros_msgs::FileEntry::*TYPE_DIRECTORY* 1)
(defclass mavros_msgs::FileEntry
  :super ros::object
  :slots (_name _type _size ))

(defmethod mavros_msgs::FileEntry
  (:init
   (&key
    ((:name __name) "")
    ((:type __type) 0)
    ((:size __size) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _type (round __type))
   (setq _size (round __size))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint8 _type
    1
    ;; uint64 _size
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint8 _type
       (write-byte _type s)
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
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
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

(setf (get mavros_msgs::FileEntry :md5sum-) "5ed706bccb946c5b3a5087569cc53ac3")
(setf (get mavros_msgs::FileEntry :datatype-) "mavros_msgs/FileEntry")
(setf (get mavros_msgs::FileEntry :definition-)
      "# File/Dir information

uint8 TYPE_FILE = 0
uint8 TYPE_DIRECTORY = 1

string name
uint8 type
uint64 size

# Not supported by MAVLink FTP
#time atime
#int32 access_flags

")



(provide :mavros_msgs/FileEntry "5ed706bccb946c5b3a5087569cc53ac3")


