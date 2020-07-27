import Data.Char
import Text.Printf

isCaractere :: String -> Bool
isCaractere [] = False
isCaractere [x] = isLetter x
isCaractere (x:xs) = if (isLetter x) then isCaractere xs
                     else False



getNumbers :: IO(Int)
getNumbers = do putStrLn "Digite um numero inteiro"
                x <- readLn :: IO Int
                if (x == 0) then return 0
                else do
                    xs <- getNumbers
                    return (x+xs)


main :: IO()
main = do
            putStrLn "Digite uma palavra"
            str <- getLine
            case str of
                "" -> return () 
                _  -> do if (isCaractere str) then printf "%s\n" (reverse str)
                         else printf "Erro\n"

                         main


    