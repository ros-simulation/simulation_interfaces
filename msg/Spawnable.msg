# Robot or other object which can be spawned in simulation runtime.

string uri                                # Resource such as SDFormat, URDF, USD or MJCF file, a native prefab, etc.
                                          # Valid URIs can be determined by calling GetSpawnables first, and you can check
                                          # the simulator format support by reading SimulatorFeatures spawn_formats field.

string description                        # Optional description for the user, e.g. "robot X with sensors A,B,C".

Bounds spawn_bounds                       # Optional spawn area bounds which fully encompass this object.
