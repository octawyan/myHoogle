myhead [] = error "head: empty list"
myhead [x] = x
myhead (h:_) = h
-- myhead [1,2,3,4,5] returns 1 --
