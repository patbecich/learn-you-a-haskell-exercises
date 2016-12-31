{-# LANGUAGE OverloadedStrings #-}
-- This function should print a single digit number as English text, or "unknown" if it's out of the range 0-9

englishDigit :: Int -> String
englishDigit x
             | x >= 0 && x <= 9 = show x
             | otherwise = "Unknown"

-- given a tuple, divide fst by snd, using pattern matching.
-- it should return undefined for division by zero

divTuple :: (Eq a, Fractional a) => (a, a) -> a
divTuple (x, 0) = undefined
divTuple (x, y) = x/y


threeZeroListHelper :: Int -> [Int] -> Bool
threeZeroListHelper 0 [] = False
threeZeroListHelper 1 [] = False
threeZeroListHelper 2 [] = False
threeZeroListHelper i [] = True
threeZeroListHelper i (x:xs)
    | i < 3 && x == 0 = threeZeroListHelper (i+1) xs
    | i >= 3 = True
    | otherwise = False

-- if the first three numbers in a list are all zero, return True
threeZeroList :: [Int] -> Bool
threeZeroList xs = threeZeroListHelper 0 xs

