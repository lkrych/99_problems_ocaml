Open OUnit;;
Open Decoderle;;

let tests = "test decoderle should decode a run length encoded array into the original array" >::: [
  "no elements in input" >:: (fun _ -> assert_equal nil (decoderle []));
  "no repeats" >:: (fun _ -> assert_equal ["a"; "b"; "c"; "d"] (decoderle [ One "a"; One "b"; One "c"; One "d"]));
  "simple input" >:: (fun _ -> assert_equal ["a"; "b"; "c"; "d"; "a"; "a"] ( decoderle [ One "a"; One "b"; One "c"; One "d"; Many (2, "a")]));
  "complex input" >:: (fun _ -> assert_equal ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"] ( decoderle [ Many (4, "a"); One "b"; Many (2, "c"); Many (2, "a"); One "d"; Many (4, "e")])) ;
]