let rec last_two = function
| [] -> None
| x :: [] -> None
| x :: y :: [] -> Some (x,y)
| _ :: tail -> last_two tail ;;

let test1 = last_two [ "a"; "b"; "c"; "d"] = Some ("c", "d")
let test2 = last_two ["a"] = None