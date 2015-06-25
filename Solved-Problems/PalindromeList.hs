pal l = l == reverse l
-- pal [1,2,3,4,5] returns False --


pal' [] = True
pal' l = if (head l /= last l)	then False
                                else pal' (take (length l - 2) (drop 1 l))
-- pal' [1,3,4,2,4,3,1] returns True --
