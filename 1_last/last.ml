(* last returns the last element of a list *)
let rec last = function
  | [] -> None
  | x :: [] -> Some x
  | x :: tail -> last tail

let test1 = last [ "a"; "b"; "c"; "d"] = Some "d"
let test2 = last [] = None
