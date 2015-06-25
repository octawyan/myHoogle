myfilter _ [] = []
myfilter p (h:t) = if (p h) then h : myfilter p t
							else myfilter p t
