;; Auto-generated. Do not edit!


(when (boundp 'simulator::simulator_parameters)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'simulator_parameters (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::SIMULATOR_PARAMETERS")
  (make-package "SIMULATOR::SIMULATOR_PARAMETERS"))
(unless (find-package "SIMULATOR::SIMULATOR_PARAMETERSREQUEST")
  (make-package "SIMULATOR::SIMULATOR_PARAMETERSREQUEST"))
(unless (find-package "SIMULATOR::SIMULATOR_PARAMETERSRESPONSE")
  (make-package "SIMULATOR::SIMULATOR_PARAMETERSRESPONSE"))

(in-package "ROS")





(defclass simulator::simulator_parametersRequest
  :super ros::object
  :slots (_request ))

(defmethod simulator::simulator_parametersRequest
  (:init
   (&key
    ((:request __request) nil)
    )
   (send-super :init)
   (setq _request __request)
   self)
  (:request
   (&optional (__request :null))
   (if (not (eq __request :null)) (setq _request __request)) _request)
  (:serialization-length
   ()
   (+
    ;; bool _request
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _request
       (if _request (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _request
     (setq _request (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass simulator::simulator_parametersResponse
  :super ros::object
  :slots (_robot_x _robot_y _robot_theta _robot_radio _robot_max_advance _robot_turn_angle _laser_num_sensors _laser_origin _laser_range _laser_value _world_name _noise _run _light_x _light_y _behavior _steps ))

(defmethod simulator::simulator_parametersResponse
  (:init
   (&key
    ((:robot_x __robot_x) 0.0)
    ((:robot_y __robot_y) 0.0)
    ((:robot_theta __robot_theta) 0.0)
    ((:robot_radio __robot_radio) 0.0)
    ((:robot_max_advance __robot_max_advance) 0.0)
    ((:robot_turn_angle __robot_turn_angle) 0.0)
    ((:laser_num_sensors __laser_num_sensors) 0)
    ((:laser_origin __laser_origin) 0.0)
    ((:laser_range __laser_range) 0.0)
    ((:laser_value __laser_value) 0.0)
    ((:world_name __world_name) "")
    ((:noise __noise) nil)
    ((:run __run) nil)
    ((:light_x __light_x) 0.0)
    ((:light_y __light_y) 0.0)
    ((:behavior __behavior) 0)
    ((:steps __steps) 0)
    )
   (send-super :init)
   (setq _robot_x (float __robot_x))
   (setq _robot_y (float __robot_y))
   (setq _robot_theta (float __robot_theta))
   (setq _robot_radio (float __robot_radio))
   (setq _robot_max_advance (float __robot_max_advance))
   (setq _robot_turn_angle (float __robot_turn_angle))
   (setq _laser_num_sensors (round __laser_num_sensors))
   (setq _laser_origin (float __laser_origin))
   (setq _laser_range (float __laser_range))
   (setq _laser_value (float __laser_value))
   (setq _world_name (string __world_name))
   (setq _noise __noise)
   (setq _run __run)
   (setq _light_x (float __light_x))
   (setq _light_y (float __light_y))
   (setq _behavior (round __behavior))
   (setq _steps (round __steps))
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
  (:robot_radio
   (&optional __robot_radio)
   (if __robot_radio (setq _robot_radio __robot_radio)) _robot_radio)
  (:robot_max_advance
   (&optional __robot_max_advance)
   (if __robot_max_advance (setq _robot_max_advance __robot_max_advance)) _robot_max_advance)
  (:robot_turn_angle
   (&optional __robot_turn_angle)
   (if __robot_turn_angle (setq _robot_turn_angle __robot_turn_angle)) _robot_turn_angle)
  (:laser_num_sensors
   (&optional __laser_num_sensors)
   (if __laser_num_sensors (setq _laser_num_sensors __laser_num_sensors)) _laser_num_sensors)
  (:laser_origin
   (&optional __laser_origin)
   (if __laser_origin (setq _laser_origin __laser_origin)) _laser_origin)
  (:laser_range
   (&optional __laser_range)
   (if __laser_range (setq _laser_range __laser_range)) _laser_range)
  (:laser_value
   (&optional __laser_value)
   (if __laser_value (setq _laser_value __laser_value)) _laser_value)
  (:world_name
   (&optional __world_name)
   (if __world_name (setq _world_name __world_name)) _world_name)
  (:noise
   (&optional (__noise :null))
   (if (not (eq __noise :null)) (setq _noise __noise)) _noise)
  (:run
   (&optional (__run :null))
   (if (not (eq __run :null)) (setq _run __run)) _run)
  (:light_x
   (&optional __light_x)
   (if __light_x (setq _light_x __light_x)) _light_x)
  (:light_y
   (&optional __light_y)
   (if __light_y (setq _light_y __light_y)) _light_y)
  (:behavior
   (&optional __behavior)
   (if __behavior (setq _behavior __behavior)) _behavior)
  (:steps
   (&optional __steps)
   (if __steps (setq _steps __steps)) _steps)
  (:serialization-length
   ()
   (+
    ;; float32 _robot_x
    4
    ;; float32 _robot_y
    4
    ;; float32 _robot_theta
    4
    ;; float32 _robot_radio
    4
    ;; float32 _robot_max_advance
    4
    ;; float32 _robot_turn_angle
    4
    ;; int32 _laser_num_sensors
    4
    ;; float32 _laser_origin
    4
    ;; float32 _laser_range
    4
    ;; float32 _laser_value
    4
    ;; string _world_name
    4 (length _world_name)
    ;; bool _noise
    1
    ;; bool _run
    1
    ;; float32 _light_x
    4
    ;; float32 _light_y
    4
    ;; int32 _behavior
    4
    ;; int32 _steps
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
     ;; float32 _robot_radio
       (sys::poke _robot_radio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _robot_max_advance
       (sys::poke _robot_max_advance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _robot_turn_angle
       (sys::poke _robot_turn_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _laser_num_sensors
       (write-long _laser_num_sensors s)
     ;; float32 _laser_origin
       (sys::poke _laser_origin (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _laser_range
       (sys::poke _laser_range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _laser_value
       (sys::poke _laser_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _world_name
       (write-long (length _world_name) s) (princ _world_name s)
     ;; bool _noise
       (if _noise (write-byte -1 s) (write-byte 0 s))
     ;; bool _run
       (if _run (write-byte -1 s) (write-byte 0 s))
     ;; float32 _light_x
       (sys::poke _light_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _light_y
       (sys::poke _light_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _behavior
       (write-long _behavior s)
     ;; int32 _steps
       (write-long _steps s)
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
   ;; float32 _robot_radio
     (setq _robot_radio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _robot_max_advance
     (setq _robot_max_advance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _robot_turn_angle
     (setq _robot_turn_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _laser_num_sensors
     (setq _laser_num_sensors (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _laser_origin
     (setq _laser_origin (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _laser_range
     (setq _laser_range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _laser_value
     (setq _laser_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _world_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _world_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _noise
     (setq _noise (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _run
     (setq _run (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _light_x
     (setq _light_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _light_y
     (setq _light_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _behavior
     (setq _behavior (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _steps
     (setq _steps (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass simulator::simulator_parameters
  :super ros::object
  :slots ())

(setf (get simulator::simulator_parameters :md5sum-) "666381c29fe97dd3096923cea005a173")
(setf (get simulator::simulator_parameters :datatype-) "simulator/simulator_parameters")
(setf (get simulator::simulator_parameters :request) simulator::simulator_parametersRequest)
(setf (get simulator::simulator_parameters :response) simulator::simulator_parametersResponse)

(defmethod simulator::simulator_parametersRequest
  (:response () (instance simulator::simulator_parametersResponse :init)))

(setf (get simulator::simulator_parametersRequest :md5sum-) "666381c29fe97dd3096923cea005a173")
(setf (get simulator::simulator_parametersRequest :datatype-) "simulator/simulator_parametersRequest")
(setf (get simulator::simulator_parametersRequest :definition-)
      "bool request
---
float32 robot_x
float32 robot_y
float32 robot_theta
float32 robot_radio
float32 robot_max_advance
float32 robot_turn_angle
int32 laser_num_sensors
float32 laser_origin
float32 laser_range
float32 laser_value
string world_name
bool noise
bool run
float32 light_x
float32 light_y
int32 behavior
int32 steps

")

(setf (get simulator::simulator_parametersResponse :md5sum-) "666381c29fe97dd3096923cea005a173")
(setf (get simulator::simulator_parametersResponse :datatype-) "simulator/simulator_parametersResponse")
(setf (get simulator::simulator_parametersResponse :definition-)
      "bool request
---
float32 robot_x
float32 robot_y
float32 robot_theta
float32 robot_radio
float32 robot_max_advance
float32 robot_turn_angle
int32 laser_num_sensors
float32 laser_origin
float32 laser_range
float32 laser_value
string world_name
bool noise
bool run
float32 light_x
float32 light_y
int32 behavior
int32 steps

")



(provide :simulator/simulator_parameters "666381c29fe97dd3096923cea005a173")


