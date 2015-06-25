myproduct [] = 1
myproduct (h:t) = h * myproduct t
-- myproduct [1,2,3,4,5] returns 120 --
