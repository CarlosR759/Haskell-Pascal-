module Lib where
 
someFunc :: IO ()
someFunc = putStrLn "someFunc"

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

imprimirTriangulo :: Integer -> Integer -> Integer -> IO ()
imprimirTriangulo n k i = if i <= n
                          then do imprimirEspacios 0 (n - i) 
                                  imprimirPiso i k
                                  imprimirTriangulo n k (i + 1)
                          else putStr "\n"  


imprimirPiso :: Integer -> Integer -> IO ()
imprimirPiso i k = if k <= i
                   then do let factoriali = factorial i
                           let factorialK = factorial k
                           let factorialiMenosK = factorial (i - k)
                           let resultado = factoriali `div` (factorialK * factorialiMenosK)
                           putStr . show $ resultado 
                           putStr " "
                           imprimirPiso i (k + 1)
                   else putStr "\n" 
 

imprimirEspacios :: Integer -> Integer -> IO ()
imprimirEspacios i espacios = if i < espacios
                              then do putStr " "
                                      imprimirEspacios (i+1) espacios
                              else putStr " "
