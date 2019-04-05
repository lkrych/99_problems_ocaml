open OUnit2;;
open Slice;;

let tests = "test slice function" >::: [
    "empty list" >:: (fun _ -> assert_equal [] (slice [] 0 4));
    "simple slice" >:: (fun _ -> assert_equal [1; 2] (slice [0; 1; 2; 3; 4] 1 2) );
    "whole list" >:: (fun _ -> assert_equal [0; 1; 2; 3; 4] (slice [0; 1; 2; 3; 4] 0 4 ));
];;

let _ = run_test_tt_main tests