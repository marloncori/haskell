

avg :: [Int] -> Int
avg ns = sum ns `div` length ns

main :: IO()
main = do
    putStr " Average of list [4, 7, 9, 10]: "
    print $ avg [4, 7, 9, 10]