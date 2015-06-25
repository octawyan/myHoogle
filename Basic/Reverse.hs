myreverse [] = []
myreverse (h:t) = myreverse t ++ (h : [])
-- myreverse [1,2,3,4,5] returns [5,4,3,2,1] --
