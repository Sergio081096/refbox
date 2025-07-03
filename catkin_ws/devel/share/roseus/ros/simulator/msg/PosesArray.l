;; Auto-generated. Do not edit!


(when (boundp 'simulator::PosesArray)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'PosesArray (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::POSESARRAY")
  (make-package "SIMULATOR::POSESARRAY"))

(in-package "ROS")
;;//! \htmlinclude PosesArray.msg.html


(defclass simulator::PosesArray
  :super ros::object
  :slots (_posesArray ))

(defmethod simulator::PosesArray
  (:init
   (&key
    ((:posesArray __posesArray) ())
    )
   (send-super :init)
   (setq _posesArray __posesArray)
   self)
  (:posesArray
   (&rest __posesArray)
   (if (keywordp (car __posesArray))
       (send* _posesArray __posesArray)
     (progn
       (if __posesArray (setq _posesArray (car __posesArray)))
       _posesArray)))
  (:serialization-length
   ()
   (+
    ;; simulator/poseCustom[] _posesArray
    (apply #'+ (send-all _posesArray :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; simulator/poseCustom[] _posesArray
     (write-long (length _posesArray) s)
     (dolist (elem _posesArray)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; simulator/poseCustom[] _posesArray
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _posesArray (let (r) (dotimes (i n) (push (instance simulator::poseCustom :init) r)) r))
     (dolist (elem- _posesArray)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get simulator::PosesArray :md5sum-) "8a0583a49d80d1c90ba8a84a5a9bd6d9")
(setf (get simulator::PosesArray :datatype-) "simulator/PosesArray")
(setf (get simulator::PosesArray :definition-)
      "poseCustom[] posesArray
================================================================================
MSG: simulator/poseCustom
string name
float32 x
float32 y
")



(provide :simulator/PosesArray "8a0583a49d80d1c90ba8a84a5a9bd6d9")


