;; Auto-generated. Do not edit!


(when (boundp 'simulator::MotionPlanner)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'MotionPlanner (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::MOTIONPLANNER")
  (make-package "SIMULATOR::MOTIONPLANNER"))

(in-package "ROS")
;;//! \htmlinclude MotionPlanner.msg.html


(defclass simulator::MotionPlanner
  :super ros::object
  :slots (_stamp _data _motion ))

(defmethod simulator::MotionPlanner
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:data __data) 0)
    ((:motion __motion) "")
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _data (round __data))
   (setq _motion (string __motion))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:motion
   (&optional __motion)
   (if __motion (setq _motion __motion)) _motion)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; int32 _data
    4
    ;; string _motion
    4 (length _motion)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; int32 _data
       (write-long _data s)
     ;; string _motion
       (write-long (length _motion) s) (princ _motion s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _motion
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _motion (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get simulator::MotionPlanner :md5sum-) "43593cc1ed124c563298623832f83c0f")
(setf (get simulator::MotionPlanner :datatype-) "simulator/MotionPlanner")
(setf (get simulator::MotionPlanner :definition-)
      "time stamp
int32 data
string motion

")



(provide :simulator/MotionPlanner "43593cc1ed124c563298623832f83c0f")


