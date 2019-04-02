let splittwo list index =
  let rec build_list acc = function
    | [] -> acc
    | x :: tail -> build_list (acc::x) tail
  let rec aux acc list = function
  | [] -> acc
  | x :: tail ->
    if index = 0
    then [acc, build_list list]
    else aux (acc :: x)