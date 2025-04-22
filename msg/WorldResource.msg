# World is a virtual environment in which the simulation happens.
# Worlds are also known as scenes or levels in some simulators.
# Depending on the world format, loading of a world might be associated with changes
# in certain parameters, including physics settings such as gravity.
# World resources may be defined in standard or simulation-specific formats,
# and, depending on the simulator, loaded from local or remote repositories. 

# World name, which is not necessarily unique.
string name

# URI which will be accepted by LoadWorld service, unique per world.
string uri

# Optional description of the world
string description

# Optional tags describing the world (e.g., "indoor", "outdoor", "warehouse")
string[] tags
