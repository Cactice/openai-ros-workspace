; Auto-generated. Do not edit!


(cl:in-package my_turtlebot2_training-msg)


;//! \htmlinclude openai_ros.msg.html

(cl:defclass <openai_ros> (roslisp-msg-protocol:ros-message)
  ((rosds
    :reader rosds
    :initarg :rosds
    :type cl:float
    :initform 0.0))
)

(cl:defclass openai_ros (<openai_ros>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <openai_ros>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'openai_ros)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_turtlebot2_training-msg:<openai_ros> is deprecated: use my_turtlebot2_training-msg:openai_ros instead.")))

(cl:ensure-generic-function 'rosds-val :lambda-list '(m))
(cl:defmethod rosds-val ((m <openai_ros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_turtlebot2_training-msg:rosds-val is deprecated.  Use my_turtlebot2_training-msg:rosds instead.")
  (rosds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <openai_ros>) ostream)
  "Serializes a message object of type '<openai_ros>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rosds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <openai_ros>) istream)
  "Deserializes a message object of type '<openai_ros>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rosds) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<openai_ros>)))
  "Returns string type for a message object of type '<openai_ros>"
  "my_turtlebot2_training/openai_ros")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'openai_ros)))
  "Returns string type for a message object of type 'openai_ros"
  "my_turtlebot2_training/openai_ros")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<openai_ros>)))
  "Returns md5sum for a message object of type '<openai_ros>"
  "5eb6bf66b5eaa87e0e6f64597c745a4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'openai_ros)))
  "Returns md5sum for a message object of type 'openai_ros"
  "5eb6bf66b5eaa87e0e6f64597c745a4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<openai_ros>)))
  "Returns full string definition for message of type '<openai_ros>"
  (cl:format cl:nil "float32 rosds~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'openai_ros)))
  "Returns full string definition for message of type 'openai_ros"
  (cl:format cl:nil "float32 rosds~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <openai_ros>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <openai_ros>))
  "Converts a ROS message object to a list"
  (cl:list 'openai_ros
    (cl:cons ':rosds (rosds msg))
))
