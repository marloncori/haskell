
sortIt :: (Ord a) => [a] -> [a]
sortIt   [] = []
sortIt  [x] = [x]
sortIt (x:xs) | x > head xs = head xs : sortIt (x:tail xs)
              | otherwise   = x : sortIt xs

bubbleSort :: (Ord a) => [a] -> [a]
bubbleSort xs = foldl(\acc e -> sortIt acc) xs xs

main :: IO()
main = do
    let nums = [78, 34, 5, 56, 12, 90, 3, 100, 7]
    putStrLn " This is the original list:"
    print $ "   nums = " ++ show nums
    putStrLn "\n This is the list after bubble sorting:"
    let sorted = bubbleSort nums
    print $ "   sorted = " ++ show sorted
