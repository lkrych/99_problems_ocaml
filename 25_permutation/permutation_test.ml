open OUnit2;;
open Permutation;;

let print_list list = String.concat "" (List.map string_of_int list)

let tests = "test code that creates a random combination of a list" >::: [
  "empty list" >:: ( fun _ -> assert_equal [] (perm []) ~printer:print_list);
  "small list" >:: ( fun _ -> assert_equal [2; 3; 1;] (perm [1; 2; 3]) ~printer:print_list);
  "bigger list" >:: ( fun _ -> assert_equal [4; 1; 2; 3; 5] (perm [1; 2; 3; 4; 5]) ~printer:print_list);
]

let _ = run_test_tt_main tests