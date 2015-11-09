record Person where
  constructor mkPerson
    name : STring
    age : Nat
    
newName: Person -> String -> Person
newName p n = record {name = n} p

p: Person
p = mkPerson "hi" 3

t: Nat
t = age p

n: String
n = name p

p': Person
p' = newName p "there"
