

main :: IO()
main = do
    let var = unwords (map show [10, 20])
    print $ var