# A named pose defined in the simulation for certain purposes such as spawning.

string name                               # Unique name.
string description                        # Description for the user, e.g. "near the charging station".
string[] tags                             # Optional tags which can be used to determine the named pose
                                          # purpose, for example: "spawn", "parking", "navigation_goal",
                                          # as well as fitting entity types e.g. "drone", "turtlebot3".
geometry_msgs/Pose pose                   # Pose relative to world, which can be used with SpawnEntity.srv.
