myfoldr _ acc [] = acc
myfoldr f acc (h:t) = f h (myfoldr f acc t)
