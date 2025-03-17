# Features supported by the simulator.

uint8 SPAWNING                  = 0      # Supports spawn interface (SpawnEntity).
uint8 DELETING                  = 1      # Supports deleting entities (DeleteEntity).
uint8 NAMED_POSES               = 2      # Supports predefined named poses (GetNamedPoses).
uint8 POSE_BOUNDS               = 3      # Supports pose bounds (GetNamedPoseBounds).
uint8 ENTITY_TAGS               = 4      # Supports entity tags in interfaces using EntityFilters, such as GetEntities.
uint8 ENTITY_BOUNDS             = 5      # Supports entity bounds (GetEntityBounds).
uint8 ENTITY_BOUNDS_CONVEX      = 6      # Supports entity filtering with Bounds TYPE_CONVEX_HULL.
uint8 SPAWNING_RESOURCE_STRING  = 7      # Supports SpawnEntity resource_string field.

uint8 ENTITY_STATE_LISTING      = 10      # Supports GetEntityState interface.
uint8 ENTITY_STATE_SETTING      = 11      # Supports SetEntityState interface.
uint8 ENTITY_INFO_SETTING       = 12      # Supports SetEntityInfo interface.

uint8 SIMULATION_RESET          = 20      # Supports one or more ways to reset the simulation through ResetSimulation.
uint8 SIMULATION_RESET_TIME     = 21      # Supports TIME flag for resetting.
uint8 SIMULATION_RESET_STATE    = 22      # Supports STATE flag for resetting.
uint8 SIMULATION_RESET_SPAWNED  = 23      # Supports SPAWNED flag for resetting.

uint8 SIMULATION_PAUSE          = 30     # Supports the PAUSED SimulationState in SetSimulationState interface.
uint8 STEP_SIMULATION_SINGLE    = 31     # Supports single stepping through simulation with StepSimulation interface.
uint8 STEP_SIMULATION_MULTIPLE  = 32     # Supports multi-stepping through simulation, either through StepSimulation.
                                         # service or through SimulateSteps action.
uint8 STEP_SIMULATION_ACTION    = 33     # Supports SimulateSteps action interface.


uint16[] features                        # A list of simulation features as specified by the list above.

# A list of additional supported formats for spawning, which might be empty. Values may include
#  * sdf (SDFormat)
#  * urdf (Unified Robot Description Format)
#  * usd (Universal Scene Description)
#  * mjcf (MuJoCo's XML format)
# or whatever simulator-native formats that are supported. 
string[] spawn_formats
string custom_info                       # Optional: extra information for the caller, which could point to
                                         # documentation, version compatibility and other useful meta information.
