# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "simulator: 18 messages, 19 services")

set(MSG_I_FLAGS "-Isimulator:/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(simulator_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlanner.msg" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlanner.msg" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerFindObject.msg" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerFindObject.msg" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerManipulator.msg" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerManipulator.msg" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/CFRParams.msg" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/CFRParams.msg" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/FindObject.msg" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/FindObject.msg" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Laser_values.msg" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Laser_values.msg" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/MotionPlanner.msg" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/MotionPlanner.msg" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/NaturalLanguage.msg" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/NaturalLanguage.msg" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Parameters.msg" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Parameters.msg" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCFR.msg" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCFR.msg" "simulator/CFRParams"
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdClips.msg" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdClips.msg" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdSend.msg" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdSend.msg" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PosesArray.msg" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PosesArray.msg" "simulator/poseCustom"
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RecognizedSpeech.msg" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RecognizedSpeech.msg" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RepeatedSentence.msg" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RepeatedSentence.msg" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SinglePlan.msg" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SinglePlan.msg" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SpeechGeneration.msg" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SpeechGeneration.msg" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/poseCustom.msg" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/poseCustom.msg" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ClearKDB.srv" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ClearKDB.srv" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/InitKDB.srv" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/InitKDB.srv" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/QueryKDB.srv" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/QueryKDB.srv" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ResetKDB.srv" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ResetKDB.srv" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/planning_cmd.srv" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/planning_cmd.srv" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_MoveRealRobot.srv" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_MoveRealRobot.srv" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_action_planner.srv" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_action_planner.srv" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_algorithm_result.srv" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_algorithm_result.srv" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_base.srv" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_base.srv" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_find_obj.srv" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_find_obj.srv" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_laser.srv" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_laser.srv" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_light.srv" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_light.srv" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_manipulator.srv" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_manipulator.srv" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_object_interaction.srv" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_object_interaction.srv" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_parameters.srv" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_parameters.srv" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_laser_values.srv" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_laser_values.srv" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_step.srv" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_step.srv" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_set_light_position.srv" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_set_light_position.srv" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_stop.srv" NAME_WE)
add_custom_target(_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulator" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_stop.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlanner.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_msg_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerFindObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_msg_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerManipulator.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_msg_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/CFRParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_msg_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/FindObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_msg_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Laser_values.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_msg_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/MotionPlanner.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_msg_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/NaturalLanguage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_msg_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Parameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_msg_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCFR.msg"
  "${MSG_I_FLAGS}"
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/CFRParams.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_msg_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdClips.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_msg_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdSend.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_msg_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PosesArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/poseCustom.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_msg_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RecognizedSpeech.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_msg_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RepeatedSentence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_msg_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SinglePlan.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_msg_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SpeechGeneration.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_msg_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/poseCustom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)

### Generating Services
_generate_srv_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ClearKDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_srv_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/InitKDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_srv_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/QueryKDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_srv_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ResetKDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_srv_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/planning_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_srv_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_MoveRealRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_srv_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_action_planner.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_srv_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_algorithm_result.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_srv_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_base.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_srv_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_find_obj.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_srv_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_laser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_srv_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_light.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_srv_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_manipulator.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_srv_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_object_interaction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_srv_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_parameters.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_srv_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_laser_values.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_srv_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_step.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_srv_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_set_light_position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)
_generate_srv_cpp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
)

### Generating Module File
_generate_module_cpp(simulator
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(simulator_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(simulator_generate_messages simulator_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlanner.msg" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerFindObject.msg" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerManipulator.msg" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/CFRParams.msg" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/FindObject.msg" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Laser_values.msg" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/MotionPlanner.msg" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/NaturalLanguage.msg" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Parameters.msg" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCFR.msg" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdClips.msg" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdSend.msg" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PosesArray.msg" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RecognizedSpeech.msg" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RepeatedSentence.msg" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SinglePlan.msg" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SpeechGeneration.msg" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/poseCustom.msg" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ClearKDB.srv" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/InitKDB.srv" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/QueryKDB.srv" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ResetKDB.srv" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/planning_cmd.srv" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_MoveRealRobot.srv" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_action_planner.srv" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_algorithm_result.srv" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_base.srv" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_find_obj.srv" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_laser.srv" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_light.srv" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_manipulator.srv" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_object_interaction.srv" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_parameters.srv" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_laser_values.srv" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_step.srv" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_set_light_position.srv" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_stop.srv" NAME_WE)
add_dependencies(simulator_generate_messages_cpp _simulator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulator_gencpp)
add_dependencies(simulator_gencpp simulator_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulator_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlanner.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_msg_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerFindObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_msg_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerManipulator.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_msg_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/CFRParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_msg_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/FindObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_msg_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Laser_values.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_msg_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/MotionPlanner.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_msg_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/NaturalLanguage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_msg_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Parameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_msg_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCFR.msg"
  "${MSG_I_FLAGS}"
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/CFRParams.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_msg_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdClips.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_msg_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdSend.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_msg_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PosesArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/poseCustom.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_msg_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RecognizedSpeech.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_msg_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RepeatedSentence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_msg_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SinglePlan.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_msg_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SpeechGeneration.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_msg_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/poseCustom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)

### Generating Services
_generate_srv_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ClearKDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_srv_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/InitKDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_srv_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/QueryKDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_srv_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ResetKDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_srv_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/planning_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_srv_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_MoveRealRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_srv_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_action_planner.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_srv_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_algorithm_result.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_srv_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_base.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_srv_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_find_obj.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_srv_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_laser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_srv_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_light.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_srv_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_manipulator.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_srv_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_object_interaction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_srv_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_parameters.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_srv_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_laser_values.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_srv_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_step.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_srv_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_set_light_position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)
_generate_srv_eus(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
)

### Generating Module File
_generate_module_eus(simulator
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(simulator_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(simulator_generate_messages simulator_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlanner.msg" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerFindObject.msg" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerManipulator.msg" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/CFRParams.msg" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/FindObject.msg" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Laser_values.msg" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/MotionPlanner.msg" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/NaturalLanguage.msg" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Parameters.msg" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCFR.msg" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdClips.msg" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdSend.msg" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PosesArray.msg" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RecognizedSpeech.msg" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RepeatedSentence.msg" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SinglePlan.msg" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SpeechGeneration.msg" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/poseCustom.msg" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ClearKDB.srv" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/InitKDB.srv" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/QueryKDB.srv" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ResetKDB.srv" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/planning_cmd.srv" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_MoveRealRobot.srv" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_action_planner.srv" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_algorithm_result.srv" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_base.srv" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_find_obj.srv" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_laser.srv" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_light.srv" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_manipulator.srv" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_object_interaction.srv" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_parameters.srv" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_laser_values.srv" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_step.srv" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_set_light_position.srv" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_stop.srv" NAME_WE)
add_dependencies(simulator_generate_messages_eus _simulator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulator_geneus)
add_dependencies(simulator_geneus simulator_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulator_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlanner.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_msg_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerFindObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_msg_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerManipulator.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_msg_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/CFRParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_msg_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/FindObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_msg_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Laser_values.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_msg_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/MotionPlanner.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_msg_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/NaturalLanguage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_msg_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Parameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_msg_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCFR.msg"
  "${MSG_I_FLAGS}"
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/CFRParams.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_msg_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdClips.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_msg_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdSend.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_msg_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PosesArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/poseCustom.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_msg_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RecognizedSpeech.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_msg_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RepeatedSentence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_msg_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SinglePlan.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_msg_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SpeechGeneration.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_msg_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/poseCustom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)

### Generating Services
_generate_srv_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ClearKDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_srv_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/InitKDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_srv_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/QueryKDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_srv_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ResetKDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_srv_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/planning_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_srv_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_MoveRealRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_srv_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_action_planner.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_srv_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_algorithm_result.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_srv_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_base.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_srv_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_find_obj.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_srv_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_laser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_srv_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_light.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_srv_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_manipulator.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_srv_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_object_interaction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_srv_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_parameters.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_srv_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_laser_values.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_srv_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_step.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_srv_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_set_light_position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)
_generate_srv_lisp(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
)

### Generating Module File
_generate_module_lisp(simulator
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(simulator_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(simulator_generate_messages simulator_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlanner.msg" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerFindObject.msg" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerManipulator.msg" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/CFRParams.msg" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/FindObject.msg" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Laser_values.msg" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/MotionPlanner.msg" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/NaturalLanguage.msg" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Parameters.msg" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCFR.msg" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdClips.msg" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdSend.msg" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PosesArray.msg" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RecognizedSpeech.msg" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RepeatedSentence.msg" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SinglePlan.msg" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SpeechGeneration.msg" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/poseCustom.msg" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ClearKDB.srv" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/InitKDB.srv" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/QueryKDB.srv" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ResetKDB.srv" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/planning_cmd.srv" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_MoveRealRobot.srv" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_action_planner.srv" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_algorithm_result.srv" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_base.srv" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_find_obj.srv" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_laser.srv" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_light.srv" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_manipulator.srv" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_object_interaction.srv" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_parameters.srv" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_laser_values.srv" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_step.srv" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_set_light_position.srv" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_stop.srv" NAME_WE)
add_dependencies(simulator_generate_messages_lisp _simulator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulator_genlisp)
add_dependencies(simulator_genlisp simulator_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulator_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlanner.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_msg_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerFindObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_msg_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerManipulator.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_msg_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/CFRParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_msg_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/FindObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_msg_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Laser_values.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_msg_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/MotionPlanner.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_msg_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/NaturalLanguage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_msg_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Parameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_msg_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCFR.msg"
  "${MSG_I_FLAGS}"
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/CFRParams.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_msg_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdClips.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_msg_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdSend.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_msg_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PosesArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/poseCustom.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_msg_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RecognizedSpeech.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_msg_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RepeatedSentence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_msg_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SinglePlan.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_msg_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SpeechGeneration.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_msg_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/poseCustom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)

### Generating Services
_generate_srv_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ClearKDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_srv_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/InitKDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_srv_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/QueryKDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_srv_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ResetKDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_srv_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/planning_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_srv_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_MoveRealRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_srv_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_action_planner.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_srv_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_algorithm_result.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_srv_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_base.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_srv_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_find_obj.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_srv_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_laser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_srv_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_light.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_srv_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_manipulator.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_srv_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_object_interaction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_srv_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_parameters.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_srv_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_laser_values.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_srv_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_step.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_srv_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_set_light_position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)
_generate_srv_nodejs(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
)

### Generating Module File
_generate_module_nodejs(simulator
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(simulator_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(simulator_generate_messages simulator_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlanner.msg" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerFindObject.msg" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerManipulator.msg" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/CFRParams.msg" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/FindObject.msg" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Laser_values.msg" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/MotionPlanner.msg" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/NaturalLanguage.msg" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Parameters.msg" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCFR.msg" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdClips.msg" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdSend.msg" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PosesArray.msg" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RecognizedSpeech.msg" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RepeatedSentence.msg" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SinglePlan.msg" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SpeechGeneration.msg" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/poseCustom.msg" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ClearKDB.srv" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/InitKDB.srv" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/QueryKDB.srv" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ResetKDB.srv" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/planning_cmd.srv" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_MoveRealRobot.srv" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_action_planner.srv" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_algorithm_result.srv" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_base.srv" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_find_obj.srv" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_laser.srv" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_light.srv" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_manipulator.srv" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_object_interaction.srv" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_parameters.srv" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_laser_values.srv" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_step.srv" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_set_light_position.srv" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_stop.srv" NAME_WE)
add_dependencies(simulator_generate_messages_nodejs _simulator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulator_gennodejs)
add_dependencies(simulator_gennodejs simulator_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulator_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlanner.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_msg_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerFindObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_msg_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerManipulator.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_msg_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/CFRParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_msg_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/FindObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_msg_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Laser_values.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_msg_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/MotionPlanner.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_msg_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/NaturalLanguage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_msg_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Parameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_msg_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCFR.msg"
  "${MSG_I_FLAGS}"
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/CFRParams.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_msg_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdClips.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_msg_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdSend.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_msg_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PosesArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/poseCustom.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_msg_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RecognizedSpeech.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_msg_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RepeatedSentence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_msg_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SinglePlan.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_msg_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SpeechGeneration.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_msg_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/poseCustom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)

### Generating Services
_generate_srv_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ClearKDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_srv_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/InitKDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_srv_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/QueryKDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_srv_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ResetKDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_srv_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/planning_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_srv_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_MoveRealRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_srv_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_action_planner.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_srv_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_algorithm_result.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_srv_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_base.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_srv_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_find_obj.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_srv_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_laser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_srv_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_light.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_srv_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_manipulator.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_srv_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_object_interaction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_srv_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_parameters.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_srv_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_laser_values.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_srv_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_step.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_srv_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_set_light_position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)
_generate_srv_py(simulator
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
)

### Generating Module File
_generate_module_py(simulator
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(simulator_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(simulator_generate_messages simulator_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlanner.msg" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerFindObject.msg" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerManipulator.msg" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/CFRParams.msg" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/FindObject.msg" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Laser_values.msg" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/MotionPlanner.msg" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/NaturalLanguage.msg" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Parameters.msg" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCFR.msg" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdClips.msg" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdSend.msg" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PosesArray.msg" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RecognizedSpeech.msg" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RepeatedSentence.msg" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SinglePlan.msg" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SpeechGeneration.msg" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/poseCustom.msg" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ClearKDB.srv" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/InitKDB.srv" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/QueryKDB.srv" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ResetKDB.srv" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/planning_cmd.srv" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_MoveRealRobot.srv" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_action_planner.srv" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_algorithm_result.srv" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_base.srv" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_find_obj.srv" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_laser.srv" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_light.srv" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_manipulator.srv" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_object_interaction.srv" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_parameters.srv" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_laser_values.srv" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_step.srv" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_set_light_position.srv" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_stop.srv" NAME_WE)
add_dependencies(simulator_generate_messages_py _simulator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulator_genpy)
add_dependencies(simulator_genpy simulator_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulator_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulator
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(simulator_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(simulator_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simulator
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(simulator_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(simulator_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulator
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(simulator_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(simulator_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simulator
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(simulator_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(simulator_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulator
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(simulator_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(simulator_generate_messages_py sensor_msgs_generate_messages_py)
endif()
