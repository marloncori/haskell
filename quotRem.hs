

quotAndRem :: Int -> Int -> Int
quotAndRem x y = (quot x y) * y + (rem x y)

main :: IO()
main = do
    putStrLn " Enter a number: "
    print $ " 10"
    
    putStrLn " Now enter a second one: "
    print $ " 25"
    
    putStr $ " The result of quot_rem for 10 and 25 is: "
    print $ quotAndRem 10 25