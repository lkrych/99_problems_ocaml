type 'a rle =
  | One of 'a
  | Many of int * 'a;;

let mrle list =
  let create_tuple count elem =
    if count = 1 then One elem
    else Many (count, elem) in
  let rec aux count acc = function
  | [] -> []
  | [a] -> (create_tuple (count + 1) a) :: acc
  | a :: (b :: _ as t) -> if a = b
                            then aux (count + 1) acc t
                            else aux 0 ((create_tuple (count+1) a) :: acc) t in
List.rev (aux 0 [] list);;