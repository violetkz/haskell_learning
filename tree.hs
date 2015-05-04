
data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Eq)

signalnode :: a ->  Tree a
signalnode m = Node m EmptyTree EmptyTree

insert ::  a ->  Node a -> Tree a
insert t EmptyTree = signalnode t
insert t (Node a left right) 
    | t == a = Node a left right
    | t < a  = Node a (insert t left) right
    | t > a  = Node a left (insert t right)

