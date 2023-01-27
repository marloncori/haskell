
splitAtN :: Int -> [] a -> ([] a, [] a)
splitAtN = \n -> \list ->
    case n of 
        0 -> ([head list], tail list)
        otherwise -> let(spl1, spl2) = splitAtN (n-1) (tail list)
                in (head list:splt1, spl2)

main :: IO()
main = do
    print(splitAtN 3 [1, 2, 3, 4, 5, 6, 7, 8, 9])