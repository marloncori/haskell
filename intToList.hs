
import Data.Char (digitToInt)


fat :: [Int] -> [Int]
fat xs = concat $ map (map digitToInt) $ map show $ xs

fat' :: [Int] -> [Int]
fat is = is >>= show >>= return . digitToInt


main :: IO()
main = print $ fat [123, 123]

