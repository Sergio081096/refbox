;; Auto-generated. Do not edit!


(when (boundp 'simulator::simulator_stop)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'simulator_stop (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::SIMULATOR_STOP")
  (make-package "SIMULATOR::SIMULATOR_STOP"))
(unless (find-package "SIMULATOR::SIMULATOR_STOPREQUEST")
  (make-package "SIMULATOR::SIMULATOR_STOPREQUEST"))
(unless (find-package "SIMULATOR::SIMULATOR_STOPRESPONSE")
  (make-package "SIMULATOR::SIMULATOR_STOPRESPONSE"))

(in-package "ROS")





(defclass simulator::simulator_stopRequest
  :super ros::object
  :slots (_stop ))

(defmethod simulator::simulator_stopRequest
  (:init
   (&key
    ((:stop __stop) nil)
    )
   (send-super :init)
   (setq _stop __stop)
   self)
  (:stop
   (&optional (__stop :null))
   (if (not (eq __stop :null)) (setq _stop __stop)) _stop)
  (:serialization-length
   ()
   (+
    ;; bool _stop
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _stop
       (if _stop (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _stop
     (setq _stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass simulator::simulator_stopResponse
  :super ros::object
  :slots (_resp ))

(defmethod simulator::simulator_stopResponse
  (:init
   (&key
    ((:resp __resp) nil)
    )
   (send-super :init)
   (setq _resp __resp)
   self)
  (:resp
   (&optional (__resp :null))
   (if (not (eq __resp :null)) (setq _resp __resp)) _resp)
  (:serialization-length
   ()
   (+
    ;; bool _resp
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _resp
       (if _resp (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _resp
     (setq _resp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass simulator::simulator_stop
  :super ros::object
  :slots ())

(setf (get simulator::simulator_stop :md5sum-) "095e4397fe01973ad978411bb58eda37")
(setf (get simulator::simulator_stop :datatype-) "simulator/simulator_stop")
(setf (get simulator::simulator_stop :request) simulator::simulator_stopRequest)
(setf (get simulator::simulator_stop :response) simulator::simulator_stopResponse)

(defmethod simulator::simulator_stopRequest
  (:response () (instance simulator::simulator_stopResponse :init)))

(setf (get simulator::simulator_stopRequest :md5sum-) "095e4397fe01973ad978411bb58eda37")
(setf (get simulator::simulator_stopRequest :datatype-) "simulator/simulator_stopRequest")
(setf (get simulator::simulator_stopRequest :definition-)
      "bool stop 
---
bool resp
")

(setf (get simulator::simulator_stopResponse :md5sum-) "095e4397fe01973ad978411bb58eda37")
(setf (get simulator::simulator_stopResponse :datatype-) "simulator/simulator_stopResponse")
(setf (get simulator::simulator_stopResponse :definition-)
      "bool stop 
---
bool resp
")



(provide :simulator/simulator_stop "095e4397fe01973ad978411bb58eda37")


