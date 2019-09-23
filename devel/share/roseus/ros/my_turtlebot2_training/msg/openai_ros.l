;; Auto-generated. Do not edit!


(when (boundp 'my_turtlebot2_training::openai_ros)
  (if (not (find-package "MY_TURTLEBOT2_TRAINING"))
    (make-package "MY_TURTLEBOT2_TRAINING"))
  (shadow 'openai_ros (find-package "MY_TURTLEBOT2_TRAINING")))
(unless (find-package "MY_TURTLEBOT2_TRAINING::OPENAI_ROS")
  (make-package "MY_TURTLEBOT2_TRAINING::OPENAI_ROS"))

(in-package "ROS")
;;//! \htmlinclude openai_ros.msg.html


(defclass my_turtlebot2_training::openai_ros
  :super ros::object
  :slots (_rosds ))

(defmethod my_turtlebot2_training::openai_ros
  (:init
   (&key
    ((:rosds __rosds) 0.0)
    )
   (send-super :init)
   (setq _rosds (float __rosds))
   self)
  (:rosds
   (&optional __rosds)
   (if __rosds (setq _rosds __rosds)) _rosds)
  (:serialization-length
   ()
   (+
    ;; float32 _rosds
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _rosds
       (sys::poke _rosds (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _rosds
     (setq _rosds (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get my_turtlebot2_training::openai_ros :md5sum-) "5eb6bf66b5eaa87e0e6f64597c745a4a")
(setf (get my_turtlebot2_training::openai_ros :datatype-) "my_turtlebot2_training/openai_ros")
(setf (get my_turtlebot2_training::openai_ros :definition-)
      "float32 rosds

")



(provide :my_turtlebot2_training/openai_ros "5eb6bf66b5eaa87e0e6f64597c745a4a")


