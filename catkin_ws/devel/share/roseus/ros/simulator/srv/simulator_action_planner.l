;; Auto-generated. Do not edit!


(when (boundp 'simulator::simulator_action_planner)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'simulator_action_planner (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::SIMULATOR_ACTION_PLANNER")
  (make-package "SIMULATOR::SIMULATOR_ACTION_PLANNER"))
(unless (find-package "SIMULATOR::SIMULATOR_ACTION_PLANNERREQUEST")
  (make-package "SIMULATOR::SIMULATOR_ACTION_PLANNERREQUEST"))
(unless (find-package "SIMULATOR::SIMULATOR_ACTION_PLANNERRESPONSE")
  (make-package "SIMULATOR::SIMULATOR_ACTION_PLANNERRESPONSE"))

(in-package "ROS")





(defclass simulator::simulator_action_plannerRequest
  :super ros::object
  :slots (_ROS_System _action _object _x _y _z _arm ))

(defmethod simulator::simulator_action_plannerRequest
  (:init
   (&key
    ((:ROS_System __ROS_System) "")
    ((:action __action) "")
    ((:object __object) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:arm __arm) "")
    )
   (send-super :init)
   (setq _ROS_System (string __ROS_System))
   (setq _action (string __action))
   (setq _object (string __object))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _arm (string __arm))
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
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:arm
   (&optional __arm)
   (if __arm (setq _arm __arm)) _arm)
  (:serialization-length
   ()
   (+
    ;; string _ROS_System
    4 (length _ROS_System)
    ;; string _action
    4 (length _action)
    ;; string _object
    4 (length _object)
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; string _arm
    4 (length _arm)
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
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _arm
       (write-long (length _arm) s) (princ _arm s)
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
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _arm
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _arm (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass simulator::simulator_action_plannerResponse
  :super ros::object
  :slots (_answer ))

(defmethod simulator::simulator_action_plannerResponse
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

(defclass simulator::simulator_action_planner
  :super ros::object
  :slots ())

(setf (get simulator::simulator_action_planner :md5sum-) "5d4b465f13d9abdf0754aeb1704ce89b")
(setf (get simulator::simulator_action_planner :datatype-) "simulator/simulator_action_planner")
(setf (get simulator::simulator_action_planner :request) simulator::simulator_action_plannerRequest)
(setf (get simulator::simulator_action_planner :response) simulator::simulator_action_plannerResponse)

(defmethod simulator::simulator_action_plannerRequest
  (:response () (instance simulator::simulator_action_plannerResponse :init)))

(setf (get simulator::simulator_action_plannerRequest :md5sum-) "5d4b465f13d9abdf0754aeb1704ce89b")
(setf (get simulator::simulator_action_plannerRequest :datatype-) "simulator/simulator_action_plannerRequest")
(setf (get simulator::simulator_action_plannerRequest :definition-)
      "string ROS_System
string action
string object
float32 x
float32 y
float32 z
string arm
---
string answer

")

(setf (get simulator::simulator_action_plannerResponse :md5sum-) "5d4b465f13d9abdf0754aeb1704ce89b")
(setf (get simulator::simulator_action_plannerResponse :datatype-) "simulator/simulator_action_plannerResponse")
(setf (get simulator::simulator_action_plannerResponse :definition-)
      "string ROS_System
string action
string object
float32 x
float32 y
float32 z
string arm
---
string answer

")



(provide :simulator/simulator_action_planner "5d4b465f13d9abdf0754aeb1704ce89b")


