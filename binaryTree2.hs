
import Data.List (group, sort)
-------------------------------------------------
data Tree = Nil | Node Tree Int Tree deriving (Eq, Show)
------------------------------------------------
treeMap :: (Int -> Int) -> Tree -> Tree
treeMap _ Nil = Nil
treeMap f (Node l v r) = (Node (treeMap f l) (f v) (treeMap f r))
------------------------------------------------
depthFirstPreOrder :: Tree -> [Int]
depthFirstPreOrder Nil = []
depthFirstPreOrder (Node l v r) = [v] ++ (depthFirstPreOrder l) ++ (depthFirstPreOrder l)
--------------------------------------------
depthFirstInOrder :: Tree -> [Int]
depthFirstInOrder (Nil) = []
depthFirstInOrder (Node l v r) = (depthFirstInOrder l) ++ [v] ++ (depthFirstInOrder r)
--------------------------------------------
depthFirstPostOrder :: Tree -> [Int]
depthFirstPostOrder (Nil) = []
depthFirstPostOrder (Node l v r) = (depthFirstPostOrder l) ++ (depthFirstPostOrder r) ++ [v]
------------------------------------------
breadthFirst :: Tree -> [Int]
breadthFirst tree = catMaybes $ nodeVal <$> breadthFirst' [tree] [tree]
  where
    breadthFirst' :: [Tree] -> [Tree] -> [Tree]
    breadthFirst' (Nil : queue) orderedNodes = breadthFirst' queue orderedNodes
    breadthFirst' (Node l _ r : queue) orderedNodes = breadthFirst' (queue ++ [l,r]) (orderedNodes ++ [l,r])
    breadthFirst' _ orderedNodes = orderedNodes

    nodeVal :: Tree -> Maybe Int
    nodeVal Nil = Nothing
    nodeVal (Node _ x _) = Just x
------------------------------------------------------
insert :: Tree -> Int -> Tree
insert Nil insertVal = Node Nil insertVal Nil
insert (Node l currentNodeVal r) insertVal
  | insertVal == currentNodeVal = Node l currentNodeVal r
  | insertVal  < currentNodeVal = Node (insert l insertVal) currentNodeVal r
  | otherwise                   = Node l currentNodeVal (insert r insertVal)
--------------------------------------------------------
mkBalancedBinarySearchTreeList :: (Ord a) => [a] -> [a]
mkBalancedBinarySearchTreeList = mkBalancedBinarySearchTreeList' . sortAndRmdups
  where
    sortAndRmdups = map head . group . sort

    mkBalancedBinarySearchTreeList' :: [a] -> [a]
    mkBalancedBinarySearchTreeList' [] = []
    mkBalancedBinarySearchTreeList' xs =
      case length xs > 2 of
        True ->
          let mid = (quot (length xs) 2)
              (left, right) = splitAt mid xs
              (rightL, rightR) = splitAt 1 right
          in rightL ++ mkBalancedBinarySearchTreeList' left ++ mkBalancedBinarySearchTreeList' rightR
        False -> xs
-------------------------------
mkTree :: [Int] -> Tree
mkTree xs = foldl insert Nil xs
-------------------------------
mkBinaryBalancedSearchTree :: [Int] -> Tree
mkBinaryBalancedSearchTree = mkTree . mkBalancedBinarySearchTreeList
---------------------------------
contains :: Tree -> Int -> Bool
contains Nil _ = False
contains (Node t1 v t2) x 
  | x == v    = True
  | x  < v    = contains t1 x 
  | otherwise = contains t2 x
---------------------------------
leftMost :: Tree -> Maybe Int
leftMost Nil = Nothing
leftMost (Node Nil v _) = Just v
leftMost (Node left v _) = leftMost left
---------------------------------
rightMost :: Tree -> Maybe Int
rightMost Nil = Nothing
rightMost (Node _ v Nil) = Just v
rightMost (Node _ v r) = rightMost r
---------------------------------
delete :: Tree -> Int -> Tree
delete Nil _ = Nil
delete (Node l v r) x
  | x == v   =
      case (succ l r) of
        Just succ' -> Node (left l r) succ' (right l r)
        Nothing -> Nil
  | x <  v   = Node (delete l x) v r
  | x >  v   = Node  l v (delete r x)
  where
    succ :: Tree -> Tree -> Maybe Int
    succ l Nil = rightMost l
    succ _ r   = leftMost r

    left :: Tree -> Tree -> Tree
    left l Nil = leftSubtree l
    left l _   = l

    right :: Tree -> Tree -> Tree
    right l Nil = Nil
    right _ r   = rightSubtree r

    -- return the right subtree without the leftmost item
    rightSubtree :: Tree -> Tree
    rightSubtree Nil = Nil
    rightSubtree (Node Nil _ r) = r
    rightSubtree (Node l v r) = Node (rightSubtree l) v r
    -- return the left subtree without the rightmost item
    leftSubtree :: Tree -> Tree
    leftSubtree Nil = Nil
    leftSubtree (Node l _ Nil) = l
    leftSubtree (Node l v r) = Node l v $ leftSubtree r