let dropn list n = 
  let rec aux acc count = function
  | [] -> acc
  | x :: tail -> if count mod n = 0
              then aux acc (count+1) tail
              else aux (x::acc) (count+1) tail in

List.rev (aux [] 1 list)