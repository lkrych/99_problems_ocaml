let dupl list =
  let rec aux acc = function
  | [] -> acc
  | x :: tail -> aux (x::x::acc) tail in
  List.rev( aux [] list)
