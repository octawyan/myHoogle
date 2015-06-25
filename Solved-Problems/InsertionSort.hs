insertionsort [] = []
insertionsort l@[_] = l
insertionsort (h:t) =	let
	insert x [] = [x]
	insert x l'@(h':t') = if (x <= h')	then x :l'
										else h' : insert x t'
						in insert h (insertionsort t)

-- insertionsort [6,3,1,5,4,2] returns [1,2,3,4,5,6] --
