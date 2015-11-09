module nat

import bool
import pair
import eq

data nat = O | S nat

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

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

add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

mult: nat -> nat -> nat
mult O m = m
mult (S n) m = add m (mult n m)

fact: nat -> nat
fact O = (S O)
fact (S n') = mult (S n') (fact n')

sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

x: nat
n: nat

expp: nat -> nat -> nat
expp x O = S O
expp (S x) (S n) = mult x (expp x n)

b: nat
a: nat

le: nat -> nat -> bool
le O O = true
le O b = true
le a O = false
le (S a) (S b) = le a b

eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat (S n) O = false
eql_nat O (S n) = false
eql_nat (S n) (S m) = eql_nat n m

gt: nat -> nat -> bool
gt a O = true
gt a b = not (le (S a) (S b))

ge: nat -> nat -> bool
ge a O = true
ge O (S O) = false
ge (S a) (S b) = ge a b

lt: nat -> nat -> bool
lt O (S b) = true
lt a b = not (ge (S a) (S b))

fib: nat -> nat
fib O = O
fib (S O) = (S O)
fib (S (S n)) = add (fib (S n)) (fib n)

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "|" ++ (toString n)
