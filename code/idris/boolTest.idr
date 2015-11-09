module boolTest

import bool
import Serialize

b1: bool
b1 = true

b2: bool
b2 = true

b3: bool
b3 = false

b4: bool
b4 = not true

b5: bool
b5 = not b1

b6: bool
b6 = not(not b5)

pand_t_t: bool
pand_t_t = pand true true

pand_t_f: bool
pand_t_f = pand true false

pand_f_t: bool
pand_f_t = pand false true

pand_f_f: bool
pand_f_f = pand false false

por_t_t: bool
por_t_t = por true true

por_t_f: bool
por_t_f = por true false

por_f_t: bool
por_f_t = por false true

por_f_f: bool
por_f_f = por false false

pxor_t_t: bool
pxor_t_t = pxor true true

pxor_t_f: bool
pxor_t_f = pxor true false

pxor_f_t: bool
pxor_f_t = pxor false true

pxor_f_f: bool
pxor_f_f = pxor false false

pnand_t_t: bool
pnand_t_t = pnand true true

pnand_t_f: bool
pnand_t_f = pnand true false

pnand_f_t: bool
pnand_f_t = pnand false true

pnand_f_f: bool
pnand_f_f = pnand false false

nand: bool -> bool -> bool
nand true true = false
nand true false = true
nand false true = true
nand false false = true

xor: bool -> bool -> bool
xor true false = true
xor false true = true
xor true true = false
xor false false = false

and: bool -> bool -> bool
and true true = true
and true false = false
and false true = false
and false false = false

or: bool -> bool -> bool
or false false = false
or false true = true
or true false = true
or true true = true

s: String
s = toString true
