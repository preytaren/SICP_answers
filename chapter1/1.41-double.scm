(define (double g)
 	(lambda (x)
	 	(g (g x))))
(define (inc x)
 	(+ x 1))
;作用时将g作用16次,所以结果是21
(((double (double double)) inc) 5)

