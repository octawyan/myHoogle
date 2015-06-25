mytake 0 _ = []
mytake _ [] = []
mytake n (h:t) = h : mytake (n-1) t
-- mytake 3 [1,2,3,4,5] returns [1,2,3] --
