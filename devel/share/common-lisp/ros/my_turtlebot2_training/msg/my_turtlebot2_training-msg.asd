
(cl:in-package :asdf)

(defsystem "my_turtlebot2_training-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "openai_ros" :depends-on ("_package_openai_ros"))
    (:file "_package_openai_ros" :depends-on ("_package"))
  ))