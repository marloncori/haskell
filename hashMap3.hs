

module MyModule where

import Data.Map (Map)             -- This just imports the type name
import qualified Data.Map as Map  -- Imports everything else, but with names 
                                  -- prefixed with "Map." (with the period).

-- Example: make a Map from a key/value pair
ages :: Map String Integer
ages = Map.fromList [("Joe", 35), ("Mary", 37), ("Irma", 16)]

-- Example: look up somebody and return a message saying what their age is.
-- 'Nothing' means that the map didn't have the key.
findAge :: String -> String
findAge name = case Map.lookup name ages of
                 Nothing  -> "I don't know the age of " ++ name ++ "."
                 Just age -> name ++ " is " ++ show age ++ " years old."

-- Example: make a map with one extra entry compared to `ages` above.
moreAges :: Map String Integer
moreAges = Map.insert "Steve" 23 ages

-- Example: union of two maps.
evenMoreAges :: Map String Integer
evenMoreAges = Map.union moreAges anotherMap
    where anotherMap = Map.fromList [("Metuselah", 111), ("Anuq", 3)]