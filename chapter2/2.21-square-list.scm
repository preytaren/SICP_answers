(define (square-list items)
 	(define square (lambda (x) (* x x)))
 	(if (null? items)
	    nil
	    (cons (square (car items)
		  (cdr items)))))

(define (square-list items)
 	(map (lambda (x) (* x x)) items))
