# Simulation Interfaces

Standard ROS 2 interfaces for interacting with simulators. 
Messages, services, and actions are documented in their respective files.

## Result.msg

The standard includes a generic message for handling service responses, [Result.msg](msg/Result.msg),
which will likely not be included in the final version of the standard. Since it is generic, it will either be promoted to a common message or included in the
service mechanism itself. 

## Suggested interface implementation priorities

[GetSimulatorFeatures](srv/GetSimulatorFeatures.srv) should be implemented first, as it provides users with information about
the state of support for all standard simulation interfaces.

Following that, aim for maintaining consistency within the implemented feature, such as enabling both
_Get_ and _Set_ parts.

Some interfaces represent optional utility and are considered lower priority:
- [GetEntityBounds](srv/GetEntityBounds.srv)
- [GetNamedPoseBounds](srv/GetNamedPoseBounds.srv)
- [GetNamedPoses](srv/GetNamedPoses.srv)
- [GetSpawnables](srv/GetSpawnables.srv)
- [SetEntityInfo](srv/SetEntityInfo.srv)
- [GetAvailableWorlds](srv/GetAvailableWorlds.srv)
- [LoadWorld](srv/LoadWorld.srv)
- [UnloadWorld](srv/UnloadWorld.srv)
- [GetCurrentWorld](srv/GetCurrentWorld.srv)
