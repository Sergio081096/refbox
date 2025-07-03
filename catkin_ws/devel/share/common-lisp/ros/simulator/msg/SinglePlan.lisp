; Auto-generated. Do not edit!


(cl:in-package simulator-msg)


;//! \htmlinclude SinglePlan.msg.html

(cl:defclass <SinglePlan> (roslisp-msg-protocol:ros-message)
  ((plan_steps
    :reader plan_steps
    :initarg :plan_steps
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass SinglePlan (<SinglePlan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SinglePlan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SinglePlan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-msg:<SinglePlan> is deprecated: use simulator-msg:SinglePlan instead.")))

(cl:ensure-generic-function 'plan_steps-val :lambda-list '(m))
(cl:defmethod plan_steps-val ((m <SinglePlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:plan_steps-val is deprecated.  Use simulator-msg:plan_steps instead.")
  (plan_steps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SinglePlan>) ostream)
  "Serializes a message object of type '<SinglePlan>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'plan_steps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'plan_steps))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SinglePlan>) istream)
  "Deserializes a message object of type '<SinglePlan>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'plan_steps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'plan_steps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SinglePlan>)))
  "Returns string type for a message object of type '<SinglePlan>"
  "simulator/SinglePlan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SinglePlan)))
  "Returns string type for a message object of type 'SinglePlan"
  "simulator/SinglePlan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SinglePlan>)))
  "Returns md5sum for a message object of type '<SinglePlan>"
  "8e74db1782ceaae358fee14c8e79172c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SinglePlan)))
  "Returns md5sum for a message object of type 'SinglePlan"
  "8e74db1782ceaae358fee14c8e79172c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SinglePlan>)))
  "Returns full string definition for message of type '<SinglePlan>"
  (cl:format cl:nil "string[] plan_steps~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SinglePlan)))
  "Returns full string definition for message of type 'SinglePlan"
  (cl:format cl:nil "string[] plan_steps~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SinglePlan>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'plan_steps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SinglePlan>))
  "Converts a ROS message object to a list"
  (cl:list 'SinglePlan
    (cl:cons ':plan_steps (plan_steps msg))
))
