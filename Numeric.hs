data Vector  = Values{x :: Float, y::  Float, z:: Float}

knorm :: Float -> Vector -> Float
knorm k v1 = ((x v1)**k + (y v1)**k + (z v1)**k)**(1/k)

dotproduct :: Vector -> Vector -> Float
dotproduct v1 v2 = x v1*x v2 + y v1*y v2 + z v1* z v2

vectormult :: Vector -> Vector -> Vector
vectormult v1 v2 = Values{x = x v1 * x v2, y = y v1 * y v2, z = z v1 * z v2}

vectoradd :: Vector -> Vector -> Vector
vectoradd v1 v2 = Values{ x = x v1 + x v2, y = y v1 + y v2, z = z v1 + z v2}







a :: Vector
a = Values{x=1, y=2, z=1}

b :: Vector
b = Values{x=2, y=4, z=6}

c :: Float
c = dotproduct a b

d :: Float
d = knorm 2 a


main :: IO ()
main =
  print d
