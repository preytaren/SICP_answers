(load "1.37-cont-frac.scm")
(define (Euler k)
 	(+ 2
	(cont-frac (lambda (x) 1.0)
 	   (lambda (x) 
	           (cond ((= (remainder x 3) 2) (* 2.0 (+ 1 (/ x 3))))
		    	 (else 1.0))) k)))
