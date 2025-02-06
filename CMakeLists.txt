cmake_minimum_required(VERSION 3.16)
project(simulation_interfaces)

if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 17)
  set(CMAKE_CXX_STANDARD_REQUIRED ON)
endif()
if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)

set(msg_files
    "msg/EntityCategories.msg"
    "msg/EntityInfo.msg"
    "msg/EntityState.msg"
    "msg/EntityWithState.msg"
    "msg/NamedPose.msg"
    "msg/PoseBounds.msg"
    "msg/Result.msg"
    "msg/SimulatorFeatures.msg"
    "msg/Spawnable.msg"
    "msg/TagsFilter.msg"
)

set(srv_files
    "srv/DeleteEntity.srv"
    "srv/GetEntities.srv"
    "srv/GetEntityState.srv"
    "srv/GetNamedPoses.srv"
    "srv/GetSimulatorFeatures.srv"
    "srv/GetSpawnables.srv"
    "srv/ResetSimulation.srv"
    "srv/SetEntityState.srv"
    "srv/SetSimulationPaused.srv"
    "srv/SpawnEntity.srv"
    "srv/StepSimulation.srv"
)

set(action_files
    "action/MultiStepSimulation.action"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${srv_files}
  ${action_files}
  DEPENDENCIES builtin_interfaces std_msgs geometry_msgs
  ADD_LINTER_TESTS
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
