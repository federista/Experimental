# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "experimental_ass: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iexperimental_ass:/home/zaid/catkin_ws/src/experimental_ass/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(experimental_ass_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zaid/catkin_ws/src/experimental_ass/msg/string_message.msg" NAME_WE)
add_custom_target(_experimental_ass_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "experimental_ass" "/home/zaid/catkin_ws/src/experimental_ass/msg/string_message.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(experimental_ass
  "/home/zaid/catkin_ws/src/experimental_ass/msg/string_message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/experimental_ass
)

### Generating Services

### Generating Module File
_generate_module_cpp(experimental_ass
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/experimental_ass
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(experimental_ass_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(experimental_ass_generate_messages experimental_ass_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zaid/catkin_ws/src/experimental_ass/msg/string_message.msg" NAME_WE)
add_dependencies(experimental_ass_generate_messages_cpp _experimental_ass_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(experimental_ass_gencpp)
add_dependencies(experimental_ass_gencpp experimental_ass_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS experimental_ass_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(experimental_ass
  "/home/zaid/catkin_ws/src/experimental_ass/msg/string_message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/experimental_ass
)

### Generating Services

### Generating Module File
_generate_module_eus(experimental_ass
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/experimental_ass
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(experimental_ass_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(experimental_ass_generate_messages experimental_ass_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zaid/catkin_ws/src/experimental_ass/msg/string_message.msg" NAME_WE)
add_dependencies(experimental_ass_generate_messages_eus _experimental_ass_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(experimental_ass_geneus)
add_dependencies(experimental_ass_geneus experimental_ass_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS experimental_ass_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(experimental_ass
  "/home/zaid/catkin_ws/src/experimental_ass/msg/string_message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/experimental_ass
)

### Generating Services

### Generating Module File
_generate_module_lisp(experimental_ass
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/experimental_ass
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(experimental_ass_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(experimental_ass_generate_messages experimental_ass_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zaid/catkin_ws/src/experimental_ass/msg/string_message.msg" NAME_WE)
add_dependencies(experimental_ass_generate_messages_lisp _experimental_ass_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(experimental_ass_genlisp)
add_dependencies(experimental_ass_genlisp experimental_ass_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS experimental_ass_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(experimental_ass
  "/home/zaid/catkin_ws/src/experimental_ass/msg/string_message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/experimental_ass
)

### Generating Services

### Generating Module File
_generate_module_nodejs(experimental_ass
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/experimental_ass
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(experimental_ass_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(experimental_ass_generate_messages experimental_ass_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zaid/catkin_ws/src/experimental_ass/msg/string_message.msg" NAME_WE)
add_dependencies(experimental_ass_generate_messages_nodejs _experimental_ass_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(experimental_ass_gennodejs)
add_dependencies(experimental_ass_gennodejs experimental_ass_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS experimental_ass_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(experimental_ass
  "/home/zaid/catkin_ws/src/experimental_ass/msg/string_message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/experimental_ass
)

### Generating Services

### Generating Module File
_generate_module_py(experimental_ass
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/experimental_ass
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(experimental_ass_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(experimental_ass_generate_messages experimental_ass_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zaid/catkin_ws/src/experimental_ass/msg/string_message.msg" NAME_WE)
add_dependencies(experimental_ass_generate_messages_py _experimental_ass_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(experimental_ass_genpy)
add_dependencies(experimental_ass_genpy experimental_ass_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS experimental_ass_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/experimental_ass)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/experimental_ass
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(experimental_ass_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/experimental_ass)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/experimental_ass
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(experimental_ass_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/experimental_ass)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/experimental_ass
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(experimental_ass_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/experimental_ass)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/experimental_ass
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(experimental_ass_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/experimental_ass)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/experimental_ass\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/experimental_ass
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(experimental_ass_generate_messages_py std_msgs_generate_messages_py)
endif()
