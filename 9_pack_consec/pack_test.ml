open OUnit2;;
open Pack;;

let tests = "test pack should pack consecutive duplicates into sublists" >::: [
  "empty" >:: (fun _ -> assert_equal [] (pack []));
  "no duplicates" >:: (fun _ -> assert_equal [[1]; [2]; [3]; [4]] (pack [1; 2; 3; 4] ));
  "some duplicates" >:: (fun _ -> assert_equal [[1; 1; 1]; [2]; [3]; [4]]  (pack [1; 1; 1; 2; 3; 4]));
  "multiple duplicates" >:: (fun _ -> assert_equal [[1; 1; 1]; [2]; [3]; [4; 4] [1]] (pack [1; 1; 1; 2; 3; 4; 4; 1]));
]

let _ = run_test_tt_main tests