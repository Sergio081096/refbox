;; Auto-generated. Do not edit!


(when (boundp 'simulator::simulator_robot_step)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'simulator_robot_step (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::SIMULATOR_ROBOT_STEP")
  (make-package "SIMULATOR::SIMULATOR_ROBOT_STEP"))
(unless (find-package "SIMULATOR::SIMULATOR_ROBOT_STEPREQUEST")
  (make-package "SIMULATOR::SIMULATOR_ROBOT_STEPREQUEST"))
(unless (find-package "SIMULATOR::SIMULATOR_ROBOT_STEPRESPONSE")
  (make-package "SIMULATOR::SIMULATOR_ROBOT_STEPRESPONSE"))

(in-package "ROS")





(defclass simulator::simulator_robot_stepRequest
  :super ros::object
  :slots (_theta _distance _sensors _stop ))

(defmethod simulator::simulator_robot_stepRequest
  (:init
   (&key
    ((:theta __theta) 0.0)
    ((:distance __distance) 0.0)
    ((:sensors __sensors) (make-array 512 :initial-element 0.0 :element-type :float))
    ((:stop __stop) nil)
    )
   (send-super :init)
   (setq _theta (float __theta))
   (setq _distance (float __distance))
   (setq _sensors __sensors)
   (setq _stop __stop)
   self)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:sensors
   (&optional __sensors)
   (if __sensors (setq _sensors __sensors)) _sensors)
  (:stop
   (&optional (__stop :null))
   (if (not (eq __stop :null)) (setq _stop __stop)) _stop)
  (:serialization-length
   ()
   (+
    ;; float32 _theta
    4
    ;; float32 _distance
    4
    ;; float32[512] _sensors
    (* 4    512)
    ;; bool _stop
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[512] _sensors
     (dotimes (i 512)
       (sys::poke (elt _sensors i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _stop
       (if _stop (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[512] _sensors
   (dotimes (i (length _sensors))
     (setf (elt _sensors i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; bool _stop
     (setq _stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass simulator::simulator_robot_stepResponse
  :super ros::object
  :slots (_success _robot_x _robot_y _theta ))

(defmethod simulator::simulator_robot_stepResponse
  (:init
   (&key
    ((:success __success) 0)
    ((:robot_x __robot_x) 0.0)
    ((:robot_y __robot_y) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _success (round __success))
   (setq _robot_x (float __robot_x))
   (setq _robot_y (float __robot_y))
   (setq _theta (float __theta))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:robot_x
   (&optional __robot_x)
   (if __robot_x (setq _robot_x __robot_x)) _robot_x)
  (:robot_y
   (&optional __robot_y)
   (if __robot_y (setq _robot_y __robot_y)) _robot_y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; int64 _success
    8
    ;; float32 _robot_x
    4
    ;; float32 _robot_y
    4
    ;; float32 _theta
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _success
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _success (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _success) (= (length (_success . bv)) 2)) ;; bignum
              (write-long (ash (elt (_success . bv) 0) 0) s)
              (write-long (ash (elt (_success . bv) 1) -1) s))
             ((and (class _success) (= (length (_success . bv)) 1)) ;; big1
              (write-long (elt (_success . bv) 0) s)
              (write-long (if (>= _success 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _success s)(write-long (if (>= _success 0) 0 #xffffffff) s)))
     ;; float32 _robot_x
       (sys::poke _robot_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _robot_y
       (sys::poke _robot_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _success
#+(or :alpha :irix6 :x86_64)
      (setf _success (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _success (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _robot_x
     (setq _robot_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _robot_y
     (setq _robot_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass simulator::simulator_robot_step
  :super ros::object
  :slots ())

(setf (get simulator::simulator_robot_step :md5sum-) "61c07095849b4725350f87062a0db530")
(setf (get simulator::simulator_robot_step :datatype-) "simulator/simulator_robot_step")
(setf (get simulator::simulator_robot_step :request) simulator::simulator_robot_stepRequest)
(setf (get simulator::simulator_robot_step :response) simulator::simulator_robot_stepResponse)

(defmethod simulator::simulator_robot_stepRequest
  (:response () (instance simulator::simulator_robot_stepResponse :init)))

(setf (get simulator::simulator_robot_stepRequest :md5sum-) "61c07095849b4725350f87062a0db530")
(setf (get simulator::simulator_robot_stepRequest :datatype-) "simulator/simulator_robot_stepRequest")
(setf (get simulator::simulator_robot_stepRequest :definition-)
      "float32 theta
float32 distance
float32[512] sensors
bool stop
---
int64 success
float32 robot_x
float32 robot_y
float32 theta

")

(setf (get simulator::simulator_robot_stepResponse :md5sum-) "61c07095849b4725350f87062a0db530")
(setf (get simulator::simulator_robot_stepResponse :datatype-) "simulator/simulator_robot_stepResponse")
(setf (get simulator::simulator_robot_stepResponse :definition-)
      "float32 theta
float32 distance
float32[512] sensors
bool stop
---
int64 success
float32 robot_x
float32 robot_y
float32 theta

")



(provide :simulator/simulator_robot_step "61c07095849b4725350f87062a0db530")


