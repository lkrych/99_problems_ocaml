type 'a rle =
  | One of 'a
  | Many of int * 'a;;

let decoderle list = 
  let rec many acc n x =
    if n = 0 then acc else many (x::acc) (n-1) x in
  
  let rec aux acc = function
  | [] -> acc
  | One x :: tail -> aux (x::acc) tail
  | Many (n, x) :: tail -> aux (many acc n x) tail in

  List.rev(aux [] list)