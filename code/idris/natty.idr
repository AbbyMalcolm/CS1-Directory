module nat

import bool
import pair

---Zero is a natural number, and the successor of any natural number
  ---is a natural number, so the successor of zero is a natural number; and
  ---now, because the successor of zero is a natural number, its
  ---successor, i.e., the successor of (the successor of zero) is one too; ad infinitum!

{- We capture this idea with the following deceptively simple data
type definition. What it says is that nat is a type, and there are two
ways to construct a nat. One is to use the constructor, O. The other
is to apply the constructor S to a value that is already known to be
of type nat.  Because O is already known to be of type nat, you can
thus apply S to O (yielding the term (S O)) and the result is also of
type nat. And now because it is a value of type nat, you can apply S
to it to get another value of type nat. Ad infinitum.
 -}

||| A data type to represent the natural numbers.  We use a lower case
||| "n" in the name to distinguish our nat type from Idris's Nat type
data nat = O | S nat

{-
ANSWER #3: The type of O is nat; the type of S is nat -> nat; and
the type of nat is Type. In other words, O is a value of type nat.
The constructor S is basically a function that takes a nat and gives
you back a (one bigger) nat. And nat is a type, which makes it a
value of the type called Type.
-}

-- zero
z: nat
z = O

-- one
o: nat
o = S O

-- two
t: nat
t = S (S O)

-- three
r: nat
r = S t

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

x: bool
x = isZero r

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

y: nat
y = (succ O)

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

||| return false if the argument is even otherwise true
||| i.e., return true if it's odd and false if it's even
oddb: nat -> bool
oddb n = not (evenb n)

a: bool
a = evenb O

b: bool
b = evenb (S O)

c: bool
c = evenb (S (S O))

d: bool
d = evenb (S r)

||| given a pair of natural numbers, return its sum
addp: pair nat nat -> nat
addp (mkPair O m) = m
addp (mkPair (S n) m) = S (addp (mkPair n m))

||| a test, expecting O
h1: nat
h1 = addp (mkPair O O)

||| a test, expecting S (S O)
h2: nat
h2 = addp (mkPair O (S (S O)))

||| a test, expecting (S O)
h3: nat
h3 = addp (mkPair (S O) O)

||| a test, expecting (S (S (S (S (S O)))))
h4: nat
h4 = addp (mkPair (S (S O)) (S (S (S O))))
