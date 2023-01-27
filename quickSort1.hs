
quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) =
    let smaller = quickSort [a | a <- xs, a <= x]
        bigger  = quickSort [a | a <- xs, a > x]
    in smaller ++ [x] ++ bigger

quickSort' :: (Ord a) => [a] -> [a]
quickSort' [] = []
quickSort' (x:xs) = smaller ++ [x] ++ bigger
     where 
        smaller = quickSort' [a | a <- xs, a <= x]
        bigger  = quickSort' [a | a <- xs, a > x]
    
main :: IO()
main = do
    let nums = [78, 34, 5, 56, 12, 90, 3, 100, 7]
    putStrLn " This is the original list:"
    print $ "   nums = " ++ show nums
    putStrLn "\n This is the list after quick sorting:"
    let sorted = quickSort nums
    print $ "   sorted = " ++ show sorted
