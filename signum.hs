
sigNum :: Int -> Int
sigNum num | num < 0   = -1
           | num == 0  = 0
           | otherwise = 1

main :: IO()
main = do
    putStrLn " Write a number: "
    x <-getLine
    putStr " This is sigNum result: "
    print $ sigNum (read x)