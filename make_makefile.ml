(* This script will generate a 99 problems folder, files and Makefile for you *)

(* take user input *)
print_string "Enter the name of your problem (ex: 1_last) : ";
let problem = read_line () in
Printf.printf "Your problem is %s\n" problem
(* create directory *)
(* let directory =  Printf.sprintf ("./%s") problem; *)
(*
(* write files *)
let exercise_file =  Printf.sprintf "./%s/%s.ml" problem problem;
let test_file =  Printf.sprintf "./%s/%s_test.ml" problem problem;
let make_file =  Printf.sprintf "./%s/Makefile" problem;
                  
                  (* Unix.mkdir directory 0o666 *)
Printf.printf exercise_file;
Printf.printf test_file;
Printf.printf make_file;
*)
(* Printf.printf directory *)
                  (*
create_file exercise_file
create_file test_file
create_make make_file problem

(* create files *)
let create_file filepath =
  let oc = open_out filepath in
  close_out oc
  Printf.printf "Created %s \n" filepath;

(*create and write to MakeFile *)
let make_makefile filepath problem =
  let make = open_out filepath in
  fprintf make "%s\n" "build:";  
  fprintf make "\t%s" "ocamlbuild -pkgs oUnit %s.byte" problem;
  close_out make
  Printf.printf "Created %s \n" filepath; *)