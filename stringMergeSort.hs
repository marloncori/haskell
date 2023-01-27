
wrap :: String -> [String]
wrap x = [x]

merge :: [String] -> [String] -> [String]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
    | x > y     = y : merge (x:xs)  ys
    | otherwise = x : merge  xs  (y:ys)

mergePairs :: [[String]] -> [[String]]
mergePairs [] = []
mergePairs [xs] = [xs]
mergePairs (xs:ys:xss) = merge xs ys : mergePairs xss

mergesort' :: [[String]] -> [String]
mergesort' [] = []
mergesort' [xs] = xs
mergesort' xss = mergesort' (mergePairs xss)

mergesort :: [String] -> [String]
mergesort = mergesort' . map wrap

main :: IO()
main = do
    let names = ["Geysa", "Mateus", "Lazaro", "Teresa", "Roberto", "Marlon", "Laura", "Beniamin", "Ana"]
    putStrLn " This is the original list of names:"
    print $ "   names = " ++ show names
    putStrLn "\n This is the list after merge sorting:"
    let sorted = mergesort names
    print $ "   sorted = " ++ show sorted
