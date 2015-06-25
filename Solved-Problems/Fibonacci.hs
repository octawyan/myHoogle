fib 0 = 0
fib 1 = 1
fib n = fib (n-2) + fib (n-1)
-- fib 6 returns 8 --


fibo' i j = i : fibo' j (i+j)
fibo n = (fibo' 0 1) !! n
-- fibo 7 returns 13 --


fibonacci' i j k n = if (k == n)  then i
                                  else fibonacci' j (i+j) (k+1) n
fibonacci n = fibonacci' 0 1 0 n
-- fibonacci 8 returns 21 --
