
(cl:in-package :asdf)

(defsystem "mavros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "haha" :depends-on ("_package_haha"))
    (:file "_package_haha" :depends-on ("_package"))
  ))