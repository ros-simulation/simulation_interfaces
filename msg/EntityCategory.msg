# Entity major category, which often warrants a specific way to handle such entity, e.g. when handling humans
# or mapping persistence for dynamic vs static objects.

uint8 CATEGORY_OBJECT         = 0    # Generic or unspecified type.
uint8 CATEGORY_ROBOT          = 1    # A broad category for mobile robots, arms, drones etc.,
                                     # usually with ROS 2 interfaces.
uint8 CATEGORY_HUMAN          = 2    # Simulated humans, e.g. pedestrians, warehouse workers.
                                     # Compared to CATEGORY_DYNAMIC_OBJECT, humans are often expected to be treated
                                     # exceptionally in regards to safety constraints.
uint8 CATEGORY_DYNAMIC_OBJECT = 4    # Vehicles, animals, mobile obstacles, typically to present a detection and
                                     # tracking challenge, such as when simulation is used to test robot perception
                                     # or navigation stack.
uint8 CATEGORY_STATIC_OBJECT  = 5    # Any object which is static, e.g. not supposed to change its pose
                                     # unless by means of SetEntityState.

uint8 category