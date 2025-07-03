;; Auto-generated. Do not edit!


(when (boundp 'simulator::SinglePlan)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'SinglePlan (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::SINGLEPLAN")
  (make-package "SIMULATOR::SINGLEPLAN"))

(in-package "ROS")
;;//! \htmlinclude SinglePlan.msg.html


(defclass simulator::SinglePlan
  :super ros::object
  :slots (_plan_steps ))

(defmethod simulator::SinglePlan
  (:init
   (&key
    ((:plan_steps __plan_steps) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _plan_steps __plan_steps)
   self)
  (:plan_steps
   (&optional __plan_steps)
   (if __plan_steps (setq _plan_steps __plan_steps)) _plan_steps)
  (:serialization-length
   ()
   (+
    ;; string[] _plan_steps
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _plan_steps)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _plan_steps
     (write-long (length _plan_steps) s)
     (dolist (elem _plan_steps)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _plan_steps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _plan_steps (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _plan_steps i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get simulator::SinglePlan :md5sum-) "8e74db1782ceaae358fee14c8e79172c")
(setf (get simulator::SinglePlan :datatype-) "simulator/SinglePlan")
(setf (get simulator::SinglePlan :definition-)
      "string[] plan_steps
")



(provide :simulator/SinglePlan "8e74db1782ceaae358fee14c8e79172c")


