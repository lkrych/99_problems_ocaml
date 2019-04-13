let rec gencomb choose list =
    if choose = 0 then [[]]
    else match list with
    | [] -> []
    | h :: t -> 
        let with_h = List.map (fun l -> h :: l) (gencomb (choose-1) t) in
        let without_h = gencomb choose t in
        with_h @ without_h