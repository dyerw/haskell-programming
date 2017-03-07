Lambda Calculus

\x.x, \y.y, and \z.z are *Alpha Equivalent*
because they are semantically the same

*Beta Reduction*


(\x.x) 2

2


(\x.x)(\y.y)

\y.y


Computing a *Lambda Expression* is just applying
*Beta Reduction* to a finite sequence of *lambda terms*

In \x.xy x is a *bound variable* and y is a *free variable*

Note: \x.xy and \x.xz are _not_ *alpha equivalent*

Lambda expressions can only have one argument but Haskell Curry 
found a neat trick

\xy.xy is shorthand for \x.(\y.xy)

an example reduction:

\x(\y.xy) 1 2

(\y.1y) 2

1 2

A *Combinator* is a lambda term with no free variables

Some terms _converge_ into beta normal form, but some diverge for instance:

(\x.xx)(\x.xx)



