myinit [] = error "init: empty list"
myinit [x] = []
myinit [x, y] = [x]
myinit (h:t) = h : myinit t
-- myinit [1,2,3,4,5] returns [1,2,3,4] --
