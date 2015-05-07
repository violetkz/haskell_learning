-- calcbmis:: (Floating  a) => a -> [a]
-- calcbmis xs = [bmi | (w,h) <-xs, let bmi = w / h ^ 2]

multTree:: (Num a) => a -> a -> a -> a
multTree x y z = x * y * z
