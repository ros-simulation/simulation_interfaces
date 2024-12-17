# A named spawn pose (point)

string point_name                         # Name of a spawn point.
string point_description                  # Description for the user, e.g. "near the charging station".
geometry_msgs/Pose spawn_pose             # Spawn point pose, which can be used with SpawnEntity.srv.
geometry_msgs/Polygon bounds              # Optional: limits of spawning area around pose, e.g. ground level.
