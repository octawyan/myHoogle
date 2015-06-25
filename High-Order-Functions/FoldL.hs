myfoldl _ acc [] = acc
myfoldl f acc (h:t) = foldl f (f acc h) t
