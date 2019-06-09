----------------------------------------------------------------------------------------------------
{-
    04-ranges,comprehesion_list,tuples
-}
----------------------------------------------------------------------------------------------------
-- RANGES
----------------------------------------------------------------------------------------------------
-- cycle :: [a] -> [a]                  --> toma una lista y crea un ciclo de listas iguales
-- repeat :: a -> [a]                   --> toma un elemento y genera una lista infinita de el elemento
--replicate :: Int -> a -> [a]          --> toma un número entero y un elemento genera una lista del elemento repetida tantas veces como el número entero
--length :: Foldable t => t a -> Int    --> toma un elemento y devuelve el número de elementos
--length' :: Num a => [t] -> a          --> toma un número y devuelve el número de elementos
-- elem :: (Foldable t, Eq a) => a -> t a -> Bool --> 

[1..20]
-- ['a'..'Z'] --> ""
['a'..'Z']
-- ['A'..'Z'] --> "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
['A'..'Z']
-- ['1'..'2'] --> "12"
['1'..'2'] -
-- ['1'..'9'] --> "123456789"
['1'..'9'] 
--[1,7..100] --> [1,7,13,19,25,31,37,43,49,55,61,67,73,79,85,91,97]
[1,7..100] 
--[20,19..1] --> [20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]
[20,19..1]
--[0.1, 0.3 .. 1] --> [0.1,0.3,0.5,0.7,0.8999999999999999,1.0999999999999999]
[0.1, 0.3 .. 1]
--[13,26..24*13] --> [13,26,39,52,65,78,91,104,117,130,143,156,169,182,195,208,221,234,247,260,273,286,299,312]
[13,26..24*13]
--take 10 [13,26..] --> [13,26,39,52,65,78,91,104,117,130]
take 10 [13,26..]
--[1,2..] --> genera una lista infinita
[1,2..]

--take 10 (cycle [1,2,3]) --> [1,2,3,1,2,3,1,2,3,1]
take 10 (cycle [1,2,3])
--take 10 ( repeat 5) --> [5,5,5,5,5,5,5,5,5,5]
take 10 ( repeat 5)
--replicate 10 8 --> [8,8,8,8,8,8,8,8,8,8]
replicate 10 8

----------------------------------------------------------------------------------------------------
-- COMPREHESION LIST
----------------------------------------------------------------------------------------------------

-- odd :: Integral a => a -> Bool --> Odd devuelve true si es impar
-- even :: Integral a => a -> Bool --> Even devuelve true si es par

--[x*2 | x <- [1..10]] -->[x*2 | x <- [1..10]]
[x*2 | x <- [1..10]]
--[x*2 | x <- [1..10], x*2 >= 14] --> [14,16,18,20]
[x*2 | x <- [1..10], x*2 >= 14]
--[ x | x <- [50..100], x `mod` 7 == 3] --> [52,59,66,73,80,87,94]
[ x | x <- [50..100], x `mod` 7 == 3]

--boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
--boomBangs [7..13] --> ["BOOM!","BOOM!","BANG!","BANG!"]
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
boomBangs [7..13]
--[x | x <- [10..20], x /= 13, x /= 15, x /= 19] --> [10,11,12,14,16,17,18,20]
[x | x <- [10..20], x /= 13, x /= 15, x /= 19]
--[x | x <- [10..20], odd x] --> [11,13,15,17,19]
[x | x <- [10..20], odd x]
--[x | x <- [10..20], even x] --> [10,12,14,16,18,20]
[x | x <- [10..20], even x]

--[ x*y | x <- [2,5,10], y <- [8,10,11]] --> [16,20,22,40,50,55,80,100,110]
[ x*y | x <- [2,5,10], y <- [8,10,11]]
--[ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50] --> [55,80,100,110]
[ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]

--let nombres = ["rana","zebra","cabra"]
--let adjetivos = ["perezosa","enfadada","intrigante"]
--[nombre ++ " " ++ adjetivo | nombre <- nombres, adjetivo <- adjetivos] --> ana perezosa","rana enfadada","rana intrigante","zebra perezosa","zebra enfadada","zebra intrigante","cabra perezosa","cabra enfadada","cabra intrigante"]
let nombres = ["rana","zebra","cabra"]
let adjetivos = ["perezosa","enfadada","intrigante"]
[nombre ++ " " ++ adjetivo | nombre <- nombres, adjetivo <- adjetivos]

-- removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]
-- removeNonUppercase "noMEGUSTANLASRANAS" --> "MEGUSTANLASRANAS"
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]
removeNonUppercase "noMEGUSTANLASRANAS" 


--let xxs = [[0,1,2,3,4],[5,6,7],[8,9,10]]
--removeodd xxs = [ [ x | x <- xs, even x ] | xs <- xxs] --> [[0,2,4],[6],[8,10]]
--removeeven xxs = [ [ x | x <- xs, odd x ] | xs <- xxs] --> [[1,3],[5,7],[9]]
removeodd xxs = [ [ x | x <- xs, even x ] | xs <- xxs]
removeeven xxs = [ [ x | x <- xs, odd x ] | xs <- xxs]

----------------------------------------------------------------------------------------------------
-- TUPLES
----------------------------------------------------------------------------------------------------
--fst :: (a, b) -> a    --> Obtiene el primer elemento de un dupla
--snd :: (a, b) -> b    --> Obtiene el segundo elemento de un dupla
--zip :: [a] -> [b] -> [(a, b)] --> Produce una lista de duplas

--[(1,2),(8,11),(4,5)] --> [(1,2),(8,11),(4,5)]
[(1,2),(8,11),(4,5)]
--[[1,2],[8,11,5],[4,5]] --> Error
[[1,2],[8,11,5],[4,5]]
--("Christopher", 0.1, 55, [(1,2),(8,11),(4,5)]) -->  ("Christopher", 0.1, 55, [(1,2),(8,11),(4,5)])
("Christopher", 0.1, 55, [(1,2),(8,11),(4,5)])

--fst (8,11) --> 8
fst (8,11)
--snd(8,11) --> 11
snd (8,11)
--zip [1,2,3,4,5] [5,5,5,5,5] --> [(1,5),(2,5),(3,5),(4,5),(5,5)]
zip [1,2,3,4,5] [5,5,5,5,5] 
--zip [1 .. 5] ["uno","dos","tres","cuatro","cinco"] --> [(1,"uno"),(2,"dos"),(3,"tres"),(4,"cuatro"),(5,"cinco")]
zip [1 .. 5] ["uno","dos","tres","cuatro","cinco"]
--zip [1..] ["manzana", "naranja", "cereza", "mango"] --> [(1,"manzana"),(2,"naranja"),(3,"cereza"),(4,"mango")]
zip [1..] ["manzana", "naranja", "cereza", "mango"]

-- let triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10] ] 
-- length triangles --> 1000
-- let rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]
-- rightTriangles --> [(3,4,5),(6,8,10)]
-- let rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]
-- rightTriangles' --> [(6,8,10)]
let triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10] ]
length triangles 
let rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]
rightTriangles
let rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]
rightTriangles'