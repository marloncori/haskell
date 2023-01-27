
-- built-in function fst
first :: (a, b) -> a
first (x, _) = x

-- built-in function snd
second :: (a, b) -> b
second (_, y) = y

main :: IO()
main = do
    putStr " First element of tuple: "
    print $ first (3, 4)
    putStr " Second element of tuple: "
    print $ second (3, 4)