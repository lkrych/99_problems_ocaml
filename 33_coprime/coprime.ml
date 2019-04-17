let coprime x y =
  if Gcd.gcd x y = 1
  then true
  else false