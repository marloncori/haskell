
data DoubleList a
  = LeftEnd  a (DoubleList a)
  | Middle   a (DoubleList a) (DoubleList a)
  | RightEnd a (DoubleList a)

let e1 = LeftEnd  1 e2
    e2 = Middle   2 e1 e3
    e3 = Middle   3 e2 e4
    e4 = Middle   4 e3 e5
    e5 = RightEnd 5 e4