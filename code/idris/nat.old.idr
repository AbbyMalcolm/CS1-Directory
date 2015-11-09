module nat

import bool
import pair

||| A data type to represent the natural numbers.  We use a lower case
||| "n" in the name to distinguish our nat type from Idris's Nat type
data nat = O | S nat

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

s: nat
s = S (S (S (S (S (S (S O))))))

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

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

c: bool
c = evenb (S (S O))

d: bool
d = evenb (S r)

||| given a pair of natural numbers, return its sum
addp: pair nat nat -> nat
addp (mkPair O m) = m
addp (mkPair (S n) m) = S (addp (mkPair n m))

add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

pf: nat -> nat
pf = add (S (S O))

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

||| given a pair of natural numbers, return its sum
multp: pair nat nat -> nat
multp (mkPair O m) = O
multp (mkPair (S n) m) = addp (mkPair m (multp (mkPair n m)))
multp (mkPair (S t) r) = r
multp (mkPair (S o) r) = z

factp: nat -> nat
factp O = (S O)
factp (S n') = multp (mkPair (S n') (factp n'))

|||Given a pair of natural numbers, (a, b), return a-b.
||| If a <= b, the answer will be O.
subp: pair nat nat -> nat
subp (mkPair O m) = O
subp (mkPair n O) = n
subp (mkPair (S n) (S m)) = subp (mkPair n m)

|||Given a pair of natural numbers, (a, b), return true
|||If a <= b otherwise return false
lepp: pair nat nat -> bool
lepp (mkPair O m) = true
lepp (mkPair (S a) O) = false
lepp (mkPair (S a) (S b)) = lepp (mkPair a b)

x: nat
n: nat

||| Given a pair of natural numbers, (x, n), return the value of x raised to the nth power
exp: pair nat nat -> nat
exp (mkPair x O) = S O
exp (mkPair (S x) (S n)) = multp (mkPair (x) (exp (mkPair (x) (n))) )

b: nat
a: nat

||| Given a pair of natural numbers, (a, b), return true if a is less than or equal to b, otherwise return false
lep: pair nat nat -> bool
lep (mkPair O O) = true
lep (mkPair O b) = true
lep (mkPair a O) = false
lep (mkPair (S a) (S b)) = lep (mkPair a b)

||| Given a pair of natural numbers, (a, b), return true if a is equal to b, otherwise return false
eqp: pair nat nat -> bool
eqp (mkPair O b) = false
eqp (mkPair a O) = false
eqp (mkPair O O) = true
eqp (mkPair (S a) (S b)) = eqp (mkPair a b)

||| Given a pair of natural numbers, (a, b), return true if a is greater than b, otherwise return false
gtp: pair nat nat -> bool
gtp (mkPair O O) = false
gtp (mkPair O b) = false
gtp (mkPair a O) = true
gtp (mkPair (S a) (S b)) = gtp (mkPair a b)

||| Given a pair of natural numbers, (a, b), return true of a is greater than or equal to b
gep: pair nat nat -> bool
gep (mkPair O O) = true
gep (mkPair O b) = false
gep (mkPair a O) = true
gep (mkPair (S a) (S b)) = gep (mkPair a b)

||| Given a pair of natural numbers, (a, b), return true if a is less than b
ltp: pair nat nat -> bool
ltp (mkPair O O) = false
ltp (mkPair O b) = true
ltp (mkPair a O) = false
ltp (mkPair (S a) (S b)) = ltp (mkPair a b)
