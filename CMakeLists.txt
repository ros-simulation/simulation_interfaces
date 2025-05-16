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
find_package(action_msgs REQUIRED)

set(msg_files
    "msg/Bounds.msg"
    "msg/EntityCategory.msg"
    "msg/EntityFilters.msg"
    "msg/EntityInfo.msg"
    "msg/EntityState.msg"
    "msg/NamedPose.msg"
    "msg/Result.msg"
    "msg/SimulationState.msg"
    "msg/SimulatorFeatures.msg"
    "msg/Spawnable.msg"
    "msg/TagsFilter.msg"
)

set(srv_files
    "srv/DeleteEntity.srv"
    "srv/GetEntities.srv"
    "srv/GetEntitiesStates.srv"
    "srv/GetEntityBounds.srv"
    "srv/GetEntityInfo.srv"
    "srv/GetEntityState.srv"
    "srv/GetNamedPoseBounds.srv"
    "srv/GetNamedPoses.srv"
    "srv/GetSimulationState.srv"
    "srv/GetSimulatorFeatures.srv"
    "srv/GetSpawnables.srv"
    "srv/ResetSimulation.srv"
    "srv/SetEntityInfo.srv"
    "srv/SetEntityState.srv"
    "srv/SetSimulationState.srv"
    "srv/SpawnEntity.srv"
    "srv/StepSimulation.srv"
)

set(action_files
    "action/SimulateSteps.action"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${srv_files}
  ${action_files}
  DEPENDENCIES builtin_interfaces std_msgs geometry_msgs action_msgs
  ADD_LINTER_TESTS
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
