cmake_minimum_required(VERSION 3.5)
project(fsae_msgs)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/Cone.msg"
  "msg/Path.msg"
  "msg/ConeArray.msg"
  "msg/ConeStamped.msg"
  "msg/PathLimits.msg"
  "msg/Raceline.msg"
  "msg/RacelineStamped.msg"
  "msg/LapPerformance.msg"
  "msg/LapPerformanceStamped.msg"
  "msg/PIDControlOutput.msg"
  DEPENDENCIES std_msgs geometry_msgs                      # Add packages that above messages depend on
)

ament_package()
