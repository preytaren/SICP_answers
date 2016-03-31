(define (iterative-improve good-enough? improved-method)
 	(define (iter guess x)
	 	(if (good-enough? guess x)
		    guess
		    (iter (improved-method guess) x)))
	iter)


(define (sqrt x)
 	(define (square x) (* x x))
	(define (average x y) (/ (+ x y) 2))
 	(iterative-improve (lambda (guess x) 
			           (< (abs (- (square guess) x)) 0.001))
	 		   (lambda (guess x)
			    	   (average guess (/ x guess)))))

(define (fixed-point f guess)
 	(iterative-improve (lambda (v1 v2)
			    	   (< (abs (- v1 v2)) 0.000001))
	 		   (lambda (
			

