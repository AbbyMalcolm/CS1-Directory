Type checking ./option.idr
Type checking ./bool.idr
Type checking ./nat.idr
nat.idr:87:1:warning - Unreachable case: mult (S t) r
nat.idr:87:1:warning - Unreachable case: mult (S o) r
Type checking ./list.idr
Type checking ./colleges.idr
Type checking ./colleges.idr
Type checking ./colleges.idr
Type checking ./colleges.idr
λΠ> collegetable
cons (mkEnroll UVA 15 15 6 21)
     (cons (mkEnroll JMU 15 19 1 20) (cons (mkEnroll WM 15 6 2 8) nil)) : list enroll
λΠ> nextyear
nextyear : enroll -> Nat -> enroll
λΠ> nextyear wm
nextyear (mkEnroll WM 15 6 2 8) : Nat -> enroll
λΠ> nextyear wm 16
mkEnroll WM 15 6 16 8 : enroll
Type checking ./colleges.idr
λΠ> nextyear wm 16
Too many arguments for colleges.wm
λΠ> nextyear wm 16
mkEnroll WM 16 6 2 8 : enroll
λΠ> 
