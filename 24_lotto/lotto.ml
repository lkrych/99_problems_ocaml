open Random;;

let lotto n max =

  let sample max =
    Random.int(max)
  in

  let rec random_sample_wo_replacement already_chosen max =
    let selection = sample max in
    if List.mem selection already_chosen (* check if selection exists in already collected numbers *)
    then random_sample_wo_replacement already_chosen max
    else selection
  in

  let rec aux acc n = 
    if n = 0
    then acc
    else 
      let selected = random_sample_wo_replacement acc max in
      aux (selected::acc) (n-1)
    in
  aux [] n
