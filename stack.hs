

infixr .++
(.++) :: List a -> List a -> List a
Empty .++ ys = ys
(x :-: xs) .++ ys = x :-: (xs .++ ys)

infixr :-:

data List a = Empty | a :-: (List a) deriving (Show, Read, Eq, Ord)

pop :: List a -> (a, List a)
pop Empty = error "Can't"
pop (x:-:xs) = (x,xs)

push :: a -> List a -> List a
push a alist = a :-: alist

search :: Eq a => a -> List a -> Bool
search a Empty = False
search a (x:-:xs) =
  if x == a then True
    else search a xs

def :: List Int
def = Empty

list2 :: List Int

def2 :: List Int
def2 = 1:-:Empty

list2 = 3:-:4:-:5:-:Empty

list4 :: List Int
list4 = push 1 list2

list3 :: List Int

list3 = list2 .++ def2

main :: IO ()
main = print (search 32 list4)
