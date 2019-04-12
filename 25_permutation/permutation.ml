open Random;;

let rec perm list =
  let rec extract acc n = function (* use accumulator to store elements you've already seen *)
  | [] -> raise Not_found
  | h :: t -> if n = 0 then (h, acc @ t) else extract (h::acc) (n-1) t
  in

  let extract_rand list len =
    extract [] (Random.int len) list
  in

  let rec aux acc list len =
    if len = 0 then acc else
    let picked, rest = extract_rand list len in
    aux (picked::acc) rest (len - 1)
  in

  aux [] list (List.length list)