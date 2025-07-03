; Auto-generated. Do not edit!


(cl:in-package simulator-srv)


;//! \htmlinclude simulator_MoveRealRobot-request.msg.html

(cl:defclass <simulator_MoveRealRobot-request> (roslisp-msg-protocol:ros-message)
  ((theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass simulator_MoveRealRobot-request (<simulator_MoveRealRobot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simulator_MoveRealRobot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simulator_MoveRealRobot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-srv:<simulator_MoveRealRobot-request> is deprecated: use simulator-srv:simulator_MoveRealRobot-request instead.")))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <simulator_MoveRealRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-srv:theta-val is deprecated.  Use simulator-srv:theta instead.")
  (theta m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <simulator_MoveRealRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-srv:distance-val is deprecated.  Use simulator-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simulator_MoveRealRobot-request>) ostream)
  "Serializes a message object of type '<simulator_MoveRealRobot-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simulator_MoveRealRobot-request>) istream)
  "Deserializes a message object of type '<simulator_MoveRealRobot-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simulator_MoveRealRobot-request>)))
  "Returns string type for a service object of type '<simulator_MoveRealRobot-request>"
  "simulator/simulator_MoveRealRobotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simulator_MoveRealRobot-request)))
  "Returns string type for a service object of type 'simulator_MoveRealRobot-request"
  "simulator/simulator_MoveRealRobotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simulator_MoveRealRobot-request>)))
  "Returns md5sum for a message object of type '<simulator_MoveRealRobot-request>"
  "f6c91c9ac3aa81fb2b1334bdb82aee4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simulator_MoveRealRobot-request)))
  "Returns md5sum for a message object of type 'simulator_MoveRealRobot-request"
  "f6c91c9ac3aa81fb2b1334bdb82aee4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simulator_MoveRealRobot-request>)))
  "Returns full string definition for message of type '<simulator_MoveRealRobot-request>"
  (cl:format cl:nil "float32 theta~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simulator_MoveRealRobot-request)))
  "Returns full string definition for message of type 'simulator_MoveRealRobot-request"
  (cl:format cl:nil "float32 theta~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simulator_MoveRealRobot-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simulator_MoveRealRobot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simulator_MoveRealRobot-request
    (cl:cons ':theta (theta msg))
    (cl:cons ':distance (distance msg))
))
;//! \htmlinclude simulator_MoveRealRobot-response.msg.html

(cl:defclass <simulator_MoveRealRobot-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:float
    :initform 0.0))
)

(cl:defclass simulator_MoveRealRobot-response (<simulator_MoveRealRobot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simulator_MoveRealRobot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simulator_MoveRealRobot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-srv:<simulator_MoveRealRobot-response> is deprecated: use simulator-srv:simulator_MoveRealRobot-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <simulator_MoveRealRobot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-srv:done-val is deprecated.  Use simulator-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simulator_MoveRealRobot-response>) ostream)
  "Serializes a message object of type '<simulator_MoveRealRobot-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'done))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simulator_MoveRealRobot-response>) istream)
  "Deserializes a message object of type '<simulator_MoveRealRobot-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'done) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simulator_MoveRealRobot-response>)))
  "Returns string type for a service object of type '<simulator_MoveRealRobot-response>"
  "simulator/simulator_MoveRealRobotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simulator_MoveRealRobot-response)))
  "Returns string type for a service object of type 'simulator_MoveRealRobot-response"
  "simulator/simulator_MoveRealRobotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simulator_MoveRealRobot-response>)))
  "Returns md5sum for a message object of type '<simulator_MoveRealRobot-response>"
  "f6c91c9ac3aa81fb2b1334bdb82aee4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simulator_MoveRealRobot-response)))
  "Returns md5sum for a message object of type 'simulator_MoveRealRobot-response"
  "f6c91c9ac3aa81fb2b1334bdb82aee4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simulator_MoveRealRobot-response>)))
  "Returns full string definition for message of type '<simulator_MoveRealRobot-response>"
  (cl:format cl:nil "float32 done~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simulator_MoveRealRobot-response)))
  "Returns full string definition for message of type 'simulator_MoveRealRobot-response"
  (cl:format cl:nil "float32 done~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simulator_MoveRealRobot-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simulator_MoveRealRobot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simulator_MoveRealRobot-response
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simulator_MoveRealRobot)))
  'simulator_MoveRealRobot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simulator_MoveRealRobot)))
  'simulator_MoveRealRobot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simulator_MoveRealRobot)))
  "Returns string type for a service object of type '<simulator_MoveRealRobot>"
  "simulator/simulator_MoveRealRobot")