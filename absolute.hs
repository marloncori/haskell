
absol :: Int -> Int
absol n | n >= 0    = n
        | otherwise = -n

main :: IO()
main = do
    putStrLn " Write a number: "
    x <-getLine
    putStr " This is the absolute version: "
    print $ absol (read x)