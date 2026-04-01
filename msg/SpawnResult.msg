# Result of spawning.
uint8 NAME_NOT_UNIQUE       = 101       # Given name is already taken by entity and allow_renaming is false.
uint8 NAME_INVALID          = 102       # Given name is invalid in the simulator (e.g. does not meet naming
                                        # requirements such as allowed characters). This is also returned if name is
                                        # empty and allow_renaming is false.
uint8 UNSUPPORTED_FORMAT    = 103       # Format for uri or resource string is unsupported. Check supported formats
                                        # through GetSimulatorFeatures service, in spawn_formats field.
uint8 NO_RESOURCE           = 104       # Both uri and resource string are empty.
uint8 NAMESPACE_INVALID     = 105       # Namespace does not meet namespace naming standards.
uint8 RESOURCE_PARSE_ERROR  = 106       # Resource file or string failed to parse.
uint8 MISSING_ASSETS        = 107       # At least one of resource assets (such as meshes) was not found.
uint8 UNSUPPORTED_ASSETS    = 108       # At least one of resource assets (such as meshes) is not supported.
uint8 INVALID_POSE          = 109       # initial_pose is invalid, such as when the quaternion is invalid or position
                                        # exceeds simulator world bounds.

Result result
string entity_name                      # Spawned entity full name, guaranteed to be unique in the simulation.
                                        # If allow_renaming is true, it may differ from the request name field.