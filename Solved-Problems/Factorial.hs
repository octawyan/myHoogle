fact 1 = 1
fact n = n * fact (n - 1)
-- fact 4 returns 24 --


fact' 0 = 1
fact' n = product [1..n]
-- fact' 5 returns 120 --


factorial 0 = 1
factorial n = foldl (*) 1 [1..n] -- tail-recursive
-- factorial 6 returns 720 --
