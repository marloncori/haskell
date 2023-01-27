
splitListAt :: Int -> [a] -> ([a],[a])
splitListAt n xs = (take n xs, drop n xs)

main :: IO()
main = do
    putStrLn " The original list was: [1, 2, 3, 4, 5, 6, 7, 8, 9]"
    putStr " The splitted list is: "
    print $ splitListAt 3 [1, 2, 3, 4, 5, 6, 7, 8, 9]