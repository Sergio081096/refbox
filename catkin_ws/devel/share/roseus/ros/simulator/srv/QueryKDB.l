;; Auto-generated. Do not edit!


(when (boundp 'simulator::QueryKDB)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'QueryKDB (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::QUERYKDB")
  (make-package "SIMULATOR::QUERYKDB"))
(unless (find-package "SIMULATOR::QUERYKDBREQUEST")
  (make-package "SIMULATOR::QUERYKDBREQUEST"))
(unless (find-package "SIMULATOR::QUERYKDBRESPONSE")
  (make-package "SIMULATOR::QUERYKDBRESPONSE"))

(in-package "ROS")





(defclass simulator::QueryKDBRequest
  :super ros::object
  :slots (_query ))

(defmethod simulator::QueryKDBRequest
  (:init
   (&key
    ((:query __query) "")
    )
   (send-super :init)
   (setq _query (string __query))
   self)
  (:query
   (&optional __query)
   (if __query (setq _query __query)) _query)
  (:serialization-length
   ()
   (+
    ;; string _query
    4 (length _query)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _query
       (write-long (length _query) s) (princ _query s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _query
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _query (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass simulator::QueryKDBResponse
  :super ros::object
  :slots (_result ))

(defmethod simulator::QueryKDBResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass simulator::QueryKDB
  :super ros::object
  :slots ())

(setf (get simulator::QueryKDB :md5sum-) "40ece397ad679f27203bff340007bd45")
(setf (get simulator::QueryKDB :datatype-) "simulator/QueryKDB")
(setf (get simulator::QueryKDB :request) simulator::QueryKDBRequest)
(setf (get simulator::QueryKDB :response) simulator::QueryKDBResponse)

(defmethod simulator::QueryKDBRequest
  (:response () (instance simulator::QueryKDBResponse :init)))

(setf (get simulator::QueryKDBRequest :md5sum-) "40ece397ad679f27203bff340007bd45")
(setf (get simulator::QueryKDBRequest :datatype-) "simulator/QueryKDBRequest")
(setf (get simulator::QueryKDBRequest :definition-)
      "string query
---
string result

")

(setf (get simulator::QueryKDBResponse :md5sum-) "40ece397ad679f27203bff340007bd45")
(setf (get simulator::QueryKDBResponse :datatype-) "simulator/QueryKDBResponse")
(setf (get simulator::QueryKDBResponse :definition-)
      "string query
---
string result

")



(provide :simulator/QueryKDB "40ece397ad679f27203bff340007bd45")


