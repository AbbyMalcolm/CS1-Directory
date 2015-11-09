module bool

import pair

data bool = true | false

id_bool: bool -> bool
id_bool b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

||| Given a pair of bool values, (a, b), return true if both a and b are true, otherwise return false
andp: pair bool bool -> bool
andp (mkPair true true) = true
andp (mkPair _ _) = false

||| Given a pair of bool values, (a, b), return false if both a and b are false, otherwise return true
orp: pair bool bool -> bool
orp (mkPair false false) = false
orp (mkPair _ _) = true

||| Given a pair of bool values, (a, b), return false if both a and b are true, and true otherwise
nandp: pair bool bool -> bool
nandp (mkPair true true) = false
nandp (mkPair _ _) = true

||| Given a pair of bool values, (a, b), return true if exactly one of a or b is true, and false otherwise
xorp: pair bool bool -> bool
xorp (mkPair true false) = true
xorp (mkPair false true) = true
xorp (mkPair _ _) = false

--Exam Problem #2: There are two possible ways to fill in the result colum for a truth table for a binary Boolean function, and there are thus exactly four such functions, and no more.

pand: bool -> bool -> bool
pand true = id_bool
pand false = constFalse

por: bool -> bool -> bool
por true = constTrue
por false = id_bool

pxor: bool -> bool -> bool
pxor true = not
pxor false = id_bool

pnand: bool -> bool -> bool
pnand true = not
pnand false = constTrue

--binary functions (bool -> bool -> bool), implicit

and: bool -> bool -> bool
and true true = true
and _ _ = false

uf: bool -> bool
uf = (and true)

or: bool -> bool -> bool
or false false = false
or _ _ = true


module bool

import pair

data bool = true | false

id_bool: bool -> bool
id_bool b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

nand: bool -> bool -> bool
nand true true = false
nand _ _ = true

xor: bool -> bool -> bool
xor true false = true
xor false true = true
xor _ _ = false

and: bool -> bool -> bool
and true true = true
and _ _ = false

uf: bool -> bool
uf = (and true)

or: bool -> bool -> bool
or false false = false
or _ _ = true

eql_bool: bool -> bool -> bool
eql_bool true true = true
eql_bool false false = true
eql_bool _ _ = false
