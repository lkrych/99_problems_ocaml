open Random;;
open Printf;;

let print_list list = String.concat "" (List.map string_of_int list)

let perm list =
  let rec sample_wo_replacement list already_selected =
    let () = Printf.printf "sample is being called with %s and %s" (print_list list) (print_list already_selected) in
    let length = (List.length list) - 1 in
    let selected = Random.int(length) in
    if List.mem selected already_selected
    then sample_wo_replacement list already_selected
    else selected 
  in

    (* find element at index x *)
  let rec find_index_x x = function
  | [] -> raise Not_found
  | h :: t -> if x = 0 then h else find_index_x (x-1) t 
  in

  let rec aux acc selected = function
    | [] -> acc
    | h :: t as l ->
      let select = sample_wo_replacement l selected in
      let old_el = find_index_x select l in
      let () = Printf.printf "acc is %s, selected is %s, select is %d, old el is %d" (print_list acc) (print_list selected) select old_el in
      aux (old_el::acc) (select::selected) t 
  in
  
  aux [] [] list;;