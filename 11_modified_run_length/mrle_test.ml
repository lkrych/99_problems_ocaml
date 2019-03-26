open OUnit2;;
open Mrle;;

let tests = "test mrle should create run length encoding of an array using the rle one many type" >::: [
  "empty" >:: (fun _ -> assert_equal [] (mrle []));
  "no duplicates" >:: (fun _ -> assert_equal [ One "a"; One "b"; One "c"; One "d"] (mrle ["a"; "b"; "c"; "d"] ));
  "some duplicates" >:: (fun _ -> assert_equal [ One "a"; One "b"; One "c"; One "d"; Many (2, "a")]  (mrle ["a"; "b"; "c"; "d"; "a"; "a"]));
  "long list" >:: (fun _ -> assert_equal [ Many (4, "a"); One "b"; Many (2, "c"); Many (2, "a"); One "d"; Many (4, "e")] (mrle ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"]));
]

let _ = run_test_tt_main tests
