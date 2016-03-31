(load "1.42-compose.scm")
(define (repeated f n)
 	(lambda (x)
	 	(if (> 2 n)
		    (f x)
		    (f ((repeated f (- n 1)) x)))))
	
(define (inc x)
 	(+ x 1))

 	
