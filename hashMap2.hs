
main :: IO()
main = do
    let myMap = fromList hashInt [(42, "forty-two"), (0, "zero")]
    print $ show myMap