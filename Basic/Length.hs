mylength [] = 0
mylength (_:t) = 1 + mylength t
-- mylength [1,2,3,4,5] returns 5 --
-- mylength "programming" returns 11 --
