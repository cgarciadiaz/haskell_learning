----------------------------------------------------------------------------------------------------
{-
    05-types_and_typeclasses
-}
----------------------------------------------------------------------------------------------------

--TYPES AND TYPECLASESSES
-- :t 'a'-->'a' :: Char
:t 'a'
-- :t True --> True :: Bool
:t True
-- :t "HELLO!" --> "HELLO!" :: [Char]
:t "HELLO!"
-- :t (True, 'a') --> (True, 'a') :: (Bool, Char)  
:t (True, 'a')  
-- :t 4 == 5  -->  4 == 5 :: Bool
-->  4 == 5 :: Bool

-- char
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]
-- Int
addThree :: Int -> Int -> Int -> Int  
addThree x y z = x + y + z
-- Integer
factorial :: Integer -> Integer
factorial n = product [1..n]
-- Float
circumference :: Float -> Float
circumference r = 2 * pi * r
--Double
circumference' :: Double -> Double
circumference' r = 2 * pi * r
--true --> True :: Bool
:t true

--Type variables
-- :t head --> head :: [a] -> a
:t head
-- :t fst --> fst :: (a, b) -> a
:t fst 

-- --> Clases de tipos paso a paso (1ª parte)
--El operador de == es ua función. También loson + - * /. Si el operadr estacompuesto por caracteres especiales (no alfanumericos),
-- es considerada una función infija por defecto. Para llamar a la función de forma prefija se envuelve entre parentesis de la siguiente manera:
-- (+) 1 4 --> 5
-- Cualquier cosa antes de => es una restricción de clase.

-- :t (==) --> (==) :: Eq a => a -> a -> Bool
:t (==)
-- :t (/=) :: Eq a => a -> a -> Bool
:t (/=) 

-- :t (+) --> (+) :: Num a => a -> a -> a
:t (+)
-- :t (-) --> (-) :: Num a => a -> a -> a
:t (-)
-- :t (*) --> (*) :: Num a => a -> a -> a
:t (*)
-- :t (/) --> (/) :: Fractional a => a -> a -> a
:t (/)

-- (+) 1 4 --> 5
(+) 1 4 
-- (*) 1 4 --> 4
(*) 1 4

-- La clase de tipos Eq proporciona una interfaz para las comparaciones de igualdad. Cualquier tipo que tenga sentido
-- comparar dos valores de ese tipo por igualdad debe ser miembro de la clase Eq. Todos los tipos estándar de Haskell
-- excepto el tipo IO (un tipo para manejar la entrada/salida) y las funciones forman parte de la clase Eq.
-- :t elem --> elem :: (Foldable t, Eq a) => a -> t a -> Bool
:t elem
-- Prefija
elem 1 [1,0] --> True
-- infija
1 `elem` [1,0]
--La función elem tiene el tipo (Eq a) => a -> [a] -> Bool porque usa == sobre los elementos de la lista para 
-- saber si existe el elemento indicado dentro de la lista.

--Basic Typeclasses
Eq
Ord 
Show
Read
Enum
Bounded
Num
Integral
Floating 