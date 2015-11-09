module Book

import bool
import relation
import list

||| A record where you take a Book and the title, year, and if it was a good
||| story is returned.
record Book where
      constructor MkBook
      title : String
      year : Nat
      good : bool

data title = The Hobbit | I Hunt Killers | Twilight

data book = MkBook title Nat bool

hobb: book
hobb = MkBook "The Hobbit" 1937 true

ihk: book
ihk = MkBook "I Hunt Killers" 2012 true

twi: book
twi = MkBook "Twilight" 2005 false

listbook: list title
listbook (:: hobb (:: ihk (:: twi nil)))

listYear: list Nat
listYear (:: hobb (:: ihk (:: twi nil)))

listGood: list bool
listGood (:: hobb (:: ihk (:: twi nil)))

map: (a -> b) -> list a -> list b
map hobb nil = nil
map hobb (ihk :: twi) = (hobb ihk)::(map hobb twi)

year: Nat
year = query2 title year good plus 0

countOne: a -> Nat
countOne v = 1

countYear: pair Nat Nat
countYear = count_rel title year good

sumYear: pair Nat Nat
sumYear = sum_rel title year good

aveYear: pair Nat Nat
aveYear = ave_rel title year good
