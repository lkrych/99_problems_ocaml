open OUnit2;;
open Insert;;

let tests = "test insert function adds elements to list" >::: [
    "adds to end of list" >:: ( fun _ -> assert_equal [1] (insert 1 5 []));
    "adds to front of list" >:: ( fun _ -> assert_equal [1; 2; 3] (insert 1 0 [2; 3]));
    "adds to middle of list" >:: ( fun _ -> assert_equal [1; 2; 3; 4; 5] (insert 3 2 [1; 2; 4; 5;]));
]

let _ = run_test_tt_main tests