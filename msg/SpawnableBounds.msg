# Bounds for spawning an entity, e.g. to avoid spawning with other object overlap.
# Spawn pose might be valid for a small object, but not suitable for a large one, or a differently shaped one.
# These limits are relative to spawn pose or entity's top link transform, following ROS rep-103 conventions.

geometry_msgs/Vector3 bounding_box        # Optional: limits specified as a non-aa box with spawn_pose in the middle.