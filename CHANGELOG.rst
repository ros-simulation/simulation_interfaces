^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package simulation_interfaces
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1.1.0 (2025-08-26)
------------------
* Add support for managing simulation worlds (`#4 <https://github.com/ros-simulation/simulation_interfaces/issues/4>`_) ( `#15 <https://github.com/ros-simulation/simulation_interfaces/issues/15>`_)

* Contributors: Ayush Ghosh <ayushg@nvidia.com>
* Co-authored-by: Martin Pecka <peci1@seznam.cz>
* Co-authored-by: Adam Dąbrowski <adam.dabrowski@robotec.ai>
* Co-authored-by: Mateusz Żak <mateusz.zak@robotec.ai>

1.0.1 (2025-05-16)
------------------
* Add missing `action_msgs` dependency to package.xml `#10 <https://github.com/ros-simulation/simulation_interfaces/issues/10>`_
* Added error code to SetEntityState.srv (`#8 <https://github.com/ros-simulation/simulation_interfaces/issues/8>`_)
* Contributors: Adam Dąbrowski, Mateusz Żak, Michał Pełka

1.0.0 (2025-04-16)
------------------
Initial release of the simulation_interfaces package - a new Standard ROS 2 interfaces for interacting with simulators.

The standard defines highly useful features such as spawning robots and other objects, moving things around for testing, stepping through simulation and querying the virtual world for ground truth data. It is supportive of automation and scenario-based testing.

* Contributors: Adam Dąbrowski <adam.dabrowski@robotec.ai>, Addisu Z. Taddese <addisu@openrobotics.org>

* Co-authored-by: Martin Pecka <peci1@seznam.cz>
* Co-authored-by: Steve Peters <computersthatmove@gmail.com>
* Co-authored-by: David V. Lu!! <davidvlu@gmail.com>
* Co-authored-by: Addisu Z. Taddese <addisu@openrobotics.org>
* Co-authored-by: Tully Foote <tully.foote@gmail.com>
* Co-authored-by: Sebastian Castro <4603398+sea-bass@users.noreply.github.com>
* Co-authored-by: Michał Pełka <michal.pelka@robotec.ai>
* Co-authored-by: Paweł Liberadzki <pawel.liberadzki@gmail.com>
