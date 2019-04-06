open OUnit2;;
open Rotate;;

let tests = "test the rotate function" >::: [
    "empty list" >:: (fun _ -> assert_equal [] (rotate [] 2));
    "positive rotation" >:: (fun _ -> assert_equal ["d"; "e"; "f"; "g"; "h"; "a"; "b"; "c"] (rotate ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"] 3));
    "negative rotation" >:: (fun _ -> assert_equal ["g"; "h"; "a"; "b"; "c"; "d"; "e"; "f"] (rotate ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"] (-2)));
]

let _ = run_test_tt_main tests