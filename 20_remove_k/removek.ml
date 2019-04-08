let rec removek index = function
    | [] -> []
    | h :: t -> if index = 0
        then t
        else h :: removek (index - 1) t