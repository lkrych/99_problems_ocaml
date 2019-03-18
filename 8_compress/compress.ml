let rec compress = function
| a :: (b :: _ as t) -> if a = b then compress t else a :: compress t
| smaller -> smaller;;
(* save b :: _ as the variable t, if a and b are the same, recursively
call the function with t, which will include b *)