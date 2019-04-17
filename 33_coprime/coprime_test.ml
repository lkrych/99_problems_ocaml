open OUnit2;;
open Coprime;;

let tests = "test if coprime (gcd is 1)" >::: [
  "4 and 8 should be false" >:: (fun _ -> assert_equal false (coprime 4 8) ~printer:string_of_bool);
  "13 and 27 should be true" >:: (fun _ -> assert_equal true (coprime 13 27) ~printer:string_of_bool);
  "20536 and 7826 should be false" >:: (fun _ -> assert_equal false (coprime 20536 7826) ~printer:string_of_bool);
]

let _ = run_test_tt_main tests