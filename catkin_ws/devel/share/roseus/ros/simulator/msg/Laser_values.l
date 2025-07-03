;; Auto-generated. Do not edit!


(when (boundp 'simulator::Laser_values)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'Laser_values (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::LASER_VALUES")
  (make-package "SIMULATOR::LASER_VALUES"))

(in-package "ROS")
;;//! \htmlinclude Laser_values.msg.html


(defclass simulator::Laser_values
  :super ros::object
  :slots (_sensors ))

(defmethod simulator::Laser_values
  (:init
   (&key
    ((:sensors __sensors) (make-array 100 :initial-element 0.0 :element-type :float))
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
    ;; float32[100] _sensors
    (* 4    100)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[100] _sensors
     (dotimes (i 100)
       (sys::poke (elt _sensors i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[100] _sensors
   (dotimes (i (length _sensors))
     (setf (elt _sensors i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get simulator::Laser_values :md5sum-) "e419bb63c59113a3a33a33958511350f")
(setf (get simulator::Laser_values :datatype-) "simulator/Laser_values")
(setf (get simulator::Laser_values :definition-)
      "float32[100] sensors
")



(provide :simulator/Laser_values "e419bb63c59113a3a33a33958511350f")


