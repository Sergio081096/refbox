;; Auto-generated. Do not edit!


(when (boundp 'simulator::simulator_manipulator)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'simulator_manipulator (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::SIMULATOR_MANIPULATOR")
  (make-package "SIMULATOR::SIMULATOR_MANIPULATOR"))
(unless (find-package "SIMULATOR::SIMULATOR_MANIPULATORREQUEST")
  (make-package "SIMULATOR::SIMULATOR_MANIPULATORREQUEST"))
(unless (find-package "SIMULATOR::SIMULATOR_MANIPULATORRESPONSE")
  (make-package "SIMULATOR::SIMULATOR_MANIPULATORRESPONSE"))

(in-package "ROS")





(defclass simulator::simulator_manipulatorRequest
  :super ros::object
  :slots (_ROS_System _action _object ))

(defmethod simulator::simulator_manipulatorRequest
  (:init
   (&key
    ((:ROS_System __ROS_System) "")
    ((:action __action) "")
    ((:object __object) "")
    )
   (send-super :init)
   (setq _ROS_System (string __ROS_System))
   (setq _action (string __action))
   (setq _object (string __object))
   self)
  (:ROS_System
   (&optional __ROS_System)
   (if __ROS_System (setq _ROS_System __ROS_System)) _ROS_System)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:object
   (&optional __object)
   (if __object (setq _object __object)) _object)
  (:serialization-length
   ()
   (+
    ;; string _ROS_System
    4 (length _ROS_System)
    ;; string _action
    4 (length _action)
    ;; string _object
    4 (length _object)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ROS_System
       (write-long (length _ROS_System) s) (princ _ROS_System s)
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;; string _object
       (write-long (length _object) s) (princ _object s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ROS_System
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ROS_System (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _object
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass simulator::simulator_manipulatorResponse
  :super ros::object
  :slots (_answer ))

(defmethod simulator::simulator_manipulatorResponse
  (:init
   (&key
    ((:answer __answer) "")
    )
   (send-super :init)
   (setq _answer (string __answer))
   self)
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:serialization-length
   ()
   (+
    ;; string _answer
    4 (length _answer)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _answer
       (write-long (length _answer) s) (princ _answer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _answer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _answer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass simulator::simulator_manipulator
  :super ros::object
  :slots ())

(setf (get simulator::simulator_manipulator :md5sum-) "79bc46f7abed5f24dda02ac0e109caf4")
(setf (get simulator::simulator_manipulator :datatype-) "simulator/simulator_manipulator")
(setf (get simulator::simulator_manipulator :request) simulator::simulator_manipulatorRequest)
(setf (get simulator::simulator_manipulator :response) simulator::simulator_manipulatorResponse)

(defmethod simulator::simulator_manipulatorRequest
  (:response () (instance simulator::simulator_manipulatorResponse :init)))

(setf (get simulator::simulator_manipulatorRequest :md5sum-) "79bc46f7abed5f24dda02ac0e109caf4")
(setf (get simulator::simulator_manipulatorRequest :datatype-) "simulator/simulator_manipulatorRequest")
(setf (get simulator::simulator_manipulatorRequest :definition-)
      "string ROS_System
string action
string object
---
string answer
")

(setf (get simulator::simulator_manipulatorResponse :md5sum-) "79bc46f7abed5f24dda02ac0e109caf4")
(setf (get simulator::simulator_manipulatorResponse :datatype-) "simulator/simulator_manipulatorResponse")
(setf (get simulator::simulator_manipulatorResponse :definition-)
      "string ROS_System
string action
string object
---
string answer
")



(provide :simulator/simulator_manipulator "79bc46f7abed5f24dda02ac0e109caf4")


