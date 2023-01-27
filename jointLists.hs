
joint :: [Int] -> [Int] -> [(Int, Int)]
joint x y = zip x y

main :: IO()
main = do
    putStr " Let us zip the lists: "
    print $ joint a b 
        where
            a = [12, 14, 16, 18]
            b = [34, 56, 78, 90]