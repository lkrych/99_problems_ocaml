open OUnit2;;
open Splittwo;;

let tests = "Split a list into two parts; the length of the first part is given. " >::: [
    "empty list" >:: (fun _ -> assert_equal ([],[]) (splittwo [] 1 ));
    "simple case" >:: (fun _ -> assert_equal (["a"], ["b"; "c"]) (splittwo ["a"; "b"; "c"] 1));
    "empty list" >:: (fun _ -> assert_equal (["a"; "b"; "c"], ["d"; "e"; "f"; "g"; "h"; "i"; "j"]) (splittwo ["a";"b";"c";"d";"e";"f";"g";"h";"i";"j"] 3;) );

]

let _ = run_test_tt_main tests