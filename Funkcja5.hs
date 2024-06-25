take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
    | n <= 0   = []
take' _ []     = []
take' n (x:xs) = x : take' (n-1) xs

main :: IO ()
main = do
    print $ take' 3 [1, 2, 3, 4, 5]      -- powinno wypisać [1, 2, 3]
    print $ take' 0 [1, 2, 3, 4, 5]      -- powinno wypisać []
    print $ take' 2 ([] :: [Int])        -- powinno wypisać []
    print $ take' (-1) [1, 2, 3, 4, 5]   -- powinno wypisać []