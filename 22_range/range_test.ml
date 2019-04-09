open OUnit2;;
open Range;;

let tests = "test range functions ability to create a list" >::: [
    "create a one element list" >:: ( fun _ -> assert_equal [0] (new_range 0 0));
    "create a small list" >:: ( fun _ -> assert_equal [1; 2; 3; 4; 5] (new_range 1 5));
    "create a reversed small list" >:: ( fun _ -> assert_equal [5; 4; 3; 2; 1] (new_range 5 1));
]

let _ = run_test_tt_main tests