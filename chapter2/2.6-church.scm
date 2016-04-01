(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
 	(lambda (f) (lambda (x) (f ((n f) x)))))

;one 
;(add-1 zero)
;
;(add-1 (lambda (f) lambda (x) x))
;
;(lambda (n) (lambda (f) 
;  	 (lambda (x)
;  	 	 (f ((n f) x))))
;  	 	    (lambda (f) (lambda (x) x)))
;(lambda (f)
;	 (lambda (x)
;	 	 (f (((lambda (f) (lambda (x) x)) f) x))))
;
;(lambda (f)
;	 (lambda (x)
;	 	 (f ((lambda (x) x) x)))
;
;(lambda (f)
;	 (lambda (x)
;	 	 (f x)))
;
;two
;(add-1 one)
;
;(add-1 (lambda (f)
;		(lambda (x)
;		        (f x))))
;
;(lambda (n) (lambda (f)
;  	             (lambda (x)
;  	             	     (f ((n f) x))))
;  	     (lambda (f) (lambda (x) (f x))))
;
;(lambda (f)
;	 (lambda (x)
;	 	 (f (((lambda (f) 
;	 	              (lambda (x) 
;	 	                      (f x))) f) x))))
;
;(lambda (f)
;	 (lambda (x)
;	 	 (f ((lambda (x) (f x)) x))))
;
;(lambda (f)
;	 (lambda (x)
;	 	 (f (f x))))
;
;

;lambda calculus https://en.wikipedia.org/wiki/Lambda_calculus
