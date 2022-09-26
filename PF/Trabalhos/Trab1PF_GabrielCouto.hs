--Gabriel Couto de Freitas      12021BCC040

module Main (main) where

import System.IO 

main :: IO()
main = do hSetBuffering stdout NoBuffering
          putStrLn("\n\n====================================")
          putStrLn("   Banco Gabriel Couto de Freitas")
          putStrLn("====================================")
          putStr("1. Saldo\n2. Extrato\n3. Depósito\n4. Saque\n5. Fim\nEscolha uma opcao:")
          opcao<-readLn
          case opcao of 
              1 ->do imprime "saldo.txt"
                     main
              2 ->do imprime "extrato.txt"
                     main
              3 ->do putStr("Insira o valor que deseja depositar na conta: ")
                     dep<-getLine
                     deposito (read dep)
                     putStrLn("Valor depositado.")
                     main
              4 ->do putStr("Insira o valor que deseja sacar da conta: ")
                     saq<-getLine
                     saque (read saq)
                     main
              5 ->putStrLn("\nObrigado por usar o nosso banco!")
              otherwise-> do putStrLn("\nInsira opcoes de 1 ate 5.\n\n")
                             main
        
imprime:: String->IO()
imprime endereco = do
                      conteudo <- readFile endereco
                      putStr("---------------Conteudo de ")
                      putStr(endereco)
                      putStrLn("---------------")
                      putStrLn(conteudo)
                        
deposito:: Float->IO()
deposito x = do
                y<-readFile "saldo.txt"
                putStr("Saldo anterior: ")
                putStrLn(y)--Tive que imprimir o valor lido no arquivo, caso contrario
                           --nao conseguiria escrever no arquivo 
                           --Exception: saldo.txt: openFile: resource busy (file is locked)
                writeFile "saldo.txt" (show(x + read y))
                appendFile "extrato.txt" ("\n+" ++ show x)

saque:: Float ->IO()
saque x = do
             y<-readFile "saldo.txt"
             putStr("Saldo anterior: ")
             putStrLn(y)--Tive que imprimir o valor lido no arquivo, caso contrario
                           --nao conseguiria escrever no arquivo 
                           --Exception: saldo.txt: openFile: resource busy (file is locked)
             if (x>read y) 
                then putStrLn("Nao foi possivel sacar o valor inserido (maior que o saldo)")   
                else do writeFile "saldo.txt" (show(read y - x))
                        appendFile "extrato.txt" ("\n-" ++ show x)
                        putStrLn("Valor sacado.")