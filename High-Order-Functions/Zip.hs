myzip [] _ = []
myzip _ [] = []
myzip (h:t) (h':t') = (h,h') : myzip t t'
