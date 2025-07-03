;; Auto-generated. Do not edit!


(when (boundp 'simulator::ActionPlanner)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'ActionPlanner (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::ACTIONPLANNER")
  (make-package "SIMULATOR::ACTIONPLANNER"))

(in-package "ROS")
;;//! \htmlinclude ActionPlanner.msg.html


(defclass simulator::ActionPlanner
  :super ros::object
  :slots (_stamp _data _action ))

(defmethod simulator::ActionPlanner
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:data __data) 0)
    ((:action __action) "")
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _data (round __data))
   (setq _action (string __action))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; int32 _data
    4
    ;; string _action
    4 (length _action)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; int32 _data
       (write-long _data s)
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get simulator::ActionPlanner :md5sum-) "dfb31b26050f11e54703d7a3cc378a5d")
(setf (get simulator::ActionPlanner :datatype-) "simulator/ActionPlanner")
(setf (get simulator::ActionPlanner :definition-)
      "time stamp
int32 data
string action

")



(provide :simulator/ActionPlanner "dfb31b26050f11e54703d7a3cc378a5d")


