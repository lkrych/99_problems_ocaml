open OUnit2;;
open Lotto;;

let display_arr list = String.concat "" (List.map string_of_int list)

let tests = "test randomly selecting n numbers with lotto function" >::: [
  "ask for 0 numbers" >:: (fun _ -> assert_equal [] (lotto 0 10) ~printer:display_arr);
  "ask for 3 numbers" >:: (fun _ -> assert_equal [2; 5; 4] (lotto 3 10) ~printer:display_arr);
  "ask for 5 numbers" >:: (fun _ -> assert_equal [9; 1; 2; 5; 4] (lotto 5 10) ~printer:display_arr);
]

let _ = run_test_tt_main tests