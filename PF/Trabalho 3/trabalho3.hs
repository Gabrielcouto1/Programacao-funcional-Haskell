--Gabriel Couto de Freitas  
--12021BCC040
--Trabalho 2 - Tuplas, Listas, Classes e Generalização

type Codigo = Int
type Nome = String
type Preco = Float

type Produto = (Codigo, Nome, Preco)

tabelaProdutos :: [Produto]
tabelaProdutos = [ (001, "Chocolate", 5.25)
                 , (002, "Biscoito", 10.10)
                 , (003, "Laranja", 4.60)
                 , (004, "Sabao", 2.10)
                 , (005, "Batata Chips", 6.90)
                 , (006, "Doritos", 8.90)]

