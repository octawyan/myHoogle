myreplicate 0 _ = []
myreplicate n a = a : myreplicate (n-1) a
-- myreplicate 3 10 returns [10,10,10] --
