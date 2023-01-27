import Data.Maybe

type Queue a = ([a], [a]) 

---------------------------------------
push :: a -> Queue a -> Queue a
push x (input, output) = (x:input, output)

---------------------------------------
pop :: Queue a -> (Maybe a, Queue a)
pop ([], []) = (Nothing, ([], []))
pop (input, []) = (Just val, ([], new_out))
  where (val, new_out) = fromJust $ uncons $ reverse input
pop (input, (o:os)) = (Just o, (input, os))

---------------------------------------
peek :: Queue a -> (Maybe a, Queue a)
peek ([], []) = (Nothing, ([], []))
peek (input, []) = (Just val, ([], new_out))
  where 
    new_out = reverse input
    val = head new_out
peek (input, output@(o:_)) = (Just o, (input, output))

---------------------------------------
empty :: Queue a -> Bool
empty ([], []) = True
empty _        = False