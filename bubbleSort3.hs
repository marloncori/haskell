swapTill' :: (Ord a) => Int -> [a] -> [a]
swapTill' 0 = id
swapTill' cnt = \(x:y:xs) -> min x y : swapTill' (cnt - 1) (max x y:xs)

bubbleSort' :: (Ord a) => [a] -> [a]
bubbleSort' xs = foldr swapTill' xs [1 .. length xs-1]

---------------------------------------------------------
swapTill x [] = [x]
swapTill x (y:xs) = less : swapTill (greater) xs
        where
            less = min x y
            greater = max x y 

bubbleSort :: (Ord a) => [a] -> [a]
bubbleSort = foldr swapTill []

main :: IO()
main = do
    let nums = [78, 34, 5, 56, 12, 90, 3, 100, 7]
    putStrLn " This is the original list:"
    print $ "   nums = " ++ show nums
    putStrLn "\n This is the list after bubble sorting:"
    let sorted = bubbleSort nums
    print $ "   sorted = " ++ show sorted
