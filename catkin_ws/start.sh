#!/bin/bash
KDBPATH='src/simulator/src/action_planner/ViRBot_Cubes_ROS'
#Script to start the ros simulations
# xterm -hold -e ". devel/setup.bash && roscore" &
#xterm -hold -e ". devel/setup.bash && roscd simulator/src/gui/ && python simulator_node.py" &
#sleep 3
#xterm -hold -e ". devel/setup.bash  && rosrun simulator light_node" &
#xterm -hold -e ". devel/setup.bash  && rosrun simulator laser_node" &
#xterm -hold -e ". devel/setup.bash  && rosrun simulator base_node" &
xterm -hold -e ". devel/setup.bash  && rosrun simulator clipscontrol" &
xterm -fa "Ubuntu Mono:size=12" -fg green -bg black -hold -e ". devel/setup.bash  && rosrun simulator rosclips -d ${KDBPATH}" &
#xterm -hold -e ". devel/setup.bash  && rosrun simulator find_obj_node" &
#xterm -hold -e ". devel/setup.bash  && rosrun simulator manipulator_node" &
#xterm -hold -e ". devel/setup.bash  && rosrun simulator objs_viz_node" &
#sleep 3
#xterm -hold -e ". devel/setup.bash && rosrun simulator motion_planner_node" &
xterm -fa "Ubuntu Mono:size=12" -fg green -bg black -hold -e ". devel/setup.bash && rosrun simulator action_planner_node" &
xterm  -fa "Ubuntu Mono:size=14" -fg green -bg black -hold -e ". devel/setup.bash && rosrun simulator natural_language_node" &
# xterm -fa "Ubuntu Mono:size=14" -fg green -bg black -hold -e ". devel/setup.bash && roscd simulator/src/speech_generation/ && rosrun simulator speech_generation_node" 
#xterm -hold -e ". devel/setup.bash && rosrun simulator move_turtlebot_node"
