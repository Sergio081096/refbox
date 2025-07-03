;; Auto-generated. Do not edit!


(when (boundp 'simulator::simulator_light)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'simulator_light (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::SIMULATOR_LIGHT")
  (make-package "SIMULATOR::SIMULATOR_LIGHT"))
(unless (find-package "SIMULATOR::SIMULATOR_LIGHTREQUEST")
  (make-package "SIMULATOR::SIMULATOR_LIGHTREQUEST"))
(unless (find-package "SIMULATOR::SIMULATOR_LIGHTRESPONSE")
  (make-package "SIMULATOR::SIMULATOR_LIGHTRESPONSE"))

(in-package "ROS")





(defclass simulator::simulator_lightRequest
  :super ros::object
  :slots (_req ))

(defmethod simulator::simulator_lightRequest
  (:init
   (&key
    ((:req __req) 0)
    )
   (send-super :init)
   (setq _req (round __req))
   self)
  (:req
   (&optional __req)
   (if __req (setq _req __req)) _req)
  (:serialization-length
   ()
   (+
    ;; int32 _req
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _req
       (write-long _req s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _req
     (setq _req (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass simulator::simulator_lightResponse
  :super ros::object
  :slots (_values ))

(defmethod simulator::simulator_lightResponse
  (:init
   (&key
    ((:values __values) (make-array 8 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _values __values)
   self)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; float32[8] _values
    (* 4    8)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[8] _values
     (dotimes (i 8)
       (sys::poke (elt _values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[8] _values
   (dotimes (i (length _values))
     (setf (elt _values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass simulator::simulator_light
  :super ros::object
  :slots ())

(setf (get simulator::simulator_light :md5sum-) "f0a363bdf6e9db5ed005776d88d3f68d")
(setf (get simulator::simulator_light :datatype-) "simulator/simulator_light")
(setf (get simulator::simulator_light :request) simulator::simulator_lightRequest)
(setf (get simulator::simulator_light :response) simulator::simulator_lightResponse)

(defmethod simulator::simulator_lightRequest
  (:response () (instance simulator::simulator_lightResponse :init)))

(setf (get simulator::simulator_lightRequest :md5sum-) "f0a363bdf6e9db5ed005776d88d3f68d")
(setf (get simulator::simulator_lightRequest :datatype-) "simulator/simulator_lightRequest")
(setf (get simulator::simulator_lightRequest :definition-)
      "int32 req
---
float32[8] values

")

(setf (get simulator::simulator_lightResponse :md5sum-) "f0a363bdf6e9db5ed005776d88d3f68d")
(setf (get simulator::simulator_lightResponse :datatype-) "simulator/simulator_lightResponse")
(setf (get simulator::simulator_lightResponse :definition-)
      "int32 req
---
float32[8] values

")



(provide :simulator/simulator_light "f0a363bdf6e9db5ed005776d88d3f68d")


