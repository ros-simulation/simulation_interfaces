^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package simulation_interfaces
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

2.2.0 (2026-05-01)
------------------
* Add optional ``type`` field to ``GetEntityBounds.srv`` request to allow callers to specify the desired bounding box type (`#26 <https://github.com/ros-simulation/simulation_interfaces/issues/26>`_)
* Add ``TYPE_UNSPECIFIED`` constant to ``Bounds.msg`` to serve as a no-preference sentinel in service requests (`#26 <https://github.com/ros-simulation/simulation_interfaces/issues/26>`_)
* Contributors: Ayush Ghosh <ayushg@nvidia.com>

2.1.0 (2026-04-07)
------------------
* Rename ``level_resource`` to ``world_resource`` in ``LoadWorld`` and ``WorldResource`` for consistent terminology (`#13 <https://github.com/ros-simulation/simulation_interfaces/issues/13>`_)
* Add ``SpawnEntities`` service for spawning multiple entities in a single call (`#20 <https://github.com/ros-simulation/simulation_interfaces/issues/20>`_, `#25 <https://github.com/ros-simulation/simulation_interfaces/issues/25>`_)
* Make setting entity values optional via boolean flags in ``SetEntityState`` (`#21 <https://github.com/ros-simulation/simulation_interfaces/issues/21>`_)
* Add links to example implementations in README (`#19 <https://github.com/ros-simulation/simulation_interfaces/issues/19>`_)
* Contributors: Adam Dąbrowski, Luca Della Vedova, Mateusz Żak, Michał Pełka, Norbert Prokopiuk

2.0.0 (2025-07-29)
------------------
Add support for managing simulation worlds `#4 <https://github.com/ros-simulation/simulation_interfaces/issues/4>`_
* Contributors: Ayush Ghosh <ayushg@nvidia.com>
* Co-authored-by: Martin Pecka <peci1@seznam.cz>
* Co-authored-by: Adam Dąbrowski <adam.dabrowski@robotec.ai>

Documentation fixes
* Contributors: fred-labs <fred-labs@mailbox.org>, Arjo Chakravarty <arjo129@gmail.com>

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
