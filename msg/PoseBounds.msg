# Bounds for named poses, e.g. to avoid spawning with other object overlap, or parking in a spot that is too small.
# Named pose might be valid for a small object, but not suitable for a large one, or a differently shaped one.
# These limits are relative to named pose or entity's top link transform, following ROS rep-103 conventions.

# By default, both fields are zero vectors which means that pose is unbounded.
# Otherwise, the fields are expected to form a valid box containing the (0,0,0) point which is the position.
# For spawning with a named pose, you should check whether the entity simulation model fits within the bounds
# before calling SpawnEntity, to avoid overlaps and unstable behavior.

geometry_msgs/Vector3 upper_right        # Optional: the upper right corner of the bounds box.
geometry_msgs/Vector3 lower_left         # Optional: the lower left corner of the bounds box.
