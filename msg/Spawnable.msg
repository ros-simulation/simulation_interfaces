# Robot or other object which can be spawned in simulation runtime.

string uri                                # URI which will be accepted by SpawnEntity service.
string description                        # Optional: description for the user, e.g. "robot X with sensors A,B,C".
geometry_msgs/Polygon bounds              # Optional: shape bounding the entity, e.g. to determine valid spawn poses.
