bubbleUp :: (Ord a) => [a] -> [a]
bubbleUp [] = [] 
bubbleUp [x] = [x]
bubbleUp (x:y:xs) = smaller : bubbleUp(larger : xs)
    where 
        smaller = min x y
        larger  = max x y

bubbleSort :: (Ord a) => [a] -> [a]
bubbleSort list = foldl (\acc _ -> bubbleUp acc) list [0 .. length list]

main :: IO()
main = do
    let nums = [78, 34, 56, 12, 90, 3, 7]
    putStrLn " This is the original list:"
    print $ "   nums = " ++ show nums
    putStrLn "\n This is the list after bubble sorting:"
    let sorted = bubbleSort nums
    print $ "   sorted = " ++ show sorted
