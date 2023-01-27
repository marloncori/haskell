
Prelude> read "3" :: Int
3
Prelude> read "3" :: Double 
3.0

Prelude> show 3
"3"

Prelude> read $ show 3 :: Int
3

myIntToStr :: Int -> String
myIntToStr x
    | x < 3     = show x ++ " is less than three"
    | otherwise = "normal"