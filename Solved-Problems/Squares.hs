pow _ 0 = 1
pow a b = a * pow a (b-1)
-- pow 2 3 returns 8 --

squares _ [] _ = []
squares pow (h:t) b = pow h b : squares pow t b
-- squares pow [1,2,3,4,5] 3 returns [1,8,27,64,125] --
