
double :: Int -> Int
double x = x^2

fourfold :: Int -> Int
fourfold y = double (double y)

main :: IO()
main = do
    putStr " Double of number 4: "
    print $ double 4
    putStr " Double of number 16: "
    print $ double 16
    putStr " Quadruple of number 5: "
    print $ fourfold 5
    putStr " Quadruple of number 13: "
    print $ fourfold 13