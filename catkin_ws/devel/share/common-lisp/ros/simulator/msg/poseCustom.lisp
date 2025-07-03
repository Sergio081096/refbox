; Auto-generated. Do not edit!


(cl:in-package simulator-msg)


;//! \htmlinclude poseCustom.msg.html

(cl:defclass <poseCustom> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass poseCustom (<poseCustom>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <poseCustom>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'poseCustom)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-msg:<poseCustom> is deprecated: use simulator-msg:poseCustom instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <poseCustom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:name-val is deprecated.  Use simulator-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <poseCustom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:x-val is deprecated.  Use simulator-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <poseCustom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:y-val is deprecated.  Use simulator-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <poseCustom>) ostream)
  "Serializes a message object of type '<poseCustom>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <poseCustom>) istream)
  "Deserializes a message object of type '<poseCustom>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<poseCustom>)))
  "Returns string type for a message object of type '<poseCustom>"
  "simulator/poseCustom")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'poseCustom)))
  "Returns string type for a message object of type 'poseCustom"
  "simulator/poseCustom")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<poseCustom>)))
  "Returns md5sum for a message object of type '<poseCustom>"
  "3d2ed4b4144493ed8a80311b20e21d00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'poseCustom)))
  "Returns md5sum for a message object of type 'poseCustom"
  "3d2ed4b4144493ed8a80311b20e21d00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<poseCustom>)))
  "Returns full string definition for message of type '<poseCustom>"
  (cl:format cl:nil "string name~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'poseCustom)))
  "Returns full string definition for message of type 'poseCustom"
  (cl:format cl:nil "string name~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <poseCustom>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <poseCustom>))
  "Converts a ROS message object to a list"
  (cl:list 'poseCustom
    (cl:cons ':name (name msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
