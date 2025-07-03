; Auto-generated. Do not edit!


(cl:in-package simulator-msg)


;//! \htmlinclude FindObject.msg.html

(cl:defclass <FindObject> (roslisp-msg-protocol:ros-message)
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
   (find
    :reader find
    :initarg :find
    :type cl:string
    :initform ""))
)

(cl:defclass FindObject (<FindObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FindObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FindObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-msg:<FindObject> is deprecated: use simulator-msg:FindObject instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <FindObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:stamp-val is deprecated.  Use simulator-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <FindObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:data-val is deprecated.  Use simulator-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'find-val :lambda-list '(m))
(cl:defmethod find-val ((m <FindObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:find-val is deprecated.  Use simulator-msg:find instead.")
  (find m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FindObject>) ostream)
  "Serializes a message object of type '<FindObject>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'find))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'find))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FindObject>) istream)
  "Deserializes a message object of type '<FindObject>"
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
      (cl:setf (cl:slot-value msg 'find) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'find) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FindObject>)))
  "Returns string type for a message object of type '<FindObject>"
  "simulator/FindObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindObject)))
  "Returns string type for a message object of type 'FindObject"
  "simulator/FindObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FindObject>)))
  "Returns md5sum for a message object of type '<FindObject>"
  "eb15142359af0b90fb9cb56381869bdd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FindObject)))
  "Returns md5sum for a message object of type 'FindObject"
  "eb15142359af0b90fb9cb56381869bdd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FindObject>)))
  "Returns full string definition for message of type '<FindObject>"
  (cl:format cl:nil "time stamp~%int32 data~%string find~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FindObject)))
  "Returns full string definition for message of type 'FindObject"
  (cl:format cl:nil "time stamp~%int32 data~%string find~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FindObject>))
  (cl:+ 0
     8
     4
     4 (cl:length (cl:slot-value msg 'find))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FindObject>))
  "Converts a ROS message object to a list"
  (cl:list 'FindObject
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':data (data msg))
    (cl:cons ':find (find msg))
))
