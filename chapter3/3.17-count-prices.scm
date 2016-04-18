(define (count-pairs x)
 	(define (in-list? z li)
	        (if (eq? z (car li))
		    True
		    (in-list? z (cdr li))))
	(define (insert z li)
	        (cons z li))
	(if (in-list? x)
	    0
	    (begin (insert x li)
	           (if (not (pair? x))
		       0
		       (+ (count-pairs (car x))
			  (count-pairs (cdr x))
			  1)))))

