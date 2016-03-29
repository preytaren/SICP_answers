;recursive version of product
(define (product term a next b)
 	(if (> a b)
	    1
	    (* (term a)
	       (product term (next a) next b))))

(define (factorial n)
	(product (lambda (x) x) 1 (lambda (x) (+ x 1)) n))

(define (cal-pi n)
 	(define (double x) (* x 2))
	(define (square x) (* x x))
 	(define (item x)
	 	(/ (* (double x) (+ (double x) 2)) 
		   (square (+ (double x) 1))))
 	(* (product item 1.0 (lambda (x) (+ x 1)) n) 4))

;use let expression to rewrite cal-pi
(define (let-cal-pi n)
 	(let 

;iteration version of product
(define (product2 term a next b)
 	(define (product-iter a result)
 	    (if (> a b)
	        result
		(product-iter (next a) (* result (term a))))))
