; Auto-generated. Do not edit!


(cl:in-package simulator-msg)


;//! \htmlinclude PosesArray.msg.html

(cl:defclass <PosesArray> (roslisp-msg-protocol:ros-message)
  ((posesArray
    :reader posesArray
    :initarg :posesArray
    :type (cl:vector simulator-msg:poseCustom)
   :initform (cl:make-array 0 :element-type 'simulator-msg:poseCustom :initial-element (cl:make-instance 'simulator-msg:poseCustom))))
)

(cl:defclass PosesArray (<PosesArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PosesArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PosesArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-msg:<PosesArray> is deprecated: use simulator-msg:PosesArray instead.")))

(cl:ensure-generic-function 'posesArray-val :lambda-list '(m))
(cl:defmethod posesArray-val ((m <PosesArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:posesArray-val is deprecated.  Use simulator-msg:posesArray instead.")
  (posesArray m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PosesArray>) ostream)
  "Serializes a message object of type '<PosesArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'posesArray))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'posesArray))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PosesArray>) istream)
  "Deserializes a message object of type '<PosesArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'posesArray) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'posesArray)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'simulator-msg:poseCustom))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PosesArray>)))
  "Returns string type for a message object of type '<PosesArray>"
  "simulator/PosesArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PosesArray)))
  "Returns string type for a message object of type 'PosesArray"
  "simulator/PosesArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PosesArray>)))
  "Returns md5sum for a message object of type '<PosesArray>"
  "8a0583a49d80d1c90ba8a84a5a9bd6d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PosesArray)))
  "Returns md5sum for a message object of type 'PosesArray"
  "8a0583a49d80d1c90ba8a84a5a9bd6d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PosesArray>)))
  "Returns full string definition for message of type '<PosesArray>"
  (cl:format cl:nil "poseCustom[] posesArray~%================================================================================~%MSG: simulator/poseCustom~%string name~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PosesArray)))
  "Returns full string definition for message of type 'PosesArray"
  (cl:format cl:nil "poseCustom[] posesArray~%================================================================================~%MSG: simulator/poseCustom~%string name~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PosesArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'posesArray) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PosesArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PosesArray
    (cl:cons ':posesArray (posesArray msg))
))
