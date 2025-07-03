;; Auto-generated. Do not edit!


(when (boundp 'simulator::simulator_base)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'simulator_base (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::SIMULATOR_BASE")
  (make-package "SIMULATOR::SIMULATOR_BASE"))
(unless (find-package "SIMULATOR::SIMULATOR_BASEREQUEST")
  (make-package "SIMULATOR::SIMULATOR_BASEREQUEST"))
(unless (find-package "SIMULATOR::SIMULATOR_BASERESPONSE")
  (make-package "SIMULATOR::SIMULATOR_BASERESPONSE"))

(in-package "ROS")





(defclass simulator::simulator_baseRequest
  :super ros::object
  :slots (_theta _distance _x1 _y1 _orientation _new_simulation ))

(defmethod simulator::simulator_baseRequest
  (:init
   (&key
    ((:theta __theta) 0.0)
    ((:distance __distance) 0.0)
    ((:x1 __x1) 0.0)
    ((:y1 __y1) 0.0)
    ((:orientation __orientation) 0.0)
    ((:new_simulation __new_simulation) 0)
    )
   (send-super :init)
   (setq _theta (float __theta))
   (setq _distance (float __distance))
   (setq _x1 (float __x1))
   (setq _y1 (float __y1))
   (setq _orientation (float __orientation))
   (setq _new_simulation (round __new_simulation))
   self)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:new_simulation
   (&optional __new_simulation)
   (if __new_simulation (setq _new_simulation __new_simulation)) _new_simulation)
  (:serialization-length
   ()
   (+
    ;; float32 _theta
    4
    ;; float32 _distance
    4
    ;; float32 _x1
    4
    ;; float32 _y1
    4
    ;; float32 _orientation
    4
    ;; int32 _new_simulation
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y1
       (sys::poke _y1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _orientation
       (sys::poke _orientation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _new_simulation
       (write-long _new_simulation s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x1
     (setq _x1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y1
     (setq _y1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _orientation
     (setq _orientation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _new_simulation
     (setq _new_simulation (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass simulator::simulator_baseResponse
  :super ros::object
  :slots (_distance _theta ))

(defmethod simulator::simulator_baseResponse
  (:init
   (&key
    ((:distance __distance) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   (setq _theta (float __theta))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; float32 _distance
    4
    ;; float32 _theta
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass simulator::simulator_base
  :super ros::object
  :slots ())

(setf (get simulator::simulator_base :md5sum-) "c610652b5948ec39164020b0e0e84422")
(setf (get simulator::simulator_base :datatype-) "simulator/simulator_base")
(setf (get simulator::simulator_base :request) simulator::simulator_baseRequest)
(setf (get simulator::simulator_base :response) simulator::simulator_baseResponse)

(defmethod simulator::simulator_baseRequest
  (:response () (instance simulator::simulator_baseResponse :init)))

(setf (get simulator::simulator_baseRequest :md5sum-) "c610652b5948ec39164020b0e0e84422")
(setf (get simulator::simulator_baseRequest :datatype-) "simulator/simulator_baseRequest")
(setf (get simulator::simulator_baseRequest :definition-)
      "float32 theta
float32 distance
float32 x1
float32 y1
float32 orientation
int32 new_simulation
---
float32 distance
float32 theta
")

(setf (get simulator::simulator_baseResponse :md5sum-) "c610652b5948ec39164020b0e0e84422")
(setf (get simulator::simulator_baseResponse :datatype-) "simulator/simulator_baseResponse")
(setf (get simulator::simulator_baseResponse :definition-)
      "float32 theta
float32 distance
float32 x1
float32 y1
float32 orientation
int32 new_simulation
---
float32 distance
float32 theta
")



(provide :simulator/simulator_base "c610652b5948ec39164020b0e0e84422")


