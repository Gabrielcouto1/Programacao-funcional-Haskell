subtracao2 :: Float->Float->Float
subtracao2 x y = (-) x y

area :: Float->Float
area r = (*) pi (r^2)

diferencaArea :: Float->Float->Float
diferencaArea x y = subtracao2 (area x) (area y)

ex10 :: Bool->Bool->Bool
ex10 p q = (p||q)&&(not(p&&q))