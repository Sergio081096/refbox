;; Auto-generated. Do not edit!


(when (boundp 'simulator::simulator_algorithm_result)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'simulator_algorithm_result (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::SIMULATOR_ALGORITHM_RESULT")
  (make-package "SIMULATOR::SIMULATOR_ALGORITHM_RESULT"))
(unless (find-package "SIMULATOR::SIMULATOR_ALGORITHM_RESULTREQUEST")
  (make-package "SIMULATOR::SIMULATOR_ALGORITHM_RESULTREQUEST"))
(unless (find-package "SIMULATOR::SIMULATOR_ALGORITHM_RESULTRESPONSE")
  (make-package "SIMULATOR::SIMULATOR_ALGORITHM_RESULTRESPONSE"))

(in-package "ROS")





(defclass simulator::simulator_algorithm_resultRequest
  :super ros::object
  :slots (_nodes_algorithm _num_nodos ))

(defmethod simulator::simulator_algorithm_resultRequest
  (:init
   (&key
    ((:nodes_algorithm __nodes_algorithm) (make-array 200 :initial-element 0 :element-type :integer))
    ((:num_nodos __num_nodos) 0)
    )
   (send-super :init)
   (setq _nodes_algorithm __nodes_algorithm)
   (setq _num_nodos (round __num_nodos))
   self)
  (:nodes_algorithm
   (&optional __nodes_algorithm)
   (if __nodes_algorithm (setq _nodes_algorithm __nodes_algorithm)) _nodes_algorithm)
  (:num_nodos
   (&optional __num_nodos)
   (if __num_nodos (setq _num_nodos __num_nodos)) _num_nodos)
  (:serialization-length
   ()
   (+
    ;; int32[200] _nodes_algorithm
    (* 4    200)
    ;; int32 _num_nodos
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[200] _nodes_algorithm
     (dotimes (i 200)
       (write-long (elt _nodes_algorithm i) s)
       )
     ;; int32 _num_nodos
       (write-long _num_nodos s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[200] _nodes_algorithm
   (dotimes (i (length _nodes_algorithm))
     (setf (elt _nodes_algorithm i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; int32 _num_nodos
     (setq _num_nodos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass simulator::simulator_algorithm_resultResponse
  :super ros::object
  :slots (_success ))

(defmethod simulator::simulator_algorithm_resultResponse
  (:init
   (&key
    ((:success __success) 0)
    )
   (send-super :init)
   (setq _success (round __success))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; int32 _success
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _success
       (write-long _success s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _success
     (setq _success (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass simulator::simulator_algorithm_result
  :super ros::object
  :slots ())

(setf (get simulator::simulator_algorithm_result :md5sum-) "d56e85175467db2ddcdf7fd7b9140749")
(setf (get simulator::simulator_algorithm_result :datatype-) "simulator/simulator_algorithm_result")
(setf (get simulator::simulator_algorithm_result :request) simulator::simulator_algorithm_resultRequest)
(setf (get simulator::simulator_algorithm_result :response) simulator::simulator_algorithm_resultResponse)

(defmethod simulator::simulator_algorithm_resultRequest
  (:response () (instance simulator::simulator_algorithm_resultResponse :init)))

(setf (get simulator::simulator_algorithm_resultRequest :md5sum-) "d56e85175467db2ddcdf7fd7b9140749")
(setf (get simulator::simulator_algorithm_resultRequest :datatype-) "simulator/simulator_algorithm_resultRequest")
(setf (get simulator::simulator_algorithm_resultRequest :definition-)
      "int32[200] nodes_algorithm
int32 num_nodos 
---
int32 success
")

(setf (get simulator::simulator_algorithm_resultResponse :md5sum-) "d56e85175467db2ddcdf7fd7b9140749")
(setf (get simulator::simulator_algorithm_resultResponse :datatype-) "simulator/simulator_algorithm_resultResponse")
(setf (get simulator::simulator_algorithm_resultResponse :definition-)
      "int32[200] nodes_algorithm
int32 num_nodos 
---
int32 success
")



(provide :simulator/simulator_algorithm_result "d56e85175467db2ddcdf7fd7b9140749")


