mysum [] = 0
mysum (h:t) = h + mysum t
-- mysum [1,2,3,4,5] returns 15 --
