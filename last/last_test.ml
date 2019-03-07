open OUnit2;;
open Core;;
open Last;;

let test1 test_ctxt = assert_equal Some "d" (last [ "a"; "b"; "c"; "d"]);;
let test2 test_ctxt = assert_equal None (last []);;

let tests = "test suite for last" >::: [
      "empty" >:: (fun _ -> assert_equal None (last []));
      "one"   >:: (fun _ -> assert_equal Some 1 (last [1]));
      "many"  >:: (fun _ -> assert_equal Some "d" (last [ "a"; "b"; "c"; "d"]));
]

let _ = run_test_tt_main tests

                         (* compile:  ocamlbuild -package oUnit last_test.byte *)
                         (* run ./last_test.byte*)
