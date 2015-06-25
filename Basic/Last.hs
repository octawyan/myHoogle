mylast [] = error "last: empty list"
mylast [x] = x
mylast [x, y] = y
mylast (_:t) = mylast t
-- mylast [1,2,3,4,5] returns 5 --
