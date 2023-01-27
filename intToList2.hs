import Data.Char (digitToInt)

fat::[Int]->[Int]
fat [] = []
fat ls = concat $ map (map digitToInt) (map show ls)

main :: IO()
main = print $ fat [123, 123]
