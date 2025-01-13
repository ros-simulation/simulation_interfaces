# Entity current pose and twist

std_msgs/Header header                  # Frame and timestamp for pose and twist. Empty frame defaults to world.
geometry_msgs/Pose pose                 # Pose in reference frame, ground truth.
geometry_msgs/Twist twist               # Ground truth body twist in the reference frame.
                                        # It is observed and defined in the local coordinates system of the body.
                                        # See https://github.com/ros2/common_interfaces/pull/240 for conventions.
geometry_msgs/Accel acceleration        # Linear and angular acceleration ground truth, following the same convention.
