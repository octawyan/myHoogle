mergesort [] = []
mergesort l@[_] = l
mergesort l = 	let
	merge [] l = l
	merge l [] = l
	merge l@(h:t) l'@(h':t') = if (h < h')	then h : merge t l'
											else h' : merge l t'
	(left, right) = splitAt ((length l) `div` 2) l
				in merge (mergesort left) (mergesort right)

-- mergesort [6,3,1,5,4,2] returns [1,2,3,4,5,6] --
