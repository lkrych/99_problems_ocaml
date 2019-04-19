open OUnit2;;
open Listprimes;;

let tests = "test function that returns a list of all the primes between x and y" >::: [
  "between 0 and 1" >:: (fun _ -> assert_equal 1 (List.length (list_primes 0 1))~printer:string_of_int);
  "between 1 and 10" >:: (fun _ -> assert_equal 5 (List.length (list_primes 1 10))~printer:string_of_int);
  "between 2 and 7290" >:: (fun _ -> assert_equal 1000 (List.length (list_primes 1 7290))~printer:string_of_int)

]

let _ = run_test_tt_main tests