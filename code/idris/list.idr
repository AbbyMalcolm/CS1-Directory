module list

import option
import bool
import eq
import Serialize
import ITE

infixr 7 ::, ++

data list a = nil | (::) a (list a)

--The functions

||| return the length of any given list
length: list a -> Nat
length nil = 0
length (n::l) = 1 + (length l)

||| append as an infix operator ++
(++): list a -> list a -> list a
(++) nil l2 = l2
(++) (h::t) l2 = h::(t++l2)

||| map a function over the elements of a list
||| ex. (nat -> bool) -> list nat -> list bool
map: (a -> b) -> list a -> list b
map f nil = nil
map f (h::t) = (f h)::(map f t)

ite: bool -> a -> a -> a
ite true tb fb = tb
ite false tb fb = fb

||| give a list and a predicate on elements return the sublist of elements
||| for which the predicate (a -> bool) is true
filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h)
                      (h::(filter f t))
                          (filter f t)

|||reduce a "list of a's'" to a "b" using a function f
|||having identity "id"
foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ITE (eql v h)
                      true
                      (member v t)

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1::t1) (h2::t2) =
    and (eql h1 h2) (eql t1 t2)

subset_elements: (eq a) => list a -> list a -> bool
  subset_elements nil l2 = true
  subset_elements (h::t) l2 = and
                               (member h l2)
                               (subset_elements t l2)

same_elements: (eq a) => list a -> list a -> bool
  same_elements l1 l2 =
                   and
                    (subset_elements l1 l2)
                    (subset_elements l2 l1)

toStringList: (Serialize a) => list a -> String
toStringList nil = ""
toStringList (h::nil) = (toString h)
toStringList (h::t) = (toString h) ++ ", " ++ (toStringList t)

instance (Serialize a) => Serialize (list a) where
  toString l = "[" ++ (toStringList l) ++ "]"
