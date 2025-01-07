# Bounds for spawning an entity, e.g. to avoid spawning with other object overlap.
# Spawn pose might be valid for a small object, but not suitable for a large one, or a differently shaped one.
# These limits are relative to spawn pose or entity's top link transform, following ROS rep-103 conventions.

# By default, both fields are zero vectors which means that spawning is unbounded.
# Otherwise, the fields are expected to form a valid box containing the (0,0,0) point which is the spawn position.
# You should check whether the entity simulation model fits within the bounds before spawning, to avoid overlaps and
# unstable behavior.

geometry_msgs/Vector3 upper_right        # Optional: the upper right corner of the spawn box.
geometry_msgs/Vector3 lower_left         # Optional: the lower left corner of the spawn box.
