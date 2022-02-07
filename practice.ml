
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

21.
fun x -> x ** 2. ;;
(* ^^ this is an anonymous function in which fun {variable} : {type} *)
let word = fun w : string -> w  ^ w ;;

36. 
let div_mod x y = 
   (x / y), (x mod y) ;;

let div_mod (x : int) (y : int) : int * int =
   x / y, x mod y ;; 

37. 
let month_day (y : int) : int * int =
   fun a -> y mod 19 
      fun b -> y / 100
         fun d -> b / 4
            fun e -> b mod 4
               fun f -> (b + 8) / 25
                  fun g -> (b - f + 1) / 3
                     fun h -> ((19 * a) + b - d - g + 15) mod 30
                        fun i -> c / 4
                           fun k -> c mod 4
                              fun l -> (32 + (2 * e) + (2 * i) - h - k) mod 7
                                 fun m -> (a + (11 * h) + (22 * l)) / 451
                                    ((h + l - (7 * m) + 114) / 31), (((h + l - (7 * m) + 114) mod 31) +1) ;;

38. 
let snd (pair : int * int) : int =
   match pair with
   | _x, y -> y ;;

 39. 

let fst (pair : int * int) : int =
    match pair with  
    | x , _y -> x ;; 

let fst (x, _y : int * int) : int =
    x ;;

40. 
let slope (x1, y1 : float * float) 
    (x2, y2 : float * float) 
    : float =
    sqrt ((y2 -. y1) /. (x2 -. x1)) ;;

43. 
let rec sum_ (sum : int list) : int =
   match sum with 
   | [] -> 0
   | hd :: tl -> hd + sum_ tl ;;

44. 
let rec prod_ (prod : int list) : int =
   match prod with 
   | [] -> 1
   | hd :: tl -> hd * prod_ tl ;;

45.
let rec sums (sum : (int * int) list) : int list =
   match sum with 
   | [] -> []
   | (x ,y) :: tl -> (x + y) :: sums tl ;; 

46. 
let rec inc_all (inc : int list) : int list =
   match inc with
   | [] -> []
   | hd :: tl -> hd + 1 :: inc_all tl ;;

47. 
let rec square_all (all : int list) : int list =
   match all with 
   | [] -> [] 
   | hd :: tl -> (hd * hd) :: square_all tl ;; 

48. 
let rec append (app1 : int list) (app2 : int list) : int list =
   match app1 with 
   | [] -> app2
   | hd :: tl -> hd :: (append tl app2);; 