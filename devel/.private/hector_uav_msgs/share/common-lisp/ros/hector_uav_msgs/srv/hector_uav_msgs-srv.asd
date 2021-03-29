
(cl:in-package :asdf)

(defsystem "hector_uav_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "EnableMotors" :depends-on ("_package_EnableMotors"))
    (:file "_package_EnableMotors" :depends-on ("_package"))
  ))