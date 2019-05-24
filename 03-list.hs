----------------------------------------------------------------------------------------------------
{-
    03.list
-}
----------------------------------------------------------------------------------------------------
--let a = 1 dentro de GHCi es equivalente ha escribir a = 1 en un fichero y luego cargarlo.

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
    -- head :: [a] -> a
    -- tail :: [a] -> a
    -- last :: [a] -> a
    -- init :: [a] -> a
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