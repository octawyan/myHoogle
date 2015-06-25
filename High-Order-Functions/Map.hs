mymap _ [] = []
mymap f (h:t) = f h : mymap f t
