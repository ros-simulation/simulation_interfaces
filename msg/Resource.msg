# This message is used to specify a resource, either by a URI or by its string content.

string uri              # If uri field is empty, resource_string must not be empty.

string resource_string  # An entity definition file passed as a string, only used if uri is empty.
                        # If uri field is not empty, resource_string field will be ignored.
                        # Simulators may support spawning from a file generated on the fly (e.g. XACRO).