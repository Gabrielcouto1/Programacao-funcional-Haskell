--Ex da aula
import Data.Char

type X = Float
type Y = Float
type Ponto = (X,Y)

dist :: Ponto->Ponto->Float
dist (x1,y1) (x2,y2) = sqrt( ((x2-x1) ^ 2)+((y2-y1)^2))

--Ex1
converte :: Char->(Char, Char, Int)
converte c
    |isLower c = (c,(toUpper c), ord c)
    |otherwise = (toLower c, c, ord c)

--Ex2
type Equacao = (Float, Float, Float)
equacao :: Equacao->(Float,Float)

equacao (a,b,c) = do
    if(delta<0) 
        then (-1.1,-1.1)
        else
            (((-b)+(sqrt delta))/2,((-b)-(sqrt delta))/2)
    where 
        delta = (b^2)- ((4*a)*c)

--Ex3
type Nome = String
type Idade = Int
type Sexo = String
type Pessoa = (Nome, Idade, Sexo)

pessoa :: Int->Pessoa
pessoa x 
    |x==1 = ("Gabriel", 12, "Masc")
    |x==2 = ("AAA", 23, "Fem")
    |x==3 = ("aa", 2, "r")
    |x==4 = ("aa", 2, "r")
    |x==5 = ("aa", 2, "r")
    |x==6 = ("aa", 2, "r")
    |x==7 = ("aa", 2, "r")
    |otherwise = ("Pessoa indisponivel", 0, "0")

idade :: Pessoa->Int
idade (_, x , _) = x

somaIdade :: Int->Int
somaIdade n
    |n<=0 = 0
    |otherwise = do
                    idade (pessoa n) + somaIdade (n-1)

mediaIdade :: Int->Float
mediaIdade n = ((somaIdade n)/n)