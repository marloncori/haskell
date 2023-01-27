
calcChange :: Int -> Int -> Int
calcChange owed given = if change > 0
                            then change
                        else 0
        where change = owed - given

main :: IO()
main = do
    putStrLn "How much money do you have now?"
    amount <- getLine
    putStrLn " And how much will you have to pay?"
    payment <- getLine
    putStr " So in that case your change is: "
    print $ calcChange (read amount) (read payment)