open Printf;;

let is_prime x =
  let rec aux n =
    if n > (x/2)
    then true
    else if x mod n = 0
    then false
    else aux (n+1) in
  aux 2