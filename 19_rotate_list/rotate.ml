let split list index =
    let rec aux acc i = function
    | [] -> List.rev acc, [] (* returns a tuble *)
    | h :: t as l -> if i = 0
        then List.rev acc, l
        else aux (h::acc) (i-1) t in
    aux [] index list

let rotate list index =
    let len = List.length list in
    let index = if len = 0 then 0 else ( index mod len + len) mod len in
    if index = 0 then list
    else let a,b = split list index in b @ a;;
