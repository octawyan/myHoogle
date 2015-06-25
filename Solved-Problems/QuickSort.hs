quicksort [] = []
quicksort l@[_] = l
quicksort (h:t) =	let
	lower [] = []
	lower (h':t') = if (h' < h)	then h' : lower t'
	                            else lower t'

	strictlyGreater [] = []
	strictlyGreater (h'':t'') = if (h'' > h)	then h'' : strictlyGreater t''
	                                          else strictlyGreater t''

            in quicksort (lower t) ++ [h] ++ quicksort (strictlyGreater t)

	-- quicksort [6,3,1,5,4,2] returns [1,2,3,4,5,6] --
