module Main where

import Lib

main :: IO ()
main = do
       
    print " ------------------------- "
    print "|   Triangulo de pascal   |"
    print " ------------------------- " 
    putStr "\n\n"
    print "Cuantos Pisos deseas imprimir ? "
    line <- getLine
    let lineAsInteger = read line :: Integer 
    imprimirTriangulo lineAsInteger 0 0
