--Gabriel Couto de Freitas 
--12021BCC040

--------------Excercicio 1
maior x y = if x<y then y else x

ordena2a :: Int->Int->(Int,Int)
ordena2a x y = if (maior x y)==x then (y,x) else (x,y)

ordena2b:: Int->Int->(Int,Int)
ordena2b x y 
    |maior x y == x = (y,x)
    |otherwise = (x,y)

--------------Excercicio 2
mesesA :: Int->String
mesesA x
    |x==1 = "Janeiro"
    |x==2 = "Fevereiro"
    |x==3 = "Marco"
    |x==4 = "Abril"
    |x==5 = "Maio"
    |x==6 = "Junho"
    |x==7 = "Julho"
    |x==8 = "Agosto"
    |x==9 = "Setembro"
    |x==10 = "Outubro"
    |x==11 = "Novembro"
    |x==12 = "Dezembro"
    |otherwise = "Mes invalido"

mesesB :: Int->String
mesesB x = case x of
    1->"Janeiro"
    2->"Fevereiro"
    3->"Marco"
    4->"Abril"
    5->"Maio"
    6->"Junho"
    7->"Julho"
    8->"Agosto"
    9->"Setembro"
    10->"Outubro"
    11->"Novembro"
    12->"Dezembro"
    otherwise-> "Mes invalido"

--------------Excercicio 3
soma x y = x+y

triangulo ::Int->Int->Int->IO()
triangulo x y z 
    |(x<=0)||(y<=0)||(z<=0)||(maior(soma x y) z)==z||(maior(soma x z) y)==y ||(maior(soma z y) x)==x = putStrLn("Nao e um triangulo")
    |x==y&&y==z = putStrLn("Triangulo Equilatero")
    |x/=y&&y/=z&&x/=z = putStrLn("Triangulo Escaleno")
    |otherwise = putStrLn("Triangulo Isosceles")
    
--------------Excercicio 4
quadrado x = x*x

maior4 :: Int->Int->Int
maior4 x y = let 
                m=quadrado x + quadrado y
                n= quadrado (x+y)

            in  
                maior m n 
--------------Excercicio 5
ex5 :: IO()
ex5 = do
        putStr("Insira o nome do aluno: ")
        nome<-getLine
        putStr("Insira o numero de matricula de ")
        putStr(nome)
        putStr(": ")
        matricula<-getLine
        putStr("Insira a nota de ")
        putStr(nome)
        putStr(": ")
        nota<-getLine
        putStrLn("")
        putStr("Nome: ")
        putStr(nome)
        putStr("   Matricula: ")
        putStr(matricula)
        putStr("   Nota: ")
        putStrLn(nota)