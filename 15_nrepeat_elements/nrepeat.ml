let nrepeat list n =
  let rec repeat acc n el = 
    if n = 0 then acc else repeat (el::acc) (n-1) el in
  let rec aux acc = function
  | [] -> acc
  | x :: tail -> aux (repeat acc n x) tail in
  aux [] (List.rev list)