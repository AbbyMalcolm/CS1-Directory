module Person

import bool

||| A record type that is equivalent to:
||| (data Person = mkPerson String nat)
||| but where we give names to fields.
||| A person has a name and an age in
||| years.
record Person where
    constructor MkPerson
    name : String
    age : Nat
    height: Nat
    gender: bool


-- An example value of type Person
p: Person
p = MkPerson "Tommy" 3

-- And now here's the key idea: The
-- names of the fields are automatically
-- names of projection functions! Here
-- we get out the age of person, p.
t: Nat
t = age p
-- expect 3

-- Here we get the name of person p.
n: String
n = name p
-- expect "Tommy"

people: list Person
people = tom::mary::ge::daryl::nil

mapAge: list Person -> list Nat
mapAge nil = nil
mapAge (h::t) = (age h)::(mapAge t)

map: (a -> b) -> list a -> list b
map f nil = nil
map f (h :: t) = (f h)::(map f t)
