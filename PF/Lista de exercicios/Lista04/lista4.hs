--Gabriel Couto de Freitas
--12021BCC040

--Exercicio 1
addPares :: [(Int,Int)] ->[Int]
--addPares [] = [0]
-- addPares [(x,y)] = [(x+y)|x<-[(fst(x,y))],y<-[(snd(x,y))]]
soma :: [(Int,Int)]->[Int]
soma [(x,y)] = [x+y]
addPares [(x,y),(z,w)] = [(x+y),(z+w)]
addPares (x:xs) = [x|x<-soma xs] 