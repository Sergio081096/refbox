; Auto-generated. Do not edit!


(cl:in-package simulator-srv)


;//! \htmlinclude ClearKDB-request.msg.html

(cl:defclass <ClearKDB-request> (roslisp-msg-protocol:ros-message)
  ((clear
    :reader clear
    :initarg :clear
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ClearKDB-request (<ClearKDB-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearKDB-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearKDB-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-srv:<ClearKDB-request> is deprecated: use simulator-srv:ClearKDB-request instead.")))

(cl:ensure-generic-function 'clear-val :lambda-list '(m))
(cl:defmethod clear-val ((m <ClearKDB-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-srv:clear-val is deprecated.  Use simulator-srv:clear instead.")
  (clear m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearKDB-request>) ostream)
  "Serializes a message object of type '<ClearKDB-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clear) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearKDB-request>) istream)
  "Deserializes a message object of type '<ClearKDB-request>"
    (cl:setf (cl:slot-value msg 'clear) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearKDB-request>)))
  "Returns string type for a service object of type '<ClearKDB-request>"
  "simulator/ClearKDBRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearKDB-request)))
  "Returns string type for a service object of type 'ClearKDB-request"
  "simulator/ClearKDBRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearKDB-request>)))
  "Returns md5sum for a message object of type '<ClearKDB-request>"
  "c0cba2f76fe2be4cac55cc053705feaa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearKDB-request)))
  "Returns md5sum for a message object of type 'ClearKDB-request"
  "c0cba2f76fe2be4cac55cc053705feaa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearKDB-request>)))
  "Returns full string definition for message of type '<ClearKDB-request>"
  (cl:format cl:nil "bool clear~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearKDB-request)))
  "Returns full string definition for message of type 'ClearKDB-request"
  (cl:format cl:nil "bool clear~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearKDB-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearKDB-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearKDB-request
    (cl:cons ':clear (clear msg))
))
;//! \htmlinclude ClearKDB-response.msg.html

(cl:defclass <ClearKDB-response> (roslisp-msg-protocol:ros-message)
  ((cleared
    :reader cleared
    :initarg :cleared
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ClearKDB-response (<ClearKDB-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearKDB-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearKDB-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-srv:<ClearKDB-response> is deprecated: use simulator-srv:ClearKDB-response instead.")))

(cl:ensure-generic-function 'cleared-val :lambda-list '(m))
(cl:defmethod cleared-val ((m <ClearKDB-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-srv:cleared-val is deprecated.  Use simulator-srv:cleared instead.")
  (cleared m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearKDB-response>) ostream)
  "Serializes a message object of type '<ClearKDB-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cleared) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearKDB-response>) istream)
  "Deserializes a message object of type '<ClearKDB-response>"
    (cl:setf (cl:slot-value msg 'cleared) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearKDB-response>)))
  "Returns string type for a service object of type '<ClearKDB-response>"
  "simulator/ClearKDBResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearKDB-response)))
  "Returns string type for a service object of type 'ClearKDB-response"
  "simulator/ClearKDBResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearKDB-response>)))
  "Returns md5sum for a message object of type '<ClearKDB-response>"
  "c0cba2f76fe2be4cac55cc053705feaa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearKDB-response)))
  "Returns md5sum for a message object of type 'ClearKDB-response"
  "c0cba2f76fe2be4cac55cc053705feaa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearKDB-response>)))
  "Returns full string definition for message of type '<ClearKDB-response>"
  (cl:format cl:nil "bool cleared~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearKDB-response)))
  "Returns full string definition for message of type 'ClearKDB-response"
  (cl:format cl:nil "bool cleared~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearKDB-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearKDB-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearKDB-response
    (cl:cons ':cleared (cleared msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClearKDB)))
  'ClearKDB-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClearKDB)))
  'ClearKDB-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearKDB)))
  "Returns string type for a service object of type '<ClearKDB>"
  "simulator/ClearKDB")