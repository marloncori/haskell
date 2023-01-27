-- pattern matching
sqr :: Int -> Int
sqr 0 = 1
sqr n = n * n

main :: IO()
main = do
    putStrLn "Please enter a number: "
    number <- getLine
    print "The square of " ++ number ++ "is: "
    print(sqr number)