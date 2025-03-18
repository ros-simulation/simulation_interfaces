# An utility message type for specification of tag-based filtering

string[] tags                           # Optional, defaults to empty, which means no tags filter.
                                        # Results matching any or all of tags will be returned, depending
                                        # on tags_filter_mode.

uint8 FILTER_MODE_ANY    = 0            # Filter with OR mode (any tag can match).
uint8 FILTER_MODE_ALL    = 1            # Filter with AND mode (all tags need to match).

uint8 filter_mode                       # Set to control filter application for tags.
