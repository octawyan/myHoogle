data List a = Void | Cons a (List a) deriving Show


convert Void = []
convert (Cons h t) = h : convert t
-- convert (Cons 1 (Cons 2 (Cons 3 Void))) returns [1,2,3] --


foldL f acc (Cons h t) = foldL f (f h acc) t
foldL _ acc Void = acc


foldR f acc (Cons h t) = f h (foldR f acc t)
foldR _ acc Void = acc


mapL f (Cons h t) = Cons (f h) (mapL f t)
mapL _ Void = Void


combine = \a b -> Cons a b
myreverse = foldL combine Void
-- convert (myreverse (Cons 1 (Cons 2 (Cons 3 Void)))) returns [3,2,1] --
