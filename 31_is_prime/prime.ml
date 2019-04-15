open Printf;;

let is_prime x =
  let rec aux n =
    Printf.printf "Checking %d \n" n
    if n > (x/2)
    then true
    else if n mod 2 = 0
    then false
    else aux (n+1) in
  aux 2