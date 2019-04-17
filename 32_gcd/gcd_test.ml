open OUnit2;;
open Gcd;;

let tests = "test greatest common divisor algorithm" >::: [
  "4 and 8 should be 4" >:: (fun _ -> assert_equal 4 (gcd 4 8) ~printer:string_of_int);
  "13 and 27 should be 1" >:: (fun _ -> assert_equal 1 (gcd 13 27) ~printer:string_of_int);
  "20536 and 7826 should be 2" >:: (fun _ -> assert_equal 2 (gcd 20536 7826) ~printer:string_of_int);

]

let _ = run_test_tt_main tests