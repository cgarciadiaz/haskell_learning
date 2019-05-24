----------------------------------------------------------------------------------------------------
{-
    01-first_steps
-}
----------------------------------------------------------------------------------------------------

--Activate interactive mode in the GHC Haskell compilator.
ghci
--To change prompt.
:set prompt "ghci> "
--Simple aritmetic
12+2
14*2
16-2
28/2
--Operation order
(2*14)-2
2*(14-2)
--The negative operation with parentesis
5*(-3)
--Boolean algebra
True && True
True && False
True || True
True || False
not False
not (True && True)
5 == 5
5 /= 5
--Succesor function
succ 8
--Max and min function
min 9 10
max 9 10
--Equivalent funcitions
succ 9 + max 5 4 + 1
(succ 9) + (max 5 4) + 1
--First function
doubleMe x = x + x