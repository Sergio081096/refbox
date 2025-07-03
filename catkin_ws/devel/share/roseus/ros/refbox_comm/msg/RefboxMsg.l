;; Auto-generated. Do not edit!


(when (boundp 'refbox_comm::RefboxMsg)
  (if (not (find-package "REFBOX_COMM"))
    (make-package "REFBOX_COMM"))
  (shadow 'RefboxMsg (find-package "REFBOX_COMM")))
(unless (find-package "REFBOX_COMM::REFBOXMSG")
  (make-package "REFBOX_COMM::REFBOXMSG"))

(in-package "ROS")
;;//! \htmlinclude RefboxMsg.msg.html


(defclass refbox_comm::RefboxMsg
  :super ros::object
  :slots (_type _data ))

(defmethod refbox_comm::RefboxMsg
  (:init
   (&key
    ((:type __type) "")
    ((:data __data) (instance refbox_comm::RefboxData :init))
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _data __data)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; refbox_comm/RefboxData _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; refbox_comm/RefboxData _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; refbox_comm/RefboxData _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(setf (get refbox_comm::RefboxMsg :md5sum-) "9e2f71e32076dc9993c4774056b8b2e6")
(setf (get refbox_comm::RefboxMsg :datatype-) "refbox_comm/RefboxMsg")
(setf (get refbox_comm::RefboxMsg :definition-)
      "string type
refbox_comm/RefboxData data
================================================================================
MSG: refbox_comm/RefboxData
string[] data
")



(provide :refbox_comm/RefboxMsg "9e2f71e32076dc9993c4774056b8b2e6")


