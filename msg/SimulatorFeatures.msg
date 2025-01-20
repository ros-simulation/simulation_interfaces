# Features supported by the simulator.

uint8 SPAWNING                  = 0      # Supports spawn interface (SpawnEntity).
uint8 DELETING                  = 1      # Supports deleting entities (DeleteEntity).
uint8 SPAWN_POSES               = 2      # Supports predefined spawn poses (GetSpawnPoses).
uint8 SPAWN_BOUNDS              = 3      # Supports spawn bounds (SpawnableBounds).

uint8 ENTITY_STATE_LISTING      = 4      # Supports GetEntityState interface.
uint8 ENTITY_STATE_SETTING      = 5      # Supports SetEntityState interface.

uint8 SIMULATION_RESET          = 6      # Supports one or more ways to reset the simulation through ResetSimulation.
uint8 SIMULATION_RESET_TIME     = 7      # Supports TIME flag for resetting.
uint8 SIMULATION_RESET_OBJECTS  = 8      # Supports OBJECTS flag for resetting.
uint8 SIMULATION_RESET_SPAWNED  = 9      # Supports SPAWNED flag for resetting.

uint8 SIMULATION_PAUSE          = 10     # Supports SetSimulationPaused interface
uint8 STEP_SIMULATION_SINGLE    = 11     # Supports single stepping through simulation with StepSimulation interface.
uint8 STEP_SIMULATION_MULTIPLE  = 12     # Supports multi-stepping through simulation, either through StepSimulation.
                                         # service or through MultiStepSimulation action.
uint8 STEP_SIMULATION_ACTION    = 13     # Supports MultiStepSimulation action interface.


uint8[] features                 # A list of simulation features as specified by the list above.

# A list of additional supported formats for spawning, which might be empty.
# Values may include
#  * sdf (SDFormat)
#  * urdf (Unified Robot Description Format)
#  * usd (Universal Scene Description)
# or whatever simulator-native formats that are supported. 
string[] spawn_formats
string custom_info               # Optional: additional information for the caller, which could point to documentation,
                                 # version compatibility and other useful meta information.
