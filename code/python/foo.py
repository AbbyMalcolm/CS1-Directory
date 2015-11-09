#single line comment
''' multiline comments triple single quote or triple double quotes '''

''' Key differenes, Idris v. Python

(1) Idirs is a compiled language; Python is interpreted (by default)
(2) Idirs uses statistic type checking; Python uses dynamic type checking-> dynamic = code actually runs
(3) Idris values are immutable whereas Python has mutable state
(4) Idris is a language of expressions; Python is a language of commands
'''
# static v. dynamic type checking

''' In Idris, every value has *static* type. Types are known and checked at compile time. Cannont compile program with type error in Idris. N need to check for *dynamic* type errrors (i.e. when program is actually running)
'''

''' In Python, every value has two types: "static" type, seen by compiler, and "dynamic" type as seen when programm actually runs. Static type of every value in python is simply "Object". Upshot is static type checking isn't helpful in Python, and so it isn't done. Can write, compile, and run code that passes a string to function expecting a number, and you won't know there's an error until you run your program and it issues a runtime type error.
'''
#type checking demo

def foo(n):
    return n + 3

print(foo(6))

#print is a "procedure" that affects the world by printing on console
print(print("Happy 200th Birthday, George Boole!"))

#None -- serves same purposes as both option.none and unit.mkUnit
print(None)

#Type returns the
print(type(None))
