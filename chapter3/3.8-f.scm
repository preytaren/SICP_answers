(define f
 	(lambda (x)
	        (set! f ((lambda (y) 0) x)))
