module eq

import public bool

{- Typeclass is record type constructor. "Instance" can be provided
for any given type. To construct record instance for given type, must
provide value for fields of that record. Eq typeclass we define here
has just one field, "eql". -}

class eq a where
  eql: a -> a -> bool

instance eq bool where
  eql b1 b2 = eql_bool b1 b2
