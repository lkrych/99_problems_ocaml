open OUnit2;;
open Printf;;
open Gencomb;;


let printlist l = String.concat "" (List.map (fun x -> string_of_int x) l)
let printll l = String.concat "" (List.map (fun ll -> printlist ll) l) 

let tests = "test ability to make combinations with gencomb function" >::: [
    "pass 0" >:: ( fun _ -> assert_equal [[]] (gencomb 0 [1; 2; 3; 4]) ~printer:printll);
    "pass 1" >:: ( fun _ -> assert_equal [[1]; [2]; [3]; [4]] (gencomb 1 [1; 2; 3; 4]) ~printer:printll);
    "pass 1" >:: ( fun _ -> assert_equal [[1; 2]; [1;3]; [1;4]; [2; 3]; [2; 4]; [3; 4]] (gencomb 2 [1; 2; 3; 4]) ~printer:printll);
]

let _ = run_test_tt_main tests