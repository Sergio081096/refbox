; Auto-generated. Do not edit!


(cl:in-package simulator-srv)


;//! \htmlinclude ResetKDB-request.msg.html

(cl:defclass <ResetKDB-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ResetKDB-request (<ResetKDB-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetKDB-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetKDB-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-srv:<ResetKDB-request> is deprecated: use simulator-srv:ResetKDB-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetKDB-request>) ostream)
  "Serializes a message object of type '<ResetKDB-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetKDB-request>) istream)
  "Deserializes a message object of type '<ResetKDB-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetKDB-request>)))
  "Returns string type for a service object of type '<ResetKDB-request>"
  "simulator/ResetKDBRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetKDB-request)))
  "Returns string type for a service object of type 'ResetKDB-request"
  "simulator/ResetKDBRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetKDB-request>)))
  "Returns md5sum for a message object of type '<ResetKDB-request>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetKDB-request)))
  "Returns md5sum for a message object of type 'ResetKDB-request"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetKDB-request>)))
  "Returns full string definition for message of type '<ResetKDB-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetKDB-request)))
  "Returns full string definition for message of type 'ResetKDB-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetKDB-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetKDB-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetKDB-request
))
;//! \htmlinclude ResetKDB-response.msg.html

(cl:defclass <ResetKDB-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ResetKDB-response (<ResetKDB-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetKDB-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetKDB-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-srv:<ResetKDB-response> is deprecated: use simulator-srv:ResetKDB-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ResetKDB-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-srv:result-val is deprecated.  Use simulator-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetKDB-response>) ostream)
  "Serializes a message object of type '<ResetKDB-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetKDB-response>) istream)
  "Deserializes a message object of type '<ResetKDB-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetKDB-response>)))
  "Returns string type for a service object of type '<ResetKDB-response>"
  "simulator/ResetKDBResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetKDB-response)))
  "Returns string type for a service object of type 'ResetKDB-response"
  "simulator/ResetKDBResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetKDB-response>)))
  "Returns md5sum for a message object of type '<ResetKDB-response>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetKDB-response)))
  "Returns md5sum for a message object of type 'ResetKDB-response"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetKDB-response>)))
  "Returns full string definition for message of type '<ResetKDB-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetKDB-response)))
  "Returns full string definition for message of type 'ResetKDB-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetKDB-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetKDB-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetKDB-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetKDB)))
  'ResetKDB-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetKDB)))
  'ResetKDB-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetKDB)))
  "Returns string type for a service object of type '<ResetKDB>"
  "simulator/ResetKDB")