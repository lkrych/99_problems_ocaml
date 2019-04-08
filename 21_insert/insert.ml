let rec insert el i = function
| [] -> [el]
| h :: t -> if i == 0
    then el :: h:: t
    else h :: insert el (i-1) t