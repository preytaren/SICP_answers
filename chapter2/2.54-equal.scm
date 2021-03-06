(define (equal? l1 l2)
 	(cond ((and (symbol? l1)
	            (symbol? l2))
	       (eq? l1 l2))
	      ((and (list? l1)
		    (list? l2))
	       (and (equal? (car l1)
		            (car l2))
		    (equal? (cdr l1)
		     	    (cdr l2))))
	      (else false)))
