myzipWith _ [] _ = []
myzipWith _ _ [] = []
myzipWith f (h:t) (h':t') = f h h' : myzipWith f t t'
