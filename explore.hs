add  :: Float -> Float -> Float
add x y
  =  x + y

x = 6
y = 42.2


counter :: Integer -> Integer
counter s =
  if  s <= 10 then
    counter (s+1)
  else s

fib :: Integer -> Integer
fib n =
  if n /= 0 then
     n*fib(n-1)
  else 1

main = print $
-- show

    fib x
-- /show
