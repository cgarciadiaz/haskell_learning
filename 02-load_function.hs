----------------------------------------------------------------------------------------------------
{-
    02.load_functions
-}
----------------------------------------------------------------------------------------------------

--to load fuction, open a terminarl, execute ghci and execute the command ":l 02-load_function"
-- doubleMe
doubleMe x = x + x
-- doubleUs --> other form of defining fuction is doubleUs x y = x*2 + y*2
doubleUs x y = doubleMe x + doubleMe y
--doubleSmallNumber with sentence if-then-else
doubleSmallNumber x = if x > 100 
    then x 
    else x*2
--doubleSmallNumber'
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1
--factorial - fac 3 = 3 * 2 * 1 * 0
fac n = if n == 0 then 1 else n * fac ( n-1 )
{- Un año es bisiesto si es divisible por 4, excepto el último de cada siglo (aquel divisible por 100),
    salvo que éste último sea divisible por 400 -}
--leap year - if then else
leapYear year = if mod year 100 == 0 then mod year 400 == 0 else mod year 4 == 0
-- leap year' - && ||
leapYear' year = mod year 4 == 0 && mod year 100 /= 0 || mod year 400 == 0
-- to know the data type of the function use :t max  max :: Ord a => a -> a -> a
:t max