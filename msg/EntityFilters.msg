# A set of filters to apply to entity queries. See GetEntities, GetEntitiesStates.

string filter                                       # Optional, defaults to empty. Return entities with matching names.
                                                    # Entity names are matched with the filter regular expression.
                                                    # An empty filter will result in all entities being returned.
                                                    # The regular expression syntax is POSIX Extended,
                                                    # see https://pubs.opengroup.org/onlinepubs/9799919799/ definitions.
                                                    # Applies together with other filters (categories, tags).
EntityCategory[] categories                         # Optional, defaults to empty, which means no category filter.
                                                    # Entities matching any of the categories will be returned.
                                                    # To get entity category, use GetEntityInfo.
                                                    # Applies together with other filters (filter, tags).
                                                    # Check ENTITY_CATEGORIES in GetSimulatorFeatures to determine if
                                                    # your simulator supports entity categories.
TagsFilter tags                                     # Tags filter to apply. To get entity tags, use GetEntityInfo.
                                                    # Applies together with other filters (filter, categories).
                                                    # Check support for this feature (ENTITY_TAGS) in GetSimulationFeatures.
Bounds bounds                                       # if bounds are not empty, the overlap filter is applied
                                                    # and entities overlapping with bounds will be returned.
                                                    # Note that not all bound types might be supported by the simulator,
                                                    # though at least TYPE_SPHERE needs to be supported.
                                                    # Check ENTITY_BOUNDS_BOX and ENTITY_BOUNDS_CONVEX in GetSimulationFeatures
                                                    # to determine whether your simulator supports other bound types.
                                                    # If service is called with filter bounds set to an unsupported type,
                                                    # a FEATURE_UNSUPPORTED result will be returned.
