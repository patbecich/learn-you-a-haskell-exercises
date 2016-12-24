{-
 -Once you've installed Haskell from http://www.haskell.org/platform/, load the interpreter with the command ghci.
 -
 -You can load (and reload) this file in the interpreter with the command: ":l 2-starting-out.hs"
 -
 -The first function has been completed as an example. All the other functions are undefined.
 -They can be implemented in one line using the material covered in http://learnyouahaskell.com/starting-out
 -
 -All indices are zero based.
 -}

-- Find the penultimate element in list l
penultimate l = last (init l)

-- Find the element at index k in list l
-- For example: "findK 2 [0,0,1,0,0,0]" returns 1

-- find 4th element [10,11,12,13,14]
-- 4 - [10,11,12,13,14]
-- 3 - [11,12,13,14]
-- 2 - [12,13,14]
-- 1 - [13,14]
-- 0 - [14]  -- take head

foo :: Int -> Int -> Int -> Int
foo a b c = a+b+c

findKChar :: Integer -> [Char] -> Char
findKChar 0 lc = head lc         
findKChar k lc = findKChar (k-1) (tail lc)

findK :: Integer -> [a] -> a
findK 0 lc = head lc         
findK k lc = findK (k-1) (tail lc)

--findKChar k lc = (((findKChar k) -1) (tail lc)) -- bad order of operations


-- Determine if list l is a palindrome

isPalindromeString :: [Char] -> Bool
isPalindromeString [] = True
isPalindromeString [x,y,z] = x == z 
isPalindromeString l = head l == last l && isPalindromeString (tail(init l))

--isPalindrome :: Eq a => [a]
--isPalindrome l = undefined



{-
 - Duplicate the elements in list xs, for example "duplicate [1,2,3]" would give the list [1,1,2,2,3,3]
 - Hint: The "concat [l]" function flattens a list of lists into a single list. 
 - (You can see the function definition by typing ":t concat" into the interpreter. Perhaps try this with other variables and functions)
 -
 - For example: concat [[1,2,3],[3,4,5]] returns [1,2,3,3,4,5]
 -}
--duplicate xs = undefined

{-
 - Imitate the functinality of zip
 - The function "min x y" returns the lower of values x and y
 - For example "ziplike [1,2,3] ['a', 'b', 'c', 'd']" returns [(1,'a'), (2, 'b'), (3, 'c')]
 -}
--ziplike xs ys = undefined

-- Split a list l at element k into a tuple: The first part up to and including k, the second part after k
-- For example "splitAtIndex 3 [1,1,1,2,2,2]" returns ([1,1,1],[2,2,2])
--splitAtIndex k l = undefined

-- Drop the element at index k in list l
-- For example "dropK 3 [0,0,0,1,0,0,0]" returns [0,0,0,0,0,0]
--dropK k l = undefined

-- Extract elements between ith and kth element in list l. Including i, but not k
-- For example, "slice 3 6 [0,0,0,1,2,3,0,0,0]" returns [1,2,3]
--slice i k l = undefined

-- Insert element x in list l at index k
-- For example, "insertElem 2 5 [0,0,0,0,0,0]" returns [0,0,0,0,0,2,0]
--insertElem x k l = undefined

-- Rotate list l n places left.
-- For example, "rotate 2 [1,2,3,4,5]" gives [3,4,5,1,2]
--rotate n l = undefined
