;; Auto-generated. Do not edit!


(when (boundp 'simulator::ClearKDB)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'ClearKDB (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::CLEARKDB")
  (make-package "SIMULATOR::CLEARKDB"))
(unless (find-package "SIMULATOR::CLEARKDBREQUEST")
  (make-package "SIMULATOR::CLEARKDBREQUEST"))
(unless (find-package "SIMULATOR::CLEARKDBRESPONSE")
  (make-package "SIMULATOR::CLEARKDBRESPONSE"))

(in-package "ROS")





(defclass simulator::ClearKDBRequest
  :super ros::object
  :slots (_clear ))

(defmethod simulator::ClearKDBRequest
  (:init
   (&key
    ((:clear __clear) nil)
    )
   (send-super :init)
   (setq _clear __clear)
   self)
  (:clear
   (&optional (__clear :null))
   (if (not (eq __clear :null)) (setq _clear __clear)) _clear)
  (:serialization-length
   ()
   (+
    ;; bool _clear
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _clear
       (if _clear (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _clear
     (setq _clear (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass simulator::ClearKDBResponse
  :super ros::object
  :slots (_cleared ))

(defmethod simulator::ClearKDBResponse
  (:init
   (&key
    ((:cleared __cleared) nil)
    )
   (send-super :init)
   (setq _cleared __cleared)
   self)
  (:cleared
   (&optional (__cleared :null))
   (if (not (eq __cleared :null)) (setq _cleared __cleared)) _cleared)
  (:serialization-length
   ()
   (+
    ;; bool _cleared
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _cleared
       (if _cleared (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _cleared
     (setq _cleared (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass simulator::ClearKDB
  :super ros::object
  :slots ())

(setf (get simulator::ClearKDB :md5sum-) "c0cba2f76fe2be4cac55cc053705feaa")
(setf (get simulator::ClearKDB :datatype-) "simulator/ClearKDB")
(setf (get simulator::ClearKDB :request) simulator::ClearKDBRequest)
(setf (get simulator::ClearKDB :response) simulator::ClearKDBResponse)

(defmethod simulator::ClearKDBRequest
  (:response () (instance simulator::ClearKDBResponse :init)))

(setf (get simulator::ClearKDBRequest :md5sum-) "c0cba2f76fe2be4cac55cc053705feaa")
(setf (get simulator::ClearKDBRequest :datatype-) "simulator/ClearKDBRequest")
(setf (get simulator::ClearKDBRequest :definition-)
      "bool clear
---
bool cleared

")

(setf (get simulator::ClearKDBResponse :md5sum-) "c0cba2f76fe2be4cac55cc053705feaa")
(setf (get simulator::ClearKDBResponse :datatype-) "simulator/ClearKDBResponse")
(setf (get simulator::ClearKDBResponse :definition-)
      "bool clear
---
bool cleared

")



(provide :simulator/ClearKDB "c0cba2f76fe2be4cac55cc053705feaa")


