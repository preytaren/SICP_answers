(define (fast-pow n b)
  	(fast-pow-iter n b 1))

(define (even? x)
 	(= (remainder x 2) 0))

(define (fast-pow-iter n b a)
 	(cond ((= n 0) a)
	      ((even? n) (fast-pow-iter (/ n 2) (* b b) a))
	      (else (fast-pow-iter (- n 1) b (* a b)))))
