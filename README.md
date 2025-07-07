cd refbox/catkin_ws/

source devel/setup.bash

rosrun simulator rosclips

rosrun simulator action_planner_node

rosrun simulator natural_language_node


# Para simular mensajes del Refbox 

rosrun refbox_comm fake_refbox_node 

# Publicar 0 para ejecutar 

rostopic pub /send_plan_msg std_msgs/String "data: '0'"


# Para recibir el plan y enviar datos al robot

rosrun refbox_comm main_to_robots_comm_node
