# Simulation states used in SetSimulationState and returned in GetSimulationState

uint8 STATE_STOPPED      = 0           # Simulation is stopped, which is equivalent to pausing and resetting with ALL.
                                       # This is typically the default state when simulator is launched.
                                       # Stopped simulation can be played. It can also be paused, which means
                                       # starting simulation in a paused state immediately,
                                       # without any time steps for physics or simulated clock ticks.
uint8 STATE_PLAYING      = 1           # Simulation is playing, can be either paused or stopped.
uint8 STATE_PAUSED       = 2           # Simulation is paused, can be either stopped (which will reset it) or played.
uint8 STATE_QUITTING     = 3           # Closing the simulator application. Switching from STATE_PLAYING or STATE_PAUSED
                                       # states is expected to stop the simulation first, and then exit.
                                       # Simulation interfaces will become unavailable after quitting.
                                       # Running simulation application is outside of the simulation interfaces as
                                       # there is no service to handle the call when the simulator is not up.

uint8 state
