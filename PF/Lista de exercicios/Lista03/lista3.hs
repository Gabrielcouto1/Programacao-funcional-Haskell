--Gabriel Couto de Freitas      12021BCC040

--Exercicio 1
imprimeNvezes :: Int->IO()
imprimeNvezes n
    |n<=0 = putStrLn("")
    |otherwise = do putStrLn("Frase")
                    imprimeNvezes (n-1)

--Exercicio 2
eLogico :: Bool->Bool->Bool
eLogico p q
    |(p==True)&&(q==True) = True
    |otherwise = False

--Exercicio 3
eLogico3 :: Bool->Bool->Bool
eLogico3 p q
    |(p==True) = q
    |(p==False) = False

--Exercicio 4
comb :: Int->Int->Int
comb n k 
    |k==1 = n
    |k==n = 1
    |otherwise = (+) (comb (n-1) (k-1)) (comb (n-1) k)