
first :: [Int] -> Int
first list = head list

withoutFirst :: [Int] -> [Int]
withoutFirst list = tail list

third :: [Int] -> Int
third list = list !! 2

firstThree :: [Int] -> [Int]
firstThree list = take 3 list

fourLess :: [Int] -> [Int]
fourLess list = drop 4 list

size :: [Int] -> Int
size list = length list

reduce :: [Int] -> Int
reduce list = sum list

mult :: [Int] -> Int
mult list = product list

evens :: [Int] -> [Int]
evens [] = []
evens list = newList
    where 
        newList = [x | x <- list, (mod x 2) == 0]

odds :: [Int] -> [Int]
odds [] = []
odds list = newList
    where 
        newList = [x | x <- list, (mod x 2) /= 0]

main :: IO()
main = do
    putStr " First Element of list: "
    print $ first [2, 3, 4, 5, 7, 9]
    
    putStr " Tail Elements of list: "
    print $ withoutFirst [2, 3, 4, 5, 7, 9]
    
    putStr " Element at index 2: "
    print $ third [2, 3, 4, 5, 7, 9]
    
    putStr " First three Elements of list: "
    print $ firstThree [2, 3, 4, 5, 7, 9, 10]
    
    putStr " Four first elements taken out: "
    print $ fourLess [2, 3, 4, 5, 7, 9, 10]

    putStr " Size of the original list: "    
    print $ size [2, 3, 4, 5, 7, 9]

    putStr " Sum of list: "
    print $ reduce [2, 3, 4, 5, 7, 9]

    putStr " Product of list: "
    print $ mult [2, 3, 4, 5, 7, 9, 10]

    putStr " List of even numbers: "
    print $ evens [2, 3, 4, 5, 7, 9, 10]

    putStr " List of odd numbers: "
    print $ odds [2, 3, 4, 5, 7, 9, 10]

    putStr " Reversed list: "
    print $ reverse [2, 3, 4, 5, 7, 9, 10]
