open OUnit2;;
open Compress;;

let tests = "test compress" >::: [
  "empty" >:: (fun _ -> assert_equal [] (compress []));
  "no repeat" >:: (fun _ -> assert_equal ["a"; "b"; "c"] (compress ["a"; "b"; "c"]));
  "single repeat" >:: (fun _ -> assert_equal ["a"; "b"; "c"] (compress ["a"; "a"; "b"; "c"]));
  "no repeat" >:: (fun _ -> assert_equal ["a"; "b"; "c"] (compress ["a"; "a"; "b"; "c"; "c"; "c"]));
]

let _ = run_test_tt_main tests