# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "refbox_comm: 2 messages, 0 services")

set(MSG_I_FLAGS "-Irefbox_comm:/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(refbox_comm_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxData.msg" NAME_WE)
add_custom_target(_refbox_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "refbox_comm" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxData.msg" ""
)

get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxMsg.msg" NAME_WE)
add_custom_target(_refbox_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "refbox_comm" "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxMsg.msg" "refbox_comm/RefboxData"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(refbox_comm
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/refbox_comm
)
_generate_msg_cpp(refbox_comm
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/refbox_comm
)

### Generating Services

### Generating Module File
_generate_module_cpp(refbox_comm
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/refbox_comm
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(refbox_comm_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(refbox_comm_generate_messages refbox_comm_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxData.msg" NAME_WE)
add_dependencies(refbox_comm_generate_messages_cpp _refbox_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxMsg.msg" NAME_WE)
add_dependencies(refbox_comm_generate_messages_cpp _refbox_comm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(refbox_comm_gencpp)
add_dependencies(refbox_comm_gencpp refbox_comm_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS refbox_comm_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(refbox_comm
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/refbox_comm
)
_generate_msg_eus(refbox_comm
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxData.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/refbox_comm
)

### Generating Services

### Generating Module File
_generate_module_eus(refbox_comm
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/refbox_comm
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(refbox_comm_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(refbox_comm_generate_messages refbox_comm_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxData.msg" NAME_WE)
add_dependencies(refbox_comm_generate_messages_eus _refbox_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxMsg.msg" NAME_WE)
add_dependencies(refbox_comm_generate_messages_eus _refbox_comm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(refbox_comm_geneus)
add_dependencies(refbox_comm_geneus refbox_comm_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS refbox_comm_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(refbox_comm
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/refbox_comm
)
_generate_msg_lisp(refbox_comm
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/refbox_comm
)

### Generating Services

### Generating Module File
_generate_module_lisp(refbox_comm
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/refbox_comm
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(refbox_comm_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(refbox_comm_generate_messages refbox_comm_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxData.msg" NAME_WE)
add_dependencies(refbox_comm_generate_messages_lisp _refbox_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxMsg.msg" NAME_WE)
add_dependencies(refbox_comm_generate_messages_lisp _refbox_comm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(refbox_comm_genlisp)
add_dependencies(refbox_comm_genlisp refbox_comm_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS refbox_comm_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(refbox_comm
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/refbox_comm
)
_generate_msg_nodejs(refbox_comm
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/refbox_comm
)

### Generating Services

### Generating Module File
_generate_module_nodejs(refbox_comm
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/refbox_comm
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(refbox_comm_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(refbox_comm_generate_messages refbox_comm_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxData.msg" NAME_WE)
add_dependencies(refbox_comm_generate_messages_nodejs _refbox_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxMsg.msg" NAME_WE)
add_dependencies(refbox_comm_generate_messages_nodejs _refbox_comm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(refbox_comm_gennodejs)
add_dependencies(refbox_comm_gennodejs refbox_comm_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS refbox_comm_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(refbox_comm
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/refbox_comm
)
_generate_msg_py(refbox_comm
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/refbox_comm
)

### Generating Services

### Generating Module File
_generate_module_py(refbox_comm
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/refbox_comm
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(refbox_comm_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(refbox_comm_generate_messages refbox_comm_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxData.msg" NAME_WE)
add_dependencies(refbox_comm_generate_messages_py _refbox_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sergio/LogisticsPlanner/catkin_ws/src/RefBoxComm/refbox_comm/msg/RefboxMsg.msg" NAME_WE)
add_dependencies(refbox_comm_generate_messages_py _refbox_comm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(refbox_comm_genpy)
add_dependencies(refbox_comm_genpy refbox_comm_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS refbox_comm_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/refbox_comm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/refbox_comm
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(refbox_comm_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/refbox_comm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/refbox_comm
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(refbox_comm_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/refbox_comm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/refbox_comm
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(refbox_comm_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/refbox_comm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/refbox_comm
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(refbox_comm_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/refbox_comm)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/refbox_comm\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/refbox_comm
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(refbox_comm_generate_messages_py std_msgs_generate_messages_py)
endif()
