
whatDayWillBe :: Int -> Int -> String
whatDayWillBe today thatDay = case day of
               0 -> "Sunday"
               1 -> "Monday"
               2 -> "Tuesday"
               3 -> "Wednesday"
               4 -> "Thursday"
               5 -> "Friday"
               6 -> "Saturday"
               _ -> "Unknown day"
               where 
                  day = mod (today + thatDay) 7
                  -- or day = rem (today + thatDay) 7
main :: IO()
main = do
    print $ whatDayWillBe 1 23