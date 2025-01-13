# A named spawn pose

string pose_name                          # Name of a spawn pose. It does not need to be unique.
string pose_description                 # Description for the user, e.g. "near the charging station".
geometry_msgs/Pose pose                   # Spawn pose, which can be used with SpawnEntity.srv.

SpawnableBounds spawn_bounds              # Optional spawn area bounds.
