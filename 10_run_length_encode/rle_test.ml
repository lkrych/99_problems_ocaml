open OUnit2;;
open Rle;;

let tests = "test rle should create run length encoding of an array" >::: [
  "empty" >:: (fun _ -> assert_equal [] (rle []));
  "no duplicates" >:: (fun _ -> assert_equal [(1, "a"); (1, "b"); (1, "c"); (1, "d");] (rle ["a"; "b"; "c"; "d"] ));
  "some duplicates" >:: (fun _ -> assert_equal [(1, "a"); (1, "b"); (1, "c"); (1, "d"); (2, "a")]  (rle ["a"; "b"; "c"; "d"; "a"; "a"]));
  "long list" >:: (fun _ -> assert_equal [(4, "a"); (1, "b"); (2, "c"); (2, "a"); (1, "d"); (4, "e")] (rle ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"]));
]

let _ = run_test_tt_main tests
