let is_prime x =
  let rec aux n =
    if n > x/2
    then true
    else if x mod n = 0
    then false
    else aux (n+1) in
  aux 2

let list_primes start finish =
  let rec aux acc x y =
    if x = y
    then acc
    else if is_prime x
    then aux (x::acc) (x+1) y
    else aux acc (x+1) y
  in
  aux [] start finish
