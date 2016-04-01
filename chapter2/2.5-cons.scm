(define (pow a n)
 	(cond ((> 1 n) a)
	      ((even? n) (square (pow a (/ n 2))))
	      (else (* a (pow a (- n 1))))))

(define (cons a b)
 	(* (expt 2 a) (expt 3 b)))

(define (car x)
 	(if (= 0 (remainder x 2))
	    (+ 1 (car (/ x 2)))
	    0))

(define (cdr x)
 	(if (= 0 (remainder x 3))
	    (+ 1 (cdr (/ x 3)))
	    0))
