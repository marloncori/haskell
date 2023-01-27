merge :: (Ord a) => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
     | x > y     = y : merge (x:xs) ys
     | otherwise = x : merge  xs (y:ys) 

split :: [a] -> ([a],[a])
split []             = ([], [])
split [x]            = ([x], [])
split (x : y : rest) = (x : xs, y : ys)
                       where (xs, ys) = split rest

mergeSort :: (Ord a) => [a] -> [a]
mergeSort []  = []
mergeSort [x] = [x]
mergeSort xs  = merge (mergesort ys) (mergesort zs)
                where (ys, zs) = split xs

main :: IO()
main = do
    let nums = [78, 34, 5, 56, 12, 90, 3, 100, 7]
    putStrLn " This is the original list:"
    print $ "   nums = " ++ show nums
    putStrLn "\n This is the list after merge sorting:"
    let sorted = mergeSort nums
    print $ "   sorted = " ++ show sorted
    putStrLn " Now let us split this list: "
    let new = split sorted
    print $ "   splitted = " ++ show new 