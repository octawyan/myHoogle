-- tail-recursive function --
naturalSum 0 = 0
naturalSum n = foldl (+) 0 (take n (foldr (:) [] [1..]))
-- naturalSum 5 returns 15 --
