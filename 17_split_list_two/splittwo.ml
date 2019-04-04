let splittwo list index =
  let rec aux i acc = function
    | [] -> List.rev acc, []
    | x :: tail as l -> if i = 0
                then List.rev acc, l
                else aux (i-1) (x::acc) tail in
  
  aux index [] list
  