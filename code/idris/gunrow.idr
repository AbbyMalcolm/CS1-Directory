module gunrow

import list

data country = Argentina | Australia | Austria | Honduras | USA

||| A record of this type represents a country and the death rate per
||| 10,000,000 by gun for homocides, suicides, unintentional, other deaths

data gunrow = mkGunrow country Nat Nat Nat Nat

argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

aust: gunrow
aust = mkGunrow Australia 110 620 50 80

aus: gunrow
aus = mkGunrow Austria 180 2680 10 80

hon: gunrow
hon = mkGunrow Honduras 6480 0 0 0

usa: gunrow
usa = mkGunrow USA 3550 6700 160 90

countryName: gunrow -> country
countryName (mkGunrow c h s u o) = c

homocidePer10M: gunrow -> Nat
homocidePer10M (mkGunrow c h s u o) = h

suicidePer10M: gunrow -> Nat
suicidePer10M (mkGunrow c h s u o) = s

unintentionalPer10M: gunrow -> Nat
unintentionalPer10M (mkGunrow c h s u o) = u

otherPer10M: gunrow -> Nat
otherPer10M (mkGunrow c h s u o) = o

listgunrow: list country
listgunrow = cons Argentina (cons Australia (cons Austria (cons Honduras (cons USA nil))))
