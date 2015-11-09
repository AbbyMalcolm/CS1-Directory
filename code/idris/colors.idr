module colors

import pair
import bool
import option
%default total
data color = red | green | blue | cyan | yellow | magenta

complement: color -> color
complement red = cyan
complement blue = yellow
complement green = magenta
complement cyan = red
complement yellow = blue
complement magenta = green

additive: color -> bool
additive red = true
additive blue = true
additive green = true
additive _ = false

subtractive: color -> bool
subtractive cyan = true
subtractive yellow = true
subtractive magenta = true
subtractive _ = false

complements: (pair color color) -> bool
complements (mkPair red cyan) = true
complements (mkPair blue yellow) = true
complements (mkPair green magenta) = true
complements (mkPair cyan red) = true
complements (mkPair yellow blue) = true
complements (mkPair magenta green) = true
complements (mkPair _ _) = false

mixink: (pair color color) -> option color
mixink (mkPair magenta yellow) = some red
mixink (mkPair yellow magenta) = some red
mixink (mkPair yellow cyan) = some green
mixink (mkPair cyan yellow) = some green
mixink (mkPair magenta cyan) = some blue
mixink (mkPair cyan magenta) = some blue
mixink _ = none
