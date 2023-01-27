
import qualified Data.Map as M

 myMap :: M.Map Int Char
 myMap = M.fromList $ zip [1..10] ['a'..'j']

 insertedMap :: M.Map Int String
 insertedMap = M.insert 11 "fizzbuzz" oldMap

 at11 :: Maybe String
 at11 = M.lookup 11 insertedMap

map :: IO()
map = do
    let newMap = M.insert key val oldMap
    in M.union oldMap otherMap
    print $ show newMap