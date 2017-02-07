# Racket-Problems
Theory of Algorithms Problems


#### 1. **. Re-write the following expressions in Racket and evaluate them using a Racket interpreter/compiler.** </br>
```
(*(+(/ 10 5)5)3)

(+ 2 3 4 5)

(+(+(+(/ 10 3)2)5)1)

(+(+(+(/ 10 3.0)2)5)1)
(+ 1(+ 5(+ 2 (/ 10 3.0))))

(*(+ 3 5) (/ 10 2))

(+(*(+ 3 5)(/ 10 2))(+(+(+(/ 10 3)2)5)1))
```
-------

#### 2. **. Define a procedure discount that takes two arguments: an item’s initial price and a percentage discount. It should return the new price:** </br>
```
(define (discount x y)
  (* x (- 1 (/ y 100)))
  )

(discount 10 5)
```
```
(define (dc x y)
(* (- 1 (/ y 100)) x)
  )

(dc 10 5)
```
-------
#### 3. **. Define a function grcomdiv that takes two integers and returns their greatest common divisor.** </br>
```
(define (grcomdiv x y)
  (if(= y 0)
     x
     (grcomdiv y (modulo x y))))

(grcomdiv 10 2)
```
-------
#### 4. **. Write a function called appearances that returns the number of times its first argument appears as a member of its second argument.** </br>
```
(define (appearances x y)
  (if (null? y) 0 (count(member x y)))
 )

(appearances 2 (list 1 2 3 2 2 4))
```
-------
#### 8. **. Write a function called range that takes an integer n and returns a list containing the atoms 1, 2, 3, . . . , n.** </br>
```
(define (range-aux x list)
  (if (= x 0)
      list
      (range-aux (- x 1) (cons x list))))

(define (range x)
  (range-aux x null))
```
-------
#### 8. **. Write a function called reversel that takes a list and returns it reversed.** </br>
```
(define (reversel list)
  (if(null? list)
     null
     (cons (reversel (cdr list)) (car list))))
     
     
(define (rev l)
  (if (null? l)
      null
      (append (rev (rest l)) (list(first l)))))
     
     
(rev (list 1 2 3 4 5))
```
-------


