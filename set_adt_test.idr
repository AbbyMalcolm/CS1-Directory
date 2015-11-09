
set_cardinality (mkSet l, b, a) = (S (S (S O)))

combine: set -> set -> set
combine (mkSet a, b, c) (mkSet b, d, e) = (mkSet a, b, c, d, e)

set_union: (s1: set a) -> (s2: set a) -> set a
set_union (mkSet a, b, c) (mkSet b, d, e) = combine (mkSet a b,c, d, e)

list_difference: set a -> set a -> set a
list_difference (O::S O) (O::(S (S O))) = ((S O) (S (S O)))
list_difference (S O::O) ((S (S O))::O) = ((S O) (S (S O)))

set_difference: (eq a) => (s1: set a) -> (s2: set a) -> set a
set_difference (l1 mkSet O, (S O)) (l2 mkSet O, (S (S O))) = mkSet (list_difference l1 l2)

set_product: (s1: set a) -> (s2: set b) -> set (pair a b)
set_product (mkSet {a m}) (mkSet {d c}) = { (a, d), (a, c), (d, a), (d, m) }

set_powerset: (s: set a) -> set (set a)
set_powerset {O, S O} = { {}, {O}, {S O}, {O, S O} }

set_toString: (Serialize a) => list a -> String
set_toString nil = ""
set_toString (O::nil) = (toString O)
set_toString (O::(S O)) = (toString O) ++ ", " ++ (set_toString (S O))
