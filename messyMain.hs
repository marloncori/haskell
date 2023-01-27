messyMain :: IO()
messyMain = do
    print "Who is the email for?"
    recipient <- getLine
    print "What is the email title?"
    title <- getLine
    print "And who is the author?"
    author <- getLine
    print("\nDear " ++ recipient ++ ", \n" ++
        "Thanks for buying " ++ title ++ ".\n Best wishes,\n" ++ author)