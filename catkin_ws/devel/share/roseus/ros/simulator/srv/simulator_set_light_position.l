;; Auto-generated. Do not edit!


(when (boundp 'simulator::simulator_set_light_position)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'simulator_set_light_position (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::SIMULATOR_SET_LIGHT_POSITION")
  (make-package "SIMULATOR::SIMULATOR_SET_LIGHT_POSITION"))
(unless (find-package "SIMULATOR::SIMULATOR_SET_LIGHT_POSITIONREQUEST")
  (make-package "SIMULATOR::SIMULATOR_SET_LIGHT_POSITIONREQUEST"))
(unless (find-package "SIMULATOR::SIMULATOR_SET_LIGHT_POSITIONRESPONSE")
  (make-package "SIMULATOR::SIMULATOR_SET_LIGHT_POSITIONRESPONSE"))

(in-package "ROS")





(defclass simulator::simulator_set_light_positionRequest
  :super ros::object
  :slots (_light_x _light_y ))

(defmethod simulator::simulator_set_light_positionRequest
  (:init
   (&key
    ((:light_x __light_x) 0.0)
    ((:light_y __light_y) 0.0)
    )
   (send-super :init)
   (setq _light_x (float __light_x))
   (setq _light_y (float __light_y))
   self)
  (:light_x
   (&optional __light_x)
   (if __light_x (setq _light_x __light_x)) _light_x)
  (:light_y
   (&optional __light_y)
   (if __light_y (setq _light_y __light_y)) _light_y)
  (:serialization-length
   ()
   (+
    ;; float32 _light_x
    4
    ;; float32 _light_y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _light_x
       (sys::poke _light_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _light_y
       (sys::poke _light_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _light_x
     (setq _light_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _light_y
     (setq _light_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass simulator::simulator_set_light_positionResponse
  :super ros::object
  :slots (_success ))

(defmethod simulator::simulator_set_light_positionResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass simulator::simulator_set_light_position
  :super ros::object
  :slots ())

(setf (get simulator::simulator_set_light_position :md5sum-) "d56d73ee632c8aa7c9431df2ebbb2712")
(setf (get simulator::simulator_set_light_position :datatype-) "simulator/simulator_set_light_position")
(setf (get simulator::simulator_set_light_position :request) simulator::simulator_set_light_positionRequest)
(setf (get simulator::simulator_set_light_position :response) simulator::simulator_set_light_positionResponse)

(defmethod simulator::simulator_set_light_positionRequest
  (:response () (instance simulator::simulator_set_light_positionResponse :init)))

(setf (get simulator::simulator_set_light_positionRequest :md5sum-) "d56d73ee632c8aa7c9431df2ebbb2712")
(setf (get simulator::simulator_set_light_positionRequest :datatype-) "simulator/simulator_set_light_positionRequest")
(setf (get simulator::simulator_set_light_positionRequest :definition-)
      "float32 light_x
float32 light_y
---
bool success

")

(setf (get simulator::simulator_set_light_positionResponse :md5sum-) "d56d73ee632c8aa7c9431df2ebbb2712")
(setf (get simulator::simulator_set_light_positionResponse :datatype-) "simulator/simulator_set_light_positionResponse")
(setf (get simulator::simulator_set_light_positionResponse :definition-)
      "float32 light_x
float32 light_y
---
bool success

")



(provide :simulator/simulator_set_light_position "d56d73ee632c8aa7c9431df2ebbb2712")


