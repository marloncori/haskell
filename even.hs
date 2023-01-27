
isEven :: Integral a => a -> Bool
isEven n = n `mod` 2 == 0

main = do
    putStr " Is number 5 even? --> "
    print $ isEven 5
    putStr " Is number 18 even? --> "
    print $ isEven 18