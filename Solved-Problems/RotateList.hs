rotate [] _ = []
rotate [x] _ = [x]
rotate l 0 = l
rotate l n = rotate (reverse (head(l) : (reverse (tail l)))) (n-1)
-- rotate [1,2,3,4,5] 3 returns [4,5,1,2,3] --
