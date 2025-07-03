;; Auto-generated. Do not edit!


(when (boundp 'simulator::simulator_object_interaction)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'simulator_object_interaction (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::SIMULATOR_OBJECT_INTERACTION")
  (make-package "SIMULATOR::SIMULATOR_OBJECT_INTERACTION"))
(unless (find-package "SIMULATOR::SIMULATOR_OBJECT_INTERACTIONREQUEST")
  (make-package "SIMULATOR::SIMULATOR_OBJECT_INTERACTIONREQUEST"))
(unless (find-package "SIMULATOR::SIMULATOR_OBJECT_INTERACTIONRESPONSE")
  (make-package "SIMULATOR::SIMULATOR_OBJECT_INTERACTIONRESPONSE"))

(in-package "ROS")





(defclass simulator::simulator_object_interactionRequest
  :super ros::object
  :slots (_grasp _name ))

(defmethod simulator::simulator_object_interactionRequest
  (:init
   (&key
    ((:grasp __grasp) 0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _grasp (round __grasp))
   (setq _name (string __name))
   self)
  (:grasp
   (&optional __grasp)
   (if __grasp (setq _grasp __grasp)) _grasp)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; int32 _grasp
    4
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _grasp
       (write-long _grasp s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _grasp
     (setq _grasp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass simulator::simulator_object_interactionResponse
  :super ros::object
  :slots (_done ))

(defmethod simulator::simulator_object_interactionResponse
  (:init
   (&key
    ((:done __done) nil)
    )
   (send-super :init)
   (setq _done __done)
   self)
  (:done
   (&optional (__done :null))
   (if (not (eq __done :null)) (setq _done __done)) _done)
  (:serialization-length
   ()
   (+
    ;; bool _done
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _done
       (if _done (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _done
     (setq _done (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass simulator::simulator_object_interaction
  :super ros::object
  :slots ())

(setf (get simulator::simulator_object_interaction :md5sum-) "5f2d08a4b7005ec192d2f5e0b480a776")
(setf (get simulator::simulator_object_interaction :datatype-) "simulator/simulator_object_interaction")
(setf (get simulator::simulator_object_interaction :request) simulator::simulator_object_interactionRequest)
(setf (get simulator::simulator_object_interaction :response) simulator::simulator_object_interactionResponse)

(defmethod simulator::simulator_object_interactionRequest
  (:response () (instance simulator::simulator_object_interactionResponse :init)))

(setf (get simulator::simulator_object_interactionRequest :md5sum-) "5f2d08a4b7005ec192d2f5e0b480a776")
(setf (get simulator::simulator_object_interactionRequest :datatype-) "simulator/simulator_object_interactionRequest")
(setf (get simulator::simulator_object_interactionRequest :definition-)
      "int32 grasp
string name
---
bool done
")

(setf (get simulator::simulator_object_interactionResponse :md5sum-) "5f2d08a4b7005ec192d2f5e0b480a776")
(setf (get simulator::simulator_object_interactionResponse :datatype-) "simulator/simulator_object_interactionResponse")
(setf (get simulator::simulator_object_interactionResponse :definition-)
      "int32 grasp
string name
---
bool done
")



(provide :simulator/simulator_object_interaction "5f2d08a4b7005ec192d2f5e0b480a776")


