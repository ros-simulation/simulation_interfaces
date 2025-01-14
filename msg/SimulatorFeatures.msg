# Features supported by the simulator.

uint8 SPAWNING                  = 0      # Supports spawn interface (SpawnEntity).
uint8 DELETING                  = 1      # Supports deleting entities (DeleteEntity).
uint8 SPAWN_POSES               = 2      # Supports predefined spawn poses (GetSpawnPoses).
uint8 SPAWN_BOUNDS              = 3      # Supports spawn bounds (SpawnableBounds).
uint8 SPAWN_FORMAT_SDF          = 4      # Supports spawning from SDFormat specified in the uri field of SpawnEntity.
uint8 SPAWN_FORMAT_URDF         = 5      # Supports spawning from Unified Robot Description Format.
uint8 SPAWN_FORMAT_USD          = 6      # Supports spawning from Universal Scene Description format.
uint8 SPAWN_FORMAT_NATIVE       = 7      # Supports spawning from prefab / other simulator native format.

uint8 ENTITY_STATE_LISTING      = 8      # Supports GetEntityState interface.
uint8 ENTITY_STATE_SETTING      = 9      # Supports SetEntityState interface.

uint8 SIMULATION_RESET          = 10     # Supports one or more ways to reset the simulation through ResetSimulation.
uint8 SIMULATION_RESET_TIME     = 11     # Supports TIME flag for resetting.
uint8 SIMULATION_RESET_OBJECTS  = 12     # Supports OBJECTS flag for resetting.
uint8 SIMULATION_RESET_SPAWNED  = 13     # Supports SPAWNED flag for resetting.

uint8 SIMULATION_PAUSE          = 14     # Supports SetSimulationPaused interface
uint8 STEP_SIMULATION_SINGLE    = 15     # Supports single stepping through simulation with StepSimulation interface.
uint8 STEP_SIMULATION_MULTIPLE  = 16     # Supports multi-stepping through simulation, either through StepSimulation.
                                         # service or through MultiStepSimulation action.
uint8 STEP_SIMULATION_ACTION    = 17     # Supports MultiStepSimulation action interface.


uint8[] features                 # A list of simulation features as specified by the list above.
string[] custom_spawn_formats    # A list of additional supported formats for spawning, which might be empty.
string custom_info               # Optional: additional information for the caller, which could point to documentation,
                                 # version compatibility and other useful meta information.
