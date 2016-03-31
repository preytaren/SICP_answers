(load "newton-method.scm")

(define (cubic a b c)
 	(lambda (x)
	 	(+ (* x x x)
		   (* a x x)
		   (* b x)
		   c)))

