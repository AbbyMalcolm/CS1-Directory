module unit

import bool
import Serialize
import eq

data unit = mkUnit

u: unit
u = mkUnit

v: unit
v = mkUnit

id_unit: unit -> unit
id_unit mkUnit = mkUnit

instance eq unit where
  eql u1 u2 = true

instance Serialize unit where
  toString u = "()"
