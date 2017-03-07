1 -- This is an expression
1 + 1 -- So is this!
"Icarus" -- Even this is!

-- this file doesn't compile because Haskell
-- doesn't like expressions at the top level
-- but it's still fine for notes i guess

-- However
1 + 2 -- Is not *Normal Form*
-- but
3 -- is normal form

-- reducible (non-normal) forms are called "redexes"
-- turning a redex into a normal form is called 
-- evaluating or reducing or normalizing or executing depending
-- on your mood

-- Function definitions have:
-- a name, parameters, an equal sign, and an expression
-- for example:
triple x = x * 3

-- variables and function names are LOWERCASE to start

-- triple works just like lambda calculus
triple 3
3 * 3

-- functions are prefix notation, but math operators are infix
-- however we can use functions as infix like so
10 `div` 2

-- and infix like prefix like so
(+) 1 2

-- but unlike lisp (+) 1 2 3 is invalid since + takes two args
-- unsure if there are variable args available in Haskell

-- you gotta do this to add negatives
(-8) + (-2)

-- so about $...
f $ a = f a

-- it's an infix operator of *lowest possible preference*
-- so...

(*) 8 $ 1 + 1
-- is like
8 * (1 + 1)

-- sectioning:
(+1) 2

(/1) 2

(1/) 2

-- allows currying of infix operators
-- except 
(-1)

-- since that's negation
-- so use:
(subtract 1)

-- Let vs. Where
-- Let introduces expression
-- Where is a declaration and is bound to a surrounding sytactic construct

printInc n = print plusTwo
    where plustTwo = n + 2

printInc2 n = let plusTwo = n + 2
	      in print plusTwo


