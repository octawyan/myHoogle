index (h:_) 0 = h
index (h:t) n = index t (n - 1)
-- index [1,2,3,4,5] 3 returns 4 --
