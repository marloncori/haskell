
-- expects a and b to already be sorted
merge :: (Ord a) => [a] -> [a] -> [a]
merge x [] = x
merge [] y = y
merge (x:xs) (y:ys)
    | x < y     = x : (merge xs (y:ys))
    | otherwise = y : (merge (x:xs) ys)

mergeSort :: (Ord a) => [a] -> [a] 
mergeSort [] = []
mergeSort [x] = [x]
mergeSort x = 
    merge (mergeSort firstFew) (mergeSort lastFew)
        where
            firstFew = take(div (length x) 2) x
            lastFew  = drop(div (length x) 2) x

main :: IO()
main = do
    let nums = [78, 34, 5, 56, 12, 90, 3, 100, 7]
    putStrLn " This is the original list:"
    print $ "   nums = " ++ show nums
    putStrLn "\n This is the list after merge sorting:"
    let sorted = mergeSort nums
    print $ "   sorted = " ++ show sorted
