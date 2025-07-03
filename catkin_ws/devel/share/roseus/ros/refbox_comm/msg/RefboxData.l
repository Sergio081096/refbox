;; Auto-generated. Do not edit!


(when (boundp 'refbox_comm::RefboxData)
  (if (not (find-package "REFBOX_COMM"))
    (make-package "REFBOX_COMM"))
  (shadow 'RefboxData (find-package "REFBOX_COMM")))
(unless (find-package "REFBOX_COMM::REFBOXDATA")
  (make-package "REFBOX_COMM::REFBOXDATA"))

(in-package "ROS")
;;//! \htmlinclude RefboxData.msg.html


(defclass refbox_comm::RefboxData
  :super ros::object
  :slots (_data ))

(defmethod refbox_comm::RefboxData
  (:init
   (&key
    ((:data __data) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string[] _data
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _data i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get refbox_comm::RefboxData :md5sum-) "cce5a364f3a3be12c9722c6dcad2fa94")
(setf (get refbox_comm::RefboxData :datatype-) "refbox_comm/RefboxData")
(setf (get refbox_comm::RefboxData :definition-)
      "string[] data
")



(provide :refbox_comm/RefboxData "cce5a364f3a3be12c9722c6dcad2fa94")


