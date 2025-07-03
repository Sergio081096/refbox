; Auto-generated. Do not edit!


(cl:in-package simulator-srv)


;//! \htmlinclude simulator_manipulator-request.msg.html

(cl:defclass <simulator_manipulator-request> (roslisp-msg-protocol:ros-message)
  ((ROS_System
    :reader ROS_System
    :initarg :ROS_System
    :type cl:string
    :initform "")
   (action
    :reader action
    :initarg :action
    :type cl:string
    :initform "")
   (object
    :reader object
    :initarg :object
    :type cl:string
    :initform ""))
)

(cl:defclass simulator_manipulator-request (<simulator_manipulator-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simulator_manipulator-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simulator_manipulator-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-srv:<simulator_manipulator-request> is deprecated: use simulator-srv:simulator_manipulator-request instead.")))

(cl:ensure-generic-function 'ROS_System-val :lambda-list '(m))
(cl:defmethod ROS_System-val ((m <simulator_manipulator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-srv:ROS_System-val is deprecated.  Use simulator-srv:ROS_System instead.")
  (ROS_System m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <simulator_manipulator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-srv:action-val is deprecated.  Use simulator-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <simulator_manipulator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-srv:object-val is deprecated.  Use simulator-srv:object instead.")
  (object m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simulator_manipulator-request>) ostream)
  "Serializes a message object of type '<simulator_manipulator-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ROS_System))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ROS_System))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simulator_manipulator-request>) istream)
  "Deserializes a message object of type '<simulator_manipulator-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ROS_System) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ROS_System) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simulator_manipulator-request>)))
  "Returns string type for a service object of type '<simulator_manipulator-request>"
  "simulator/simulator_manipulatorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simulator_manipulator-request)))
  "Returns string type for a service object of type 'simulator_manipulator-request"
  "simulator/simulator_manipulatorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simulator_manipulator-request>)))
  "Returns md5sum for a message object of type '<simulator_manipulator-request>"
  "79bc46f7abed5f24dda02ac0e109caf4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simulator_manipulator-request)))
  "Returns md5sum for a message object of type 'simulator_manipulator-request"
  "79bc46f7abed5f24dda02ac0e109caf4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simulator_manipulator-request>)))
  "Returns full string definition for message of type '<simulator_manipulator-request>"
  (cl:format cl:nil "string ROS_System~%string action~%string object~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simulator_manipulator-request)))
  "Returns full string definition for message of type 'simulator_manipulator-request"
  (cl:format cl:nil "string ROS_System~%string action~%string object~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simulator_manipulator-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ROS_System))
     4 (cl:length (cl:slot-value msg 'action))
     4 (cl:length (cl:slot-value msg 'object))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simulator_manipulator-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simulator_manipulator-request
    (cl:cons ':ROS_System (ROS_System msg))
    (cl:cons ':action (action msg))
    (cl:cons ':object (object msg))
))
;//! \htmlinclude simulator_manipulator-response.msg.html

(cl:defclass <simulator_manipulator-response> (roslisp-msg-protocol:ros-message)
  ((answer
    :reader answer
    :initarg :answer
    :type cl:string
    :initform ""))
)

(cl:defclass simulator_manipulator-response (<simulator_manipulator-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simulator_manipulator-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simulator_manipulator-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-srv:<simulator_manipulator-response> is deprecated: use simulator-srv:simulator_manipulator-response instead.")))

(cl:ensure-generic-function 'answer-val :lambda-list '(m))
(cl:defmethod answer-val ((m <simulator_manipulator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-srv:answer-val is deprecated.  Use simulator-srv:answer instead.")
  (answer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simulator_manipulator-response>) ostream)
  "Serializes a message object of type '<simulator_manipulator-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'answer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'answer))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simulator_manipulator-response>) istream)
  "Deserializes a message object of type '<simulator_manipulator-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'answer) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'answer) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simulator_manipulator-response>)))
  "Returns string type for a service object of type '<simulator_manipulator-response>"
  "simulator/simulator_manipulatorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simulator_manipulator-response)))
  "Returns string type for a service object of type 'simulator_manipulator-response"
  "simulator/simulator_manipulatorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simulator_manipulator-response>)))
  "Returns md5sum for a message object of type '<simulator_manipulator-response>"
  "79bc46f7abed5f24dda02ac0e109caf4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simulator_manipulator-response)))
  "Returns md5sum for a message object of type 'simulator_manipulator-response"
  "79bc46f7abed5f24dda02ac0e109caf4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simulator_manipulator-response>)))
  "Returns full string definition for message of type '<simulator_manipulator-response>"
  (cl:format cl:nil "string answer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simulator_manipulator-response)))
  "Returns full string definition for message of type 'simulator_manipulator-response"
  (cl:format cl:nil "string answer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simulator_manipulator-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'answer))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simulator_manipulator-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simulator_manipulator-response
    (cl:cons ':answer (answer msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simulator_manipulator)))
  'simulator_manipulator-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simulator_manipulator)))
  'simulator_manipulator-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simulator_manipulator)))
  "Returns string type for a service object of type '<simulator_manipulator>"
  "simulator/simulator_manipulator")