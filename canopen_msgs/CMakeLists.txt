cmake_minimum_required(VERSION 3.5)

project(canopen_msgs)

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()
if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)

set(msg_files
  "msg/DeviceInputs.msg"
  "msg/DeviceOutputs.msg"
  "msg/ObjectDictionary.msg"
  "msg/ObjectDescription.msg"
)

set(srv_files
  "srv/GetObject.srv"
  "srv/SetDigitalOutput.srv"
  "srv/SetObject.srv"
  "srv/ListObjectDictionaries.srv"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${srv_files}
  ADD_LINTER_TESTS
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
