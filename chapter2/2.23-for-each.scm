(define (for-each f x)
 	(if (null? x)
	    true
	    (begin (f (car x))
	           (for-each f (cdr x)))))
	       
