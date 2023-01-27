
import Data.Maybe

newtype Stack a = Stack [a] deriving Show

empty :: Stack a
empty = Stack []

push :: a -> Stack a -> Stack a
push x (Stack xs)= Stack (x:xs)

pop :: Stack a -> (Maybe a, Stack a)
pop (Stack []) = (Nothing, Stack [])
pop (Stack (x:xs)) = (Just x, Stack xs)

-- example in ghci repl
--   *Main> push 4 $ push 3 empty
--   Stack [4,3]
--   *Main> pop $ push 4 $ push 3 empty
--   (Just 4,Stack [3])