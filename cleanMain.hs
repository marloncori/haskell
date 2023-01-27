
toPart :: String -> String
toPart recipient = "Dear " ++ recipient ++ ", \n"

bodyPart :: String -> String
bodyPart title = "Thanks for buying me " ++ title ++ " yesterday.\n"

fromPart :: String -> String
fromPart author = "Best wishes,\n" ++ author

writeEmail :: String -> String -> String -> String
writeEmail recipient title author = toPart recipient ++
                                    bodyPart title ++
                                    fromPart author
main :: IO()
main = do
    print "Who is the email for?"
    recipient <- getLine
    print "What is the email title?"
    title <- getLine
    print "And who is the author?"
    author <- getLine
    print $ writeEmail recipient title author
