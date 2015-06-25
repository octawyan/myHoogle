data Tree a = Empty | Node (Tree a) a (Tree a) deriving Show


convert (Node left r right) = convert left ++ "-" ++ show r ++ "-" ++ convert right
convert Empty = "()"
-- convert (Node (Node Empty 1 Empty) 2 (Node Empty 3 Empty)) returns "()-1-()-2-()-3-()" --


mapT f (Node left r right) = Node (mapT f left) (f r) (mapT f right)
mapT _ Empty = Empty


zipT f (Node left r right) (Node left' r' right') = Node (zipT f left left') (f r r') (zipT f right right')
zipT _ Empty _ = Empty
zipT _ _ Empty = Empty


foldT f acc (Node left r right) = f r (f (foldT f acc left) (foldT f acc right))
foldT _ acc Empty = acc


sumT (Node left r right) = r + sumT left + sumT right
sumT Empty = 0
-- sumT (Node (Node Empty 1 Empty) 2 (Node Empty 3 Empty)) returns 6 --
