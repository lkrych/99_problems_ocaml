let new_range start finish =
    let rec aux acc i j = 
        if i = j then j::acc
        else if i < j then aux (i::acc) (i+1) j (* normal order *)
        else aux (i::acc) (i-1) j (* reverse *)
        in
    List.rev (aux [] start finish)
