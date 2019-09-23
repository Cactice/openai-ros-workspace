; Auto-generated. Do not edit!


(cl:in-package openai_ros-msg)


;//! \htmlinclude openai_ros.msg.html

(cl:defclass <openai_ros> (roslisp-msg-protocol:ros-message)
  ((episode_number
    :reader episode_number
    :initarg :episode_number
    :type cl:integer
    :initform 0)
   (episode_reward
    :reader episode_reward
    :initarg :episode_reward
    :type cl:float
    :initform 0.0))
)

(cl:defclass openai_ros (<openai_ros>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <openai_ros>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'openai_ros)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name openai_ros-msg:<openai_ros> is deprecated: use openai_ros-msg:openai_ros instead.")))

(cl:ensure-generic-function 'episode_number-val :lambda-list '(m))
(cl:defmethod episode_number-val ((m <openai_ros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader openai_ros-msg:episode_number-val is deprecated.  Use openai_ros-msg:episode_number instead.")
  (episode_number m))

(cl:ensure-generic-function 'episode_reward-val :lambda-list '(m))
(cl:defmethod episode_reward-val ((m <openai_ros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader openai_ros-msg:episode_reward-val is deprecated.  Use openai_ros-msg:episode_reward instead.")
  (episode_reward m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <openai_ros>) ostream)
  "Serializes a message object of type '<openai_ros>"
  (cl:let* ((signed (cl:slot-value msg 'episode_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'episode_reward))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <openai_ros>) istream)
  "Deserializes a message object of type '<openai_ros>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'episode_number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'episode_reward) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<openai_ros>)))
  "Returns string type for a message object of type '<openai_ros>"
  "openai_ros/openai_ros")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'openai_ros)))
  "Returns string type for a message object of type 'openai_ros"
  "openai_ros/openai_ros")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<openai_ros>)))
  "Returns md5sum for a message object of type '<openai_ros>"
  "117729220546455cc216a7df0b6e91d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'openai_ros)))
  "Returns md5sum for a message object of type 'openai_ros"
  "117729220546455cc216a7df0b6e91d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<openai_ros>)))
  "Returns full string definition for message of type '<openai_ros>"
  (cl:format cl:nil "int32 episode_number~%float32 episode_reward~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'openai_ros)))
  "Returns full string definition for message of type 'openai_ros"
  (cl:format cl:nil "int32 episode_number~%float32 episode_reward~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <openai_ros>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <openai_ros>))
  "Converts a ROS message object to a list"
  (cl:list 'openai_ros
    (cl:cons ':episode_number (episode_number msg))
    (cl:cons ':episode_reward (episode_reward msg))
))
