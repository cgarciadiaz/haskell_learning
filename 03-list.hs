----------------------------------------------------------------------------------------------------
{-
    03.list
-}
----------------------------------------------------------------------------------------------------
--  let   -->  a = 1 dentro de GHCi es equivalente ha escribir a = 1 en un fichero y luego cargarlo.
--  ++    -->  Operardor para concatenar elementos
--  :     -->  Operardor para oncatenar elementos en una lista
--  !!    --> Operardor para buscar por índices

let lostNumbers = [4,8,15,16,23,42]
lostNumbers
-- Definir varias variables
let a = [1,2,3,4,5] 
let b = [5,9,10,11,12]
let c = "hello"
let d = " world"
let e = ['h','e','l'] 
let f = ['l','o'] 

--Probar el operador ++
a ++ b
c ++ d
e ++ f
--Dará un error al intentar realizar una unión de dos variables con diferente tipo.
a ++ f
--Operador : para concatenar algo al principio de una lista. (también llamado operador cons).
'U':"n gato negro"
5:[1,2,3,4,5]
--Dará un error al intentar realizar una unión de dos variables con diferente tipo.
'a':[1,2,3]
--1:(2:[]) -->[1,2]
1:(2:[])
--1:2:3:[] --> [1,2,3]
1:2:3:[] 
--Operador !! Para buscar por índices
"Buenos días señores" !! 5
--Unir listas con listas
let ll = [[1,1],[2,2]]
let jj = [[3,3]]
--output: --> [[1,1],[2,2],[3,3]]
ll ++ jj
--Unir un elemento con una lista de elementos
let l = [1,1,2,2]
let j = [3,3]
--Dará error porque j tiene que tener una dimension menos i
j:l
----output: --> [[3,3],[1,1],[2,2]]
j:ll

--Definimos dos tuplas k => dimension 1, j => dimension 2
let k0 = 0
let k = [0]
let kk = [[0]]
let hh = [[1,2]]

--Al concatenar por delante la lista k [0] con la hh [[1,2]] nos queda => [[0],[1,2]]
--[0]:[[1,2]] --> [[0],[1,2]]
[0]:[[1,2]]
--Al concatenar por delante la lista kk [[0]] con la hh [[1,2]] nos queda => [[0],[1,2]]
--[[0]] ++ [[0],[1,2]] --> [[0],[0],[11,22]]
[[00]] ++ [[00],[11,22]]

hh++kk:k
--(0 : [1]) : [[22]] --> (0 : [1]) : [[2]]
(0 : [1]) : [[22]]
-- (0 : [1]) : [[22]] ++ [[33]] --> [[0,1],[22],[33]]
(0 : [1]) : [[22]] ++ [[33]]
--(0 : [1]) : [[22]] ++ [[33]]) : [[[44]]] --> [[[0,1],[22],[33]],[[44]]]
(0 : [1]) : [[22]] ++ [[33]]) : [[[44]]]

--Para saber el tipo de una función se utiliza ":t nombre_función"
    -- head :: [a] -> a     Devuelve el primer elemento de la lista
    -- tail :: [a] -> a     Devuelve la lista excepto el primer elemento
    -- last :: [a] -> a     Devuelve el último elemento de la lista
    -- init :: [a] -> a     Devuelve la lista excepto el último elemento

let char_list = ['a','b','c','d']
let char_list2 = ['e','f','g','h']
let int_list = [1,2,3,4]

head char_list
head int_list

--z = [1,2,3,4]
z = int_list
-- head z --> 1
head z 
-- tail z --> [2,3,4]
tail z
-- tail z --> 4
last z
-- init z --> [1,2,3]
init z

--head [[1,2]] -->[1,2] 
head [[1,2]]
--tail [[1,2]] --> []
tail [[1,2]]
-- last [[1,2]] -->[1,2]
last [1,2]
-- init [[1,2]] --> []
init [[1,2]]

-- length :: Foldable t => t a -> Int               Devuelve el tamaño de la lista
-- null :: Foldable t => t a -> Bool                Devuelve True si la lista esta vacía
-- reverse :: [a] -> a                              Invierte una lista.
-- take ::  Int -> [a] -> [a]                       Toma un número y una lista y extrae dicho número de elementos de una lista
-- drop ::  Int -> [a] -> [a]                       Toma un número y una lista y elimina dicho número de elementos del principio de una lista
-- maximum :: (Foldable t, Ord a) => t a -> a       Toma una lista que se puede ordenar, y devuelve el el elemeto más grande
-- minimum :: (Foldable t, Ord a) => t a -> a       Toma una lista que se puede ordenar, y devuelve el el elemeto más pequeño
-- sum :: (Foldable t, Num a) => t a -> a           Toma una lista de números y devuelve la suma de sus elementos
-- product :: (Foldable t, Num a) => t a -> a       Toma una lista de números y devuelve el producto de sus elementos
-- elem :: (Foldable t, Eq a) => a -> t a -> Bool   

lenght []
--lenght [0,2,3] --> 3
lenght [0,2,3]
--length ['a','b']--> 2
length ['a','b']

-- null [] --> True
null []
--null [1] --> False
null [1]

-- reverse [0,2,3] --> [3,2,0] 
reverse [0,2,3] 

-- take 3 [5,4,3,2,1] --> [5,4,3]
take 3 [5,4,3,2,1]
-- take 1 [3,9,3] --> [3]
take 1 [3,9,3]
-- take 5 [1,2] --> [1,2]
take 5 [1,2] 
-- take 0 [6,6,6] --> []
take 0 [6,6,6]
--3`take` [3,4,5,6] --> [3,4,5]
3 `take` [3,4,5,6]
-- drop drop 2 [6,5,4,3,2,1] --> [4,3,2,1]
drop 2 [6,5,4,3,2,1

--minimum ['0','9','A','a','Z','z'] -->'0'
minimum ['0','9','A','a','Z','z'] 
--maximum ['0','9','A','a','Z','z'] --> 'z'
maximum ['0','9','A','a','Z','z'] --> 'z'
-- minimum [8,4,2,1,5,6] --> 1
minimum [8,4,2,1,5,6]
-- maximum [1,9,2,3,4] --> 9
maximum [1,9,2,3,4]

-- sum [8,4,2,1,5,6] --> 20
sum [8,4,2,1,5,6]
-- sum [8.4,4.7,2,1,5,6] --> 27.1
sum [8.4,4.7,2,1,5,6] 
--product [8.4,4.7,2,1,5,6] --> 2368.8 

-- elem 4 [3,4,5,6] --> True
elem 4 [3,4,5,6]
--0 `elem` [3,4,5,6] --> False
0 `elem` [3,4,5,6] 

-- :? --> lista de comandos disponibles en el prompt
:?