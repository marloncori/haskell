

divAndMod :: Int -> Int -> Int
divAndMod x y = (div x y) * y + (mod x y)

main :: IO()
main = do
    putStrLn " Enter a number: "
    print $ " 37"
    
    putStrLn " Now enter a second one: "
    print $ " 24"
    
    putStr $ " The result of quot_rem for 37 and 24 is: "
    print $ divAndMod 37 24