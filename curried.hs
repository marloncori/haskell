
-- this is the same as
-- mult :: Int -> Int -> Int -> Int 
mult :: Int -> (Int -> (Int -> Int ))
mult x y z = x*y*z

main :: IO()
main = do
    putStr " Multiply 7, 12, 35: "
    print $ mult a b c 
    where
        a = 7
        b = 12
        c = 35