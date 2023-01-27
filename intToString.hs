
main :: IO()
main = do
    putStrLn "Enter any number, please: "
    putStr " Value = "
    x <- getLine
    print(show x)