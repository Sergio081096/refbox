# Install script for directory: /home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/sergio/LogisticsPlanner/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulator/msg" TYPE FILE FILES
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlanner.msg"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerFindObject.msg"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/ActionPlannerManipulator.msg"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/CFRParams.msg"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/FindObject.msg"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Laser_values.msg"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/MotionPlanner.msg"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/NaturalLanguage.msg"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/Parameters.msg"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCFR.msg"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdClips.msg"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PlanningCmdSend.msg"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/PosesArray.msg"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RecognizedSpeech.msg"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/RepeatedSentence.msg"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SinglePlan.msg"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/SpeechGeneration.msg"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/msg/poseCustom.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulator/srv" TYPE FILE FILES
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ClearKDB.srv"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/InitKDB.srv"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/QueryKDB.srv"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/ResetKDB.srv"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/planning_cmd.srv"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_MoveRealRobot.srv"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_action_planner.srv"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_algorithm_result.srv"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_base.srv"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_find_obj.srv"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_laser.srv"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_light.srv"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_manipulator.srv"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_object_interaction.srv"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_parameters.srv"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_laser_values.srv"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_robot_step.srv"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_set_light_position.srv"
    "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/srv/simulator_stop.srv"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulator/cmake" TYPE FILE FILES "/home/sergio/LogisticsPlanner/catkin_ws/build/RefBoxComm/simulator/catkin_generated/installspace/simulator-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/sergio/LogisticsPlanner/catkin_ws/devel/include/simulator")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/sergio/LogisticsPlanner/catkin_ws/devel/share/roseus/ros/simulator")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/sergio/LogisticsPlanner/catkin_ws/devel/share/common-lisp/ros/simulator")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/sergio/LogisticsPlanner/catkin_ws/devel/share/gennodejs/ros/simulator")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/sergio/LogisticsPlanner/catkin_ws/devel/lib/python3/dist-packages/simulator")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/sergio/LogisticsPlanner/catkin_ws/devel/lib/python3/dist-packages/simulator")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/sergio/LogisticsPlanner/catkin_ws/build/RefBoxComm/simulator/catkin_generated/installspace/simulator.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulator/cmake" TYPE FILE FILES "/home/sergio/LogisticsPlanner/catkin_ws/build/RefBoxComm/simulator/catkin_generated/installspace/simulator-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulator/cmake" TYPE FILE FILES
    "/home/sergio/LogisticsPlanner/catkin_ws/build/RefBoxComm/simulator/catkin_generated/installspace/simulatorConfig.cmake"
    "/home/sergio/LogisticsPlanner/catkin_ws/build/RefBoxComm/simulator/catkin_generated/installspace/simulatorConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulator" TYPE FILE FILES "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/simulator/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/simulator" TYPE PROGRAM FILES "/home/sergio/LogisticsPlanner/catkin_ws/build/RefBoxComm/simulator/catkin_generated/installspace/simulator_node.py")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/sergio/LogisticsPlanner/catkin_ws/build/RefBoxComm/simulator/src/clips60/cmake_install.cmake")
  include("/home/sergio/LogisticsPlanner/catkin_ws/build/RefBoxComm/simulator/src/bridge/cmake_install.cmake")
  include("/home/sergio/LogisticsPlanner/catkin_ws/build/RefBoxComm/simulator/src/rosclips/cmake_install.cmake")
  include("/home/sergio/LogisticsPlanner/catkin_ws/build/RefBoxComm/simulator/src/clipscontrol/cmake_install.cmake")

endif()

