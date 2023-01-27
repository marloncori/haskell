
add2 :: Int -> Int
add2 y = (\x -> y + x) 3

add3 :: Int -> Int
add3 y = (\y -> 
          (\x -> y + x) 1) 2

main :: IO()
main = do
    putStr " Add2 = "
    print $ add2 4
    putStr " Add3 = "
    print $ add3 9