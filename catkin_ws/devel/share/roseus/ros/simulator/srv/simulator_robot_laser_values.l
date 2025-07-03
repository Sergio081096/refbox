;; Auto-generated. Do not edit!


(when (boundp 'simulator::simulator_robot_laser_values)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'simulator_robot_laser_values (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::SIMULATOR_ROBOT_LASER_VALUES")
  (make-package "SIMULATOR::SIMULATOR_ROBOT_LASER_VALUES"))
(unless (find-package "SIMULATOR::SIMULATOR_ROBOT_LASER_VALUESREQUEST")
  (make-package "SIMULATOR::SIMULATOR_ROBOT_LASER_VALUESREQUEST"))
(unless (find-package "SIMULATOR::SIMULATOR_ROBOT_LASER_VALUESRESPONSE")
  (make-package "SIMULATOR::SIMULATOR_ROBOT_LASER_VALUESRESPONSE"))

(in-package "ROS")





(defclass simulator::simulator_robot_laser_valuesRequest
  :super ros::object
  :slots (_sensors ))

(defmethod simulator::simulator_robot_laser_valuesRequest
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

(defclass simulator::simulator_robot_laser_valuesResponse
  :super ros::object
  :slots (_success ))

(defmethod simulator::simulator_robot_laser_valuesResponse
  (:init
   (&key
    ((:success __success) 0)
    )
   (send-super :init)
   (setq _success (round __success))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; int64 _success
    8
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
   ;;
   self)
  )

(defclass simulator::simulator_robot_laser_values
  :super ros::object
  :slots ())

(setf (get simulator::simulator_robot_laser_values :md5sum-) "fed2e1160fc2ee00e074cbac3dfb8139")
(setf (get simulator::simulator_robot_laser_values :datatype-) "simulator/simulator_robot_laser_values")
(setf (get simulator::simulator_robot_laser_values :request) simulator::simulator_robot_laser_valuesRequest)
(setf (get simulator::simulator_robot_laser_values :response) simulator::simulator_robot_laser_valuesResponse)

(defmethod simulator::simulator_robot_laser_valuesRequest
  (:response () (instance simulator::simulator_robot_laser_valuesResponse :init)))

(setf (get simulator::simulator_robot_laser_valuesRequest :md5sum-) "fed2e1160fc2ee00e074cbac3dfb8139")
(setf (get simulator::simulator_robot_laser_valuesRequest :datatype-) "simulator/simulator_robot_laser_valuesRequest")
(setf (get simulator::simulator_robot_laser_valuesRequest :definition-)
      "float32[100] sensors
---
int64 success
")

(setf (get simulator::simulator_robot_laser_valuesResponse :md5sum-) "fed2e1160fc2ee00e074cbac3dfb8139")
(setf (get simulator::simulator_robot_laser_valuesResponse :datatype-) "simulator/simulator_robot_laser_valuesResponse")
(setf (get simulator::simulator_robot_laser_valuesResponse :definition-)
      "float32[100] sensors
---
int64 success
")



(provide :simulator/simulator_robot_laser_values "fed2e1160fc2ee00e074cbac3dfb8139")


