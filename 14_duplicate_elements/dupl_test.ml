open OUnit2;;
open Dupl;;

let tests = "test whether dupl duplicates the elements of a list" >::: [
  "no elements" >:: (fun _ -> assert_equal [] (dupl []) ); 
  "one element" >:: (fun _ -> assert_equal ["a"; "a"] (dupl ["a"])); 
  "many elements" >:: (fun _ -> assert_equal ["a"; "a"; "b"; "b"; "c"; "c"] (dupl ["a"; "b"; "c"]) ); 
]


let _ = run_test_tt_main tests