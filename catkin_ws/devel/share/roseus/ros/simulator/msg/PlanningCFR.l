;; Auto-generated. Do not edit!


(when (boundp 'simulator::PlanningCFR)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'PlanningCFR (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::PLANNINGCFR")
  (make-package "SIMULATOR::PLANNINGCFR"))

(in-package "ROS")
;;//! \htmlinclude PlanningCFR.msg.html


(defclass simulator::PlanningCFR
  :super ros::object
  :slots (_command _params ))

(defmethod simulator::PlanningCFR
  (:init
   (&key
    ((:command __command) "")
    ((:params __params) ())
    )
   (send-super :init)
   (setq _command (string __command))
   (setq _params __params)
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:params
   (&rest __params)
   (if (keywordp (car __params))
       (send* _params __params)
     (progn
       (if __params (setq _params (car __params)))
       _params)))
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ;; simulator/CFRParams[] _params
    (apply #'+ (send-all _params :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; simulator/CFRParams[] _params
     (write-long (length _params) s)
     (dolist (elem _params)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; simulator/CFRParams[] _params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _params (let (r) (dotimes (i n) (push (instance simulator::CFRParams :init) r)) r))
     (dolist (elem- _params)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get simulator::PlanningCFR :md5sum-) "1bda369640b5ce77a1917aec327930a1")
(setf (get simulator::PlanningCFR :datatype-) "simulator/PlanningCFR")
(setf (get simulator::PlanningCFR :definition-)
      "string command
CFRParams[] params

================================================================================
MSG: simulator/CFRParams
string frame_id
string frame_value

")



(provide :simulator/PlanningCFR "1bda369640b5ce77a1917aec327930a1")


