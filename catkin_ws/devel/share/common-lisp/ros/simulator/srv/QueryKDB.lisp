; Auto-generated. Do not edit!


(cl:in-package simulator-srv)


;//! \htmlinclude QueryKDB-request.msg.html

(cl:defclass <QueryKDB-request> (roslisp-msg-protocol:ros-message)
  ((query
    :reader query
    :initarg :query
    :type cl:string
    :initform ""))
)

(cl:defclass QueryKDB-request (<QueryKDB-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QueryKDB-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QueryKDB-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-srv:<QueryKDB-request> is deprecated: use simulator-srv:QueryKDB-request instead.")))

(cl:ensure-generic-function 'query-val :lambda-list '(m))
(cl:defmethod query-val ((m <QueryKDB-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-srv:query-val is deprecated.  Use simulator-srv:query instead.")
  (query m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QueryKDB-request>) ostream)
  "Serializes a message object of type '<QueryKDB-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'query))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'query))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QueryKDB-request>) istream)
  "Deserializes a message object of type '<QueryKDB-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'query) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'query) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QueryKDB-request>)))
  "Returns string type for a service object of type '<QueryKDB-request>"
  "simulator/QueryKDBRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryKDB-request)))
  "Returns string type for a service object of type 'QueryKDB-request"
  "simulator/QueryKDBRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QueryKDB-request>)))
  "Returns md5sum for a message object of type '<QueryKDB-request>"
  "40ece397ad679f27203bff340007bd45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QueryKDB-request)))
  "Returns md5sum for a message object of type 'QueryKDB-request"
  "40ece397ad679f27203bff340007bd45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QueryKDB-request>)))
  "Returns full string definition for message of type '<QueryKDB-request>"
  (cl:format cl:nil "string query~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QueryKDB-request)))
  "Returns full string definition for message of type 'QueryKDB-request"
  (cl:format cl:nil "string query~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QueryKDB-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'query))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QueryKDB-request>))
  "Converts a ROS message object to a list"
  (cl:list 'QueryKDB-request
    (cl:cons ':query (query msg))
))
;//! \htmlinclude QueryKDB-response.msg.html

(cl:defclass <QueryKDB-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass QueryKDB-response (<QueryKDB-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QueryKDB-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QueryKDB-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-srv:<QueryKDB-response> is deprecated: use simulator-srv:QueryKDB-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <QueryKDB-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-srv:result-val is deprecated.  Use simulator-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QueryKDB-response>) ostream)
  "Serializes a message object of type '<QueryKDB-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QueryKDB-response>) istream)
  "Deserializes a message object of type '<QueryKDB-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QueryKDB-response>)))
  "Returns string type for a service object of type '<QueryKDB-response>"
  "simulator/QueryKDBResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryKDB-response)))
  "Returns string type for a service object of type 'QueryKDB-response"
  "simulator/QueryKDBResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QueryKDB-response>)))
  "Returns md5sum for a message object of type '<QueryKDB-response>"
  "40ece397ad679f27203bff340007bd45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QueryKDB-response)))
  "Returns md5sum for a message object of type 'QueryKDB-response"
  "40ece397ad679f27203bff340007bd45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QueryKDB-response>)))
  "Returns full string definition for message of type '<QueryKDB-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QueryKDB-response)))
  "Returns full string definition for message of type 'QueryKDB-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QueryKDB-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QueryKDB-response>))
  "Converts a ROS message object to a list"
  (cl:list 'QueryKDB-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'QueryKDB)))
  'QueryKDB-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'QueryKDB)))
  'QueryKDB-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryKDB)))
  "Returns string type for a service object of type '<QueryKDB>"
  "simulator/QueryKDB")