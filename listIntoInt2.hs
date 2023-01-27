
fromDigits :: [Integer] -> Integer
fromDigits xs = sum (zipWith (*) (reverse xs) (iterate (*10) 1))

concatDigits :: [Int] -> Int
concatDigits xs = aggregate (xs, 0)
  where aggregate :: ([Int], Int) -> Int
        aggregate ([], acc) = acc
        aggregate (x:xs, acc) = aggregate (xs, (acc * 10 + x))

main :: IO()
main = do
    let num1 = fromDigits [1,2,3,4,5]
    print $ show num1
    let num2 = concatDigits [1,2,3,4,5,7]
    print $ show num2
