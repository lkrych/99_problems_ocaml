open OUnit2;;
open Prime;;

let tests = "test is_prime function" >::: [
  "check with some non-prime numbers 1" >:: ( fun _ -> assert_equal false (is_prime 4));
  "check with some non-prime numbers 2" >:: ( fun _ -> assert_equal false (is_prime 9));
  "check with some non-prime numbers 3" >:: ( fun _ -> assert_equal false (is_prime 220));
  "check with some non-prime numbers 4" >:: ( fun _ -> assert_equal false (is_prime 386));
  "check with some prime numbers 1" >:: ( fun _ -> assert_equal true (is_prime 23));
  "check with some prime numbers 2" >:: ( fun _ -> assert_equal true (is_prime 97));
  "check with some prime numbers 3" >:: ( fun _ -> assert_equal true (is_prime 977));
]

let _ = run_test_tt_main tests