--Gabriel Couto de Freitas
--12021BCC040
--Lista 5 - Classes e Generalização

--Exercicio 1A
import Data.Char

numOf :: Char->String->Int 
numOf char str = length (filter (==char) str)

--Exercicio 1B
ellen :: [String]->[Int]
ellen = map (length)

--Exercicio 1C
ssp :: [Int]->Int
ssp lista = sum (map (^2) lista)

--Exercicio 2
separa :: [Char]->([Char],[Char])
separa string = do let
                       x = filter isAlpha string
                       y = filter isDigit string
                   (x,y)

--Exercicio 3-----------------------------------------------------------------------------
--a)
const x y = x

-- A funcao const tem tipo geral mais basico a->b->a 
-- Essa funcao sempre retorna o primeiro valor inserido, independendo do segundo 

--b)
swap (x,y) = (y,x)

-- O tipo mais geral é (b, a) -> (a, b) 
-- A funcao swap, como o nome ja diz, troca dois elementos de uma tupla de lugar

--c)
apply f x = f x

-- O tipo mais geral da funcao apply é (t1 -> t2) -> t1 -> t2
-- Ela serve para simplesmente aplicar uma funcao a um valor

--d)
flipp f x y = f y x

-- O tipo mais geral da funcao flip é (t1 -> t2 -> t3) -> t2 -> t1 -> t3
-- A funcao serve para inverter a ordem de dois argumentos de uma funcao
------------------------------------------------------------------------------------------

--Exercicio 4A
data ShopItem = ShopItem{
    nome :: String,
    quantidade :: Float,
    precounit :: Float
}

listaProd :: [ShopItem]
listaProd = [ShopItem "prod1" 10 333.32,
          ShopItem "prod2" 30 494.111,
          ShopItem "prod3" 20 38938.44]

--Exercicio 4B
getPreco :: ShopItem->Float
getPreco prod = quantidade prod * precounit prod

precoTotal :: [ShopItem]->Float
precoTotal lista = do let
                          preco = map getPreco lista
                      foldr (+) 0 preco