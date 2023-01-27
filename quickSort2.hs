quicksort2Helper :: (Ord a) => Int -> Int -> STArray s Int a -> ST s ()
quicksort2Helper start end stArr = when (start + 1 < end) $ do
  pivotIndex <- partition stArr start end
  quicksort2Helper start pivotIndex stArr
  quicksort2Helper (pivotIndex + 1) end stArr

quicksort2 :: (Ord a) => Array Int a -> Array Int a
quicksort2 inputArr = runSTArray $ do
  stArr <- thaw inputArr
  let (minIndex, maxIndex) = bounds inputArr
  quicksort2Helper minIndex (maxIndex + 1) stArr
  return stArr

main :: IO()
main = do
    let nums = [78, 34, 5, 56, 12, 90, 3, 100, 7]
    putStrLn " This is the original list:"
    print $ "   nums = " ++ show nums
    putStrLn "\n This is the list after quick sorting:"
    let sorted = quickSort2 nums
    print $ "   sorted = " ++ show sorted
