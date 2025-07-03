; Auto-generated. Do not edit!


(cl:in-package refbox_comm-msg)


;//! \htmlinclude RefboxMsg.msg.html

(cl:defclass <RefboxMsg> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type refbox_comm-msg:RefboxData
    :initform (cl:make-instance 'refbox_comm-msg:RefboxData)))
)

(cl:defclass RefboxMsg (<RefboxMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RefboxMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RefboxMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name refbox_comm-msg:<RefboxMsg> is deprecated: use refbox_comm-msg:RefboxMsg instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <RefboxMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader refbox_comm-msg:type-val is deprecated.  Use refbox_comm-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <RefboxMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader refbox_comm-msg:data-val is deprecated.  Use refbox_comm-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RefboxMsg>) ostream)
  "Serializes a message object of type '<RefboxMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RefboxMsg>) istream)
  "Deserializes a message object of type '<RefboxMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RefboxMsg>)))
  "Returns string type for a message object of type '<RefboxMsg>"
  "refbox_comm/RefboxMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RefboxMsg)))
  "Returns string type for a message object of type 'RefboxMsg"
  "refbox_comm/RefboxMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RefboxMsg>)))
  "Returns md5sum for a message object of type '<RefboxMsg>"
  "9e2f71e32076dc9993c4774056b8b2e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RefboxMsg)))
  "Returns md5sum for a message object of type 'RefboxMsg"
  "9e2f71e32076dc9993c4774056b8b2e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RefboxMsg>)))
  "Returns full string definition for message of type '<RefboxMsg>"
  (cl:format cl:nil "string type~%refbox_comm/RefboxData data~%================================================================================~%MSG: refbox_comm/RefboxData~%string[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RefboxMsg)))
  "Returns full string definition for message of type 'RefboxMsg"
  (cl:format cl:nil "string type~%refbox_comm/RefboxData data~%================================================================================~%MSG: refbox_comm/RefboxData~%string[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RefboxMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RefboxMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'RefboxMsg
    (cl:cons ':type (type msg))
    (cl:cons ':data (data msg))
))
