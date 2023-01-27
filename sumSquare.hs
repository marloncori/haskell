body :: Int -> Int -> Int
body sumSquare squareSum = 
        if sumSquare > squareSum
            then sumSquare
        else squareSum
        
sumSquareOrSquareSum :: Int -> Int -> Int
sumSquareOrSquareSum x y = 
        body (x^2 + y^2) ((x + y)^2)

main :: IO()
main = do
    putStr " Sum square or square sum? "
    print $ sumSquareOrSquareSum 77 33