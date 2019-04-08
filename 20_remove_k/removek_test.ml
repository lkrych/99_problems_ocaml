open OUnit2;;
open Removek;;

let tests = "test method that removes elements from array" >::: [
    "empty array" >:: (fun _ -> assert_equal [] (removek 3 []));
    "empty array" >:: (fun _ -> assert_equal [1; 2; 4] (removek 2 [1; 2; 3; 4]));
    "empty array" >:: (fun _ -> assert_equal [1; 2; 3; 4;] (removek 5 [1; 2; 3; 4]));
]

let _ = run_test_tt_main tests