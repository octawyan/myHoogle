mytail [] = error "tail: empty list"
mytail [x] = []
mytail (_:t) = t
-- mytail [1,2,3,4,5] returns [2,3,4,5] --
