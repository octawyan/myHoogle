element _ [] = False
element x (h:t) = if x == h then True
                            else element x t
-- element 2 [1,2,3,4,5] returns True --
