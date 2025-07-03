;; Auto-generated. Do not edit!


(when (boundp 'simulator::poseCustom)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'poseCustom (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::POSECUSTOM")
  (make-package "SIMULATOR::POSECUSTOM"))

(in-package "ROS")
;;//! \htmlinclude poseCustom.msg.html


(defclass simulator::poseCustom
  :super ros::object
  :slots (_name _x _y ))

(defmethod simulator::poseCustom
  (:init
   (&key
    ((:name __name) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32 _x
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get simulator::poseCustom :md5sum-) "3d2ed4b4144493ed8a80311b20e21d00")
(setf (get simulator::poseCustom :datatype-) "simulator/poseCustom")
(setf (get simulator::poseCustom :definition-)
      "string name
float32 x
float32 y
")



(provide :simulator/poseCustom "3d2ed4b4144493ed8a80311b20e21d00")


