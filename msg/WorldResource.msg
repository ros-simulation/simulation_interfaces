# World is a virtual environment in which the simulation happens.
# Worlds are also known as scenes or levels in some simulators.
# Depending on the world format, loading of a world might be associated with changes
# in certain parameters, including physics settings such as gravity.
# World resources may be defined in standard or simulation-specific formats,
# and, depending on the simulator, loaded from local or remote repositories.


string name                               # World name, which is not necessarily unique.

Resource world_resource                   # The resource for the world to be loaded.

string description                        # Optional custom description of the world

string[] tags                             # Optional tags describing the world (e.g., "indoor", "outdoor", "warehouse")
