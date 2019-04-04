let splittwo list index =
  let rec aux i acc = function
    | [] -> (List.rev acc, [])
    | x :: tail -> if index = 1
                then (List.rev x::acc, tail)
                else aux i+1 (x::acc) tail in
  
  aux 0 [] list
  