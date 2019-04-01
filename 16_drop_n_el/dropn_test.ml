open OUnit;;
open Dropn;;

let tests = "test dropn function" >::: [
  "no elements" >:: (fun _ -> assert_equal [] (dropn [] 1));
  "one element" >:: (fun _ -> assert_equal [] (dropn [1] 1));
  "some elements" >:: (fun _ -> assert_equal ["a"; "b"; "d"; "e"; "g"; "h"; "j"] (dropn ["a";"b";"c";"d";"e";"f";"g";"h";"i";"j"] 3));
]

let _ = run_test_tt_main tests