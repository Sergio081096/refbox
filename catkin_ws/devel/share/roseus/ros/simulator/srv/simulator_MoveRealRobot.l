;; Auto-generated. Do not edit!


(when (boundp 'simulator::simulator_MoveRealRobot)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'simulator_MoveRealRobot (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::SIMULATOR_MOVEREALROBOT")
  (make-package "SIMULATOR::SIMULATOR_MOVEREALROBOT"))
(unless (find-package "SIMULATOR::SIMULATOR_MOVEREALROBOTREQUEST")
  (make-package "SIMULATOR::SIMULATOR_MOVEREALROBOTREQUEST"))
(unless (find-package "SIMULATOR::SIMULATOR_MOVEREALROBOTRESPONSE")
  (make-package "SIMULATOR::SIMULATOR_MOVEREALROBOTRESPONSE"))

(in-package "ROS")





(defclass simulator::simulator_MoveRealRobotRequest
  :super ros::object
  :slots (_theta _distance ))

(defmethod simulator::simulator_MoveRealRobotRequest
  (:init
   (&key
    ((:theta __theta) 0.0)
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _theta (float __theta))
   (setq _distance (float __distance))
   self)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; float32 _theta
    4
    ;; float32 _distance
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass simulator::simulator_MoveRealRobotResponse
  :super ros::object
  :slots (_done ))

(defmethod simulator::simulator_MoveRealRobotResponse
  (:init
   (&key
    ((:done __done) 0.0)
    )
   (send-super :init)
   (setq _done (float __done))
   self)
  (:done
   (&optional __done)
   (if __done (setq _done __done)) _done)
  (:serialization-length
   ()
   (+
    ;; float32 _done
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _done
       (sys::poke _done (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _done
     (setq _done (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass simulator::simulator_MoveRealRobot
  :super ros::object
  :slots ())

(setf (get simulator::simulator_MoveRealRobot :md5sum-) "f6c91c9ac3aa81fb2b1334bdb82aee4d")
(setf (get simulator::simulator_MoveRealRobot :datatype-) "simulator/simulator_MoveRealRobot")
(setf (get simulator::simulator_MoveRealRobot :request) simulator::simulator_MoveRealRobotRequest)
(setf (get simulator::simulator_MoveRealRobot :response) simulator::simulator_MoveRealRobotResponse)

(defmethod simulator::simulator_MoveRealRobotRequest
  (:response () (instance simulator::simulator_MoveRealRobotResponse :init)))

(setf (get simulator::simulator_MoveRealRobotRequest :md5sum-) "f6c91c9ac3aa81fb2b1334bdb82aee4d")
(setf (get simulator::simulator_MoveRealRobotRequest :datatype-) "simulator/simulator_MoveRealRobotRequest")
(setf (get simulator::simulator_MoveRealRobotRequest :definition-)
      "float32 theta
float32 distance
---
float32 done
")

(setf (get simulator::simulator_MoveRealRobotResponse :md5sum-) "f6c91c9ac3aa81fb2b1334bdb82aee4d")
(setf (get simulator::simulator_MoveRealRobotResponse :datatype-) "simulator/simulator_MoveRealRobotResponse")
(setf (get simulator::simulator_MoveRealRobotResponse :definition-)
      "float32 theta
float32 distance
---
float32 done
")



(provide :simulator/simulator_MoveRealRobot "f6c91c9ac3aa81fb2b1334bdb82aee4d")


