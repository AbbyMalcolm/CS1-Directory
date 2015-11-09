module listTest

import nat
import list
import bool
import Serialize

len1: nat
len1 = length nil {a=nat}

len2: nat
len2 = length (2::nil)

app1: list nat
app1 = append nil nil {a=nat}

map1: list bool
map1 = map evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

filter1: list bool
filter1 = filter evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

s: String
s = toString l2
