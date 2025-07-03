;; Auto-generated. Do not edit!


(when (boundp 'simulator::ResetKDB)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'ResetKDB (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::RESETKDB")
  (make-package "SIMULATOR::RESETKDB"))
(unless (find-package "SIMULATOR::RESETKDBREQUEST")
  (make-package "SIMULATOR::RESETKDBREQUEST"))
(unless (find-package "SIMULATOR::RESETKDBRESPONSE")
  (make-package "SIMULATOR::RESETKDBRESPONSE"))

(in-package "ROS")





(defclass simulator::ResetKDBRequest
  :super ros::object
  :slots ())

(defmethod simulator::ResetKDBRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass simulator::ResetKDBResponse
  :super ros::object
  :slots (_result ))

(defmethod simulator::ResetKDBResponse
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

(defclass simulator::ResetKDB
  :super ros::object
  :slots ())

(setf (get simulator::ResetKDB :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get simulator::ResetKDB :datatype-) "simulator/ResetKDB")
(setf (get simulator::ResetKDB :request) simulator::ResetKDBRequest)
(setf (get simulator::ResetKDB :response) simulator::ResetKDBResponse)

(defmethod simulator::ResetKDBRequest
  (:response () (instance simulator::ResetKDBResponse :init)))

(setf (get simulator::ResetKDBRequest :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get simulator::ResetKDBRequest :datatype-) "simulator/ResetKDBRequest")
(setf (get simulator::ResetKDBRequest :definition-)
      "---
bool result

")

(setf (get simulator::ResetKDBResponse :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get simulator::ResetKDBResponse :datatype-) "simulator/ResetKDBResponse")
(setf (get simulator::ResetKDBResponse :definition-)
      "---
bool result

")



(provide :simulator/ResetKDB "eb13ac1f1354ccecb7941ee8fa2192e8")


