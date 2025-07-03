;; Auto-generated. Do not edit!


(when (boundp 'simulator::InitKDB)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'InitKDB (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::INITKDB")
  (make-package "SIMULATOR::INITKDB"))
(unless (find-package "SIMULATOR::INITKDBREQUEST")
  (make-package "SIMULATOR::INITKDBREQUEST"))
(unless (find-package "SIMULATOR::INITKDBRESPONSE")
  (make-package "SIMULATOR::INITKDBRESPONSE"))

(in-package "ROS")





(defclass simulator::InitKDBRequest
  :super ros::object
  :slots (_filePath _run ))

(defmethod simulator::InitKDBRequest
  (:init
   (&key
    ((:filePath __filePath) "")
    ((:run __run) nil)
    )
   (send-super :init)
   (setq _filePath (string __filePath))
   (setq _run __run)
   self)
  (:filePath
   (&optional __filePath)
   (if __filePath (setq _filePath __filePath)) _filePath)
  (:run
   (&optional (__run :null))
   (if (not (eq __run :null)) (setq _run __run)) _run)
  (:serialization-length
   ()
   (+
    ;; string _filePath
    4 (length _filePath)
    ;; bool _run
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filePath
       (write-long (length _filePath) s) (princ _filePath s)
     ;; bool _run
       (if _run (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filePath
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filePath (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _run
     (setq _run (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass simulator::InitKDBResponse
  :super ros::object
  :slots (_result ))

(defmethod simulator::InitKDBResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass simulator::InitKDB
  :super ros::object
  :slots ())

(setf (get simulator::InitKDB :md5sum-) "a472717e40f2402632296f64bb78ba8e")
(setf (get simulator::InitKDB :datatype-) "simulator/InitKDB")
(setf (get simulator::InitKDB :request) simulator::InitKDBRequest)
(setf (get simulator::InitKDB :response) simulator::InitKDBResponse)

(defmethod simulator::InitKDBRequest
  (:response () (instance simulator::InitKDBResponse :init)))

(setf (get simulator::InitKDBRequest :md5sum-) "a472717e40f2402632296f64bb78ba8e")
(setf (get simulator::InitKDBRequest :datatype-) "simulator/InitKDBRequest")
(setf (get simulator::InitKDBRequest :definition-)
      "string filePath
bool run
---
bool result

")

(setf (get simulator::InitKDBResponse :md5sum-) "a472717e40f2402632296f64bb78ba8e")
(setf (get simulator::InitKDBResponse :datatype-) "simulator/InitKDBResponse")
(setf (get simulator::InitKDBResponse :definition-)
      "string filePath
bool run
---
bool result

")



(provide :simulator/InitKDB "a472717e40f2402632296f64bb78ba8e")


