;; Auto-generated. Do not edit!


(when (boundp 'simulator::FindObject)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'FindObject (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::FINDOBJECT")
  (make-package "SIMULATOR::FINDOBJECT"))

(in-package "ROS")
;;//! \htmlinclude FindObject.msg.html


(defclass simulator::FindObject
  :super ros::object
  :slots (_stamp _data _find ))

(defmethod simulator::FindObject
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:data __data) 0)
    ((:find __find) "")
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _data (round __data))
   (setq _find (string __find))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:find
   (&optional __find)
   (if __find (setq _find __find)) _find)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; int32 _data
    4
    ;; string _find
    4 (length _find)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; int32 _data
       (write-long _data s)
     ;; string _find
       (write-long (length _find) s) (princ _find s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _find
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _find (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get simulator::FindObject :md5sum-) "eb15142359af0b90fb9cb56381869bdd")
(setf (get simulator::FindObject :datatype-) "simulator/FindObject")
(setf (get simulator::FindObject :definition-)
      "time stamp
int32 data
string find

")



(provide :simulator/FindObject "eb15142359af0b90fb9cb56381869bdd")


