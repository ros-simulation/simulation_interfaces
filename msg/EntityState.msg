# Entity current pose, twist and acceleration

std_msgs/Header header                  # Reference frame and timestamp for pose and twist. Empty frame defaults to world.
geometry_msgs/Pose pose                 # Pose in reference frame, ground truth.
geometry_msgs/Twist twist               # Ground truth linear and angular velocities
                                        # observed in the frame specified by header.frame_id
                                        # See https://github.com/ros2/common_interfaces/pull/240 for conventions.
geometry_msgs/Accel acceleration        # Linear and angular acceleration ground truth, following the same convention.
