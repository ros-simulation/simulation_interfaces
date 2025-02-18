# A set of filters to apply to entity queries. See GetEntities, GetEntitiesStates.

string filter                                       # Optional, defaults to empty. Return entities with matching names.
                                                    # Entity names are matched with the filter regular expression.
                                                    # An empty filter will result in all entities being returned.
                                                    # Applies together with other filters (categories, tags).
uint8[] categories                                  # Optional, defaults to empty, which means no category filter.
                                                    # Entities matching any of the categories will be returned.
                                                    # To get entity category, use GetEntityInfo.
                                                    # Applies together with other filters (filter, tags).
TagsFilter tags                                     # Tags filter to apply. To get entity tags, use GetEntityInfo.
                                                    # Applies together with other filters (filter, categories).

# if overlap_radius > 0, the overlap filter is applied and entities overlapping with the defined sphere will be returned.

float64 overlap_radius                               # Radius of the overlap sphere
geometry_msgs/Point overlap_center                   # Center point of the overlap sphere, in world coordinates.
