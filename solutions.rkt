#lang racket

;1

(*(+(/ 10 5)5)3)

(+ 2 3 4 5)

(+(+(+(/ 10 3)2)5)1)

(+(+(+(/ 10 3.0)2)5)1)
(+ 1(+ 5(+ 2 (/ 10 3.0))))

(*(+ 3 5) (/ 10 2))

(+(*(+ 3 5)(/ 10 2))(+(+(+(/ 10 3)2)5)1))


;2

(define (discount x y)
  (* x (- 1 (/ y 100)))
  )

(discount 10 5)

(define (dc x y)
(* (- 1 (/ y 100)) x)
  )

(dc 10 5)


;3
(define (grcomdiv x y)
  (if(= y 0)
     x
     (grcomdiv y (modulo x y))))

	 
	 
;4

(define (appearances x y)
  (if (null? y) 0 (count(member x y)))
 )

(appearances 2 (list 1 2 3 2 2 4))



;8
(define (range-aux x list)
  (if (= x 0)
      list
      (range-aux (- x 1) (cons x list))))

(define (range x)
  (range-aux x null))
  

;9
(define (reversel list)
  (if(null? list)
     null
     (cons (reversel (cdr list)) (car list))))



(define (rev l)
  (if (null? l)
      null
      (append (rev (rest l)) (list(first l)))))

