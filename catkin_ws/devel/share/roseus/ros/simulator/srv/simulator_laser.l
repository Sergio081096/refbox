;; Auto-generated. Do not edit!


(when (boundp 'simulator::simulator_laser)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'simulator_laser (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::SIMULATOR_LASER")
  (make-package "SIMULATOR::SIMULATOR_LASER"))
(unless (find-package "SIMULATOR::SIMULATOR_LASERREQUEST")
  (make-package "SIMULATOR::SIMULATOR_LASERREQUEST"))
(unless (find-package "SIMULATOR::SIMULATOR_LASERRESPONSE")
  (make-package "SIMULATOR::SIMULATOR_LASERRESPONSE"))

(in-package "ROS")





(defclass simulator::simulator_laserRequest
  :super ros::object
  :slots (_robot_x _robot_y _robot_theta _new_simulation ))

(defmethod simulator::simulator_laserRequest
  (:init
   (&key
    ((:robot_x __robot_x) 0.0)
    ((:robot_y __robot_y) 0.0)
    ((:robot_theta __robot_theta) 0.0)
    ((:new_simulation __new_simulation) 0)
    )
   (send-super :init)
   (setq _robot_x (float __robot_x))
   (setq _robot_y (float __robot_y))
   (setq _robot_theta (float __robot_theta))
   (setq _new_simulation (round __new_simulation))
   self)
  (:robot_x
   (&optional __robot_x)
   (if __robot_x (setq _robot_x __robot_x)) _robot_x)
  (:robot_y
   (&optional __robot_y)
   (if __robot_y (setq _robot_y __robot_y)) _robot_y)
  (:robot_theta
   (&optional __robot_theta)
   (if __robot_theta (setq _robot_theta __robot_theta)) _robot_theta)
  (:new_simulation
   (&optional __new_simulation)
   (if __new_simulation (setq _new_simulation __new_simulation)) _new_simulation)
  (:serialization-length
   ()
   (+
    ;; float32 _robot_x
    4
    ;; float32 _robot_y
    4
    ;; float32 _robot_theta
    4
    ;; int32 _new_simulation
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _robot_x
       (sys::poke _robot_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _robot_y
       (sys::poke _robot_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _robot_theta
       (sys::poke _robot_theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _new_simulation
       (write-long _new_simulation s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _robot_x
     (setq _robot_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _robot_y
     (setq _robot_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _robot_theta
     (setq _robot_theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _new_simulation
     (setq _new_simulation (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass simulator::simulator_laserResponse
  :super ros::object
  :slots (_sensors ))

(defmethod simulator::simulator_laserResponse
  (:init
   (&key
    ((:sensors __sensors) (make-array 512 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _sensors __sensors)
   self)
  (:sensors
   (&optional __sensors)
   (if __sensors (setq _sensors __sensors)) _sensors)
  (:serialization-length
   ()
   (+
    ;; float32[512] _sensors
    (* 4    512)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[512] _sensors
     (dotimes (i 512)
       (sys::poke (elt _sensors i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[512] _sensors
   (dotimes (i (length _sensors))
     (setf (elt _sensors i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass simulator::simulator_laser
  :super ros::object
  :slots ())

(setf (get simulator::simulator_laser :md5sum-) "d1e42417fddd5b94b1b79a5297e533e5")
(setf (get simulator::simulator_laser :datatype-) "simulator/simulator_laser")
(setf (get simulator::simulator_laser :request) simulator::simulator_laserRequest)
(setf (get simulator::simulator_laser :response) simulator::simulator_laserResponse)

(defmethod simulator::simulator_laserRequest
  (:response () (instance simulator::simulator_laserResponse :init)))

(setf (get simulator::simulator_laserRequest :md5sum-) "d1e42417fddd5b94b1b79a5297e533e5")
(setf (get simulator::simulator_laserRequest :datatype-) "simulator/simulator_laserRequest")
(setf (get simulator::simulator_laserRequest :definition-)
      "float32 robot_x
float32 robot_y
float32 robot_theta
int32 new_simulation
---
float32[512] sensors

")

(setf (get simulator::simulator_laserResponse :md5sum-) "d1e42417fddd5b94b1b79a5297e533e5")
(setf (get simulator::simulator_laserResponse :datatype-) "simulator/simulator_laserResponse")
(setf (get simulator::simulator_laserResponse :definition-)
      "float32 robot_x
float32 robot_y
float32 robot_theta
int32 new_simulation
---
float32[512] sensors

")



(provide :simulator/simulator_laser "d1e42417fddd5b94b1b79a5297e533e5")


