
example 14: 
let a = 1.88496 in let b = 2.51328 
  in sqrt (a ** 2. +. b ** 2.) ;; 

OR 

let a, b = 1.88496, 2.51328 in } -> pattern-matching over pairs
sqrt (...)

example 15: 
(let s = "hi ho " in s ^ s ^ s ;;
parentheses not necessary

17.
1. let x = 3 in
   let y = 4 in
   y * y ;;

   - : int = 16 
2. let x = 3 in
   let y = x + 2 in
   y * y ;;

   - : int = 25

3. let x = 3 in
   let y = 4 + (let z = 5 in z) + x in
   y * y ;;

   - : int = 144 

18.
let tax_rate = 0.05 ;;
let price = 5. ;;
let price = price *. (1. +. tax_rate) ;;
price ;;

- : float 

20. 
    1. 2, int 
    2. 2, int
    3. none
    4. OCaml, string
    5. OCaml, string
    6. none??
    7. ( ** ) evaluates to float -> float -> float 