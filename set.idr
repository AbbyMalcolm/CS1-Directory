module set

import list

||| mkSet is meant to be private
data set a = mkSet (list a)

||| a starting for building any set
new_set: set a
new_set = mkSet nil

set_insert: a -> set a -> set a
set_insert v (mkSet 1) = mkSet (v::l)
