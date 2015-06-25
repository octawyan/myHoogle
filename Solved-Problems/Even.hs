onlyEvens = \l -> filter (\x -> if (mod x 2 == 0) then True else False) l
-- onlyEvens [1,2,3,4,5,6] returns [2,4,6] --


onlyEvens' = \l -> filter (even) l
-- onlyEvens' [1,7,9,13,17] returns [] --
