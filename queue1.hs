newtype Queue a = Queue [a] deriving (Show, Eq, Read)
--or type Queue a = [a]

push :: a -> Queue a -> Queue a
push x Empty             = Value x Empty
push x (Value a pointer) = Value a (push x pointer)

pop :: Queue a -> Maybe (a, Queue a)
pop Empty             = Nothing
pop (Value x pointer) = Just (x, pointer)

peek :: Queue a -> Maybe a
peek Empty       = Nothing
peek (Value x _) = Just x 

empty :: Queue a -> Bool
empty Empty = True
empty _     = False