
fromDigits :: [Integer] -> Integer
fromDigits = foldl addDigit 0
    where
        addDigit num d = 10 * num + d

joiner :: [Integer] -> Integer
joiner = read . concatMap show

main :: IO()
main = do
    let num1 = fromDigits [1,2,3,4,5]
    print $ show num1
    let num2 = joiner [1,2,3,4,5]
    print $ show num2
