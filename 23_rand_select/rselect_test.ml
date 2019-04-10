open OUnit2;;
open Rselect;;

let string_from_int_list list = String.concat "" (List.map string_of_int list)


let tests = "test randomly selecting integers from lists" >::: [
  "second argument is zero" >:: (fun _ -> assert_equal [] (rselect [1; 2; 3] 0) ~printer:string_from_int_list);
  "test case 1" >:: (fun _ -> assert_equal [3; 1] (rselect [1; 2; 3] 2) ~printer:string_from_int_list);
  "test case 2" >:: (fun _ -> assert_equal [2; 3; 5] (rselect [1; 2; 3; 4; 5] 3) ~printer:string_from_int_list);
]

let _ = run_test_tt_main tests