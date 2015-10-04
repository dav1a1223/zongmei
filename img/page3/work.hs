myeven :: Int -> Bool
myeven x = mod x 2 == 0

area :: Double -> Double
area r = r*r*(22/7)

payment :: Int -> Int
payment week |week > 19 = round (fromIntegral wages * 1.06)
             |otherwise = wages
             where wages = hours * week
                   hours = days * 5
                   days = 130 *8
-- 註解test
{-還可以
  這樣
  註解-}
smaller :: Int -> Int -> Int
smaller x y = if x < y then x else y

st3 :: Int -> Int
st3 = smaller 3

poly :: Double->Double->Double->Double->Double
poly a b c x = a*x*x+b*x+c

poly1 :: Double->Double
poly1 = poly 1 2 1

--poly2 :: Double->Double->Double->Double

square :: Int->Int
square x = x*x

twice :: (a->a) -> (a->a)
twice f= f.f

quad ::Int->Int
quad x = twice square x
