# A named spawn pose (point)

string point_name                         # Name of a spawn point. It does not need to be unique.
string point_description                  # Description for the user, e.g. "near the charging station".
geometry_msgs/Pose spawn_pose             # Spawn point pose, which can be used with SpawnEntity.srv.

SpawnableBounds spawn_bounds              # Optional spawn area bounds.