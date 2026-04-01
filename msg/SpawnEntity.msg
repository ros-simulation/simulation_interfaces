# Information about spawning an individual entity.

string name                             # A name to give to the spawned entity.
                                        # If empty, the name field in the URI file or resource_string will be used,
                                        # if supported and not empty (e.g. "name" field in SDFormat, URDF).
                                        # If the name is still empty or not unique (as determined by the simulator),
                                        # the service returns a generated name in the entity_name response field if the
                                        # allow_renaming field is set to true. Otherwise, the service call fails and an
                                        # error is returned.
bool allow_renaming                     # Determines whether the spawning succeeds with a non-unique name.
                                        # If it is set to true, the user should always check entity_name response field
                                        # and use it for any further interactions.

Resource entity_resource                # Resource such as SDFormat, URDF, USD or MJCF file, a native prefab, etc.
                                        # Valid URIs can be determined by calling GetSpawnables first. 
                                        # Check simulator format support via the spawn_formats field in GetSimulatorFeatures.
                                        # Using resource_string is supported if GetSimulatorFeatures includes
                                        # the SPAWNING_RESOURCE_STRING feature.

string entity_namespace                 # Spawn the entity with all its interfaces under this namespace.
geometry_msgs/PoseStamped initial_pose  # Initial entity pose.
                                        # The header contains a reference frame, which defaults to global "world" frame.
                                        # This frame must be known to the simulator, e.g. of an object spawned earlier.
                                        # The timestamp field in the header is ignored.
