module ITE

import public bool

ITE: bool -> a -> a -> a
ITE true tb fb = tb
ITE false tb fb = fb
