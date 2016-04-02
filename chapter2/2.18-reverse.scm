(define (reverse li)
 	(define (reverse-iter li re-li)
	 	(if (null? li)
		    re-li
		    (reverse-iter (cdr li)
		     	  	  (cons (car li) re-li))))
	(reverse-iter li (list )))
