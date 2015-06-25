line = \i m -> head (drop (i-1) m)
-- line 2 [[1,2,3],[4,5,6],[7,8,9]] returns [4,5,6] --


element = \i j m -> head (drop (j-1) (head (drop (i-1) m)))
-- element 3 1 [[1,2,3],[4,5,6],[7,8,9]] returns 7 --


add = \m n -> zipWith (\x y -> zipWith (+) x y) m n
add' = \x y -> zipWith (zipWith (+)) x y
add'' = zipWith (zipWith (+))
add''' = zipWith $ zipWith (+)
-- add''' [[1,2,3],[4,5,6],[7,8,9]] [[6,2,9],[4,1,5],[7,8,3]] returns [[7,4,12],[8,6,11],[14,16,12]] --


trans = \m -> foldr (\l acc -> zipWith (:) l acc) (map (\_ -> []) m) m
-- trans [[6,2,9],[4,1,5],[7,8,3]] returns [[6,4,7],[2,1,8],[9,5,3]] --


multiply = \m m' -> map (\l -> map (\c -> foldl (+) 0 (zipWith (*) l c)) (trans m')) m
-- multiply [[1,2,3],[4,5,6],[7,8,9]] [[6,2,9],[4,1,5],[7,8,3]] returns [[35,28,28],[86,61,79],[137,94,130]] --
