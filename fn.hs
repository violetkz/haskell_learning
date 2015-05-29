
fn :: Integer -> Integer
fn 0 = 0
fn 1 = 1
fn n = fn(n - 1) + fn(n -2)
