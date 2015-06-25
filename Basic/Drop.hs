mydrop 0 l = l
mydrop _ [] = []
mydrop n (_:t) = mydrop (n-1) t
-- mydrop 2 [1,2,3,4,5] returns [3,4,5] --
