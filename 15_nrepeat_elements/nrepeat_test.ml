open OUnit;;
open Nrepeat;;

let tests = "test nrepeat method" >::: [
"empty array" >:: (fun _ -> assert_equal [] (nrepeat [] 2));
"no repeats" >:: (fun _ -> assert_equal [1; 2; 3] (nrepeat [1; 2; 3] 1));
"some repeats" >:: (fun _ -> assert_equal [1; 1; 1; 2; 2; 2; 3; 3; 3] (nrepeat [1; 2; 3] 3));
]

let _ = run_test_tt_main tests