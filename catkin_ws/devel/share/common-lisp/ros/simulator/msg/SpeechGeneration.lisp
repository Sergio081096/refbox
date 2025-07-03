; Auto-generated. Do not edit!


(cl:in-package simulator-msg)


;//! \htmlinclude SpeechGeneration.msg.html

(cl:defclass <SpeechGeneration> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0)
   (action
    :reader action
    :initarg :action
    :type cl:string
    :initform ""))
)

(cl:defclass SpeechGeneration (<SpeechGeneration>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeechGeneration>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeechGeneration)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-msg:<SpeechGeneration> is deprecated: use simulator-msg:SpeechGeneration instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <SpeechGeneration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:stamp-val is deprecated.  Use simulator-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SpeechGeneration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:data-val is deprecated.  Use simulator-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <SpeechGeneration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:action-val is deprecated.  Use simulator-msg:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeechGeneration>) ostream)
  "Serializes a message object of type '<SpeechGeneration>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeechGeneration>) istream)
  "Deserializes a message object of type '<SpeechGeneration>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeechGeneration>)))
  "Returns string type for a message object of type '<SpeechGeneration>"
  "simulator/SpeechGeneration")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeechGeneration)))
  "Returns string type for a message object of type 'SpeechGeneration"
  "simulator/SpeechGeneration")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeechGeneration>)))
  "Returns md5sum for a message object of type '<SpeechGeneration>"
  "dfb31b26050f11e54703d7a3cc378a5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeechGeneration)))
  "Returns md5sum for a message object of type 'SpeechGeneration"
  "dfb31b26050f11e54703d7a3cc378a5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeechGeneration>)))
  "Returns full string definition for message of type '<SpeechGeneration>"
  (cl:format cl:nil "time stamp~%int32 data~%string action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeechGeneration)))
  "Returns full string definition for message of type 'SpeechGeneration"
  (cl:format cl:nil "time stamp~%int32 data~%string action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeechGeneration>))
  (cl:+ 0
     8
     4
     4 (cl:length (cl:slot-value msg 'action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeechGeneration>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeechGeneration
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':data (data msg))
    (cl:cons ':action (action msg))
))
