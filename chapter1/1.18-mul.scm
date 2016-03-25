(load "1.17-mul.scm")

(define (multi a b)
 	(multi-iter a b 0))

(define (multi-iter a b n)
 	(cond ((= b 0) n)
	      ((even? b) (multi-iter (double a) (halve b) n))
	      (else (multi-iter a (- b 1) (+ a n)))))
