
fact :: Int -> Int
fact n = product [1 .. n]

main :: IO()
main = do
    putStr " Factorial of 4: "
    print $ fact 4
    putStr " Factorial of 5: "
    print $ fact 5
    putStr " Factorial of 6: "
    print $ fact 6
    putStr " Factorial of 7: "
    print $ fact 7