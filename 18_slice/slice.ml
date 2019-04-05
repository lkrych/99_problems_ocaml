let slice list start finish =
    let rec take n = function
    | [] -> []
    | h :: t -> if n = 0 then [] else h :: take (n-1) t 
    in

    let rec drop n = function
    | [] -> []
    | h :: t as l -> if n = 0 then l else drop (n-1) t
    in
    take (finish - start + 1) (drop start list);;