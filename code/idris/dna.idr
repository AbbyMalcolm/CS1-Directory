module dna

import list
import pair

data base: A | T | C | G 

complement_base: base -> base
complement_base A = T
complement_base C = G
complement_base T = A
complement_base G = C

complement_strand: list dna.complement_base
complement_strand = (map (dna.complement_base) (list base))

strand1: list (pair base base) -> list base
strand1 nil = nil
strand1 list mkPair b a = b

strand2: list (pair base base) -> list base
strand2 nil = nil
strand2 list mkPair b a = a

complete: list dna.complement_strand
complete = (map (list base) (dna.complement_strand))

countBase: (list base -> base -> nat)
countBase = (map (foldr (nat)))
