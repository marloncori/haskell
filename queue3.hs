import Data.Maybe

push :: a -> Queue a -> Queue a
push e (Queue inb out) = Queue (e:inb) out

pop :: Queue a -> (Maybe a, Queue a)
pop q = 
  case top of
    Nothing   -> (top, emptyQueue)
    Just elem -> (Just elem, poppedQueue)
    where
      (top, q') = peek q
      poppedQueue = Queue (inbox q') (tail $ outbox q')

peek :: Queue a -> (Maybe a, Queue a)
peek q@(Queue [] [])    = (Nothing, emptyQueue)
peek q@(Queue inb [])   = peek $ Queue [] (reverse inb)
peek q@(Queue _ outb)   = (Just $ head outb, q)