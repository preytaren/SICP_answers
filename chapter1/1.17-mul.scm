(define (double x)
        (* 2 x))

(define (halve x)
 	(/ x 2))

(define (even? x)
 	(= (remainder x 2) 0))

(define (mul a b)
 	(cond ((= b 0) 0)
	      ((even? b) (double (mul a (halve b))))
	      (else (+ a (mul a (- b 1))))));multiplication

