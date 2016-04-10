;assume x is only integer, stored incrmently
(define (adjion-set x set)
 	(define (recursion set)
	 	(let ((current-element (car set))
		      (remain-elments (cdr set)))
		(cond ((> x current-element) (cons current-element
					     (recursion remain-elments)))
		      ((= x current-element) set)
		      ((< x current-element) (cons x set))
		      ((null? set) x))))
	(recursion set))

					        
