(define (random-in-range low high)
 	(let ((range (- high low)))
	     (+ low (random range))))

(define (estimate-integral p x1 x2 y1 y2 count)
 	(define x (random-in-range x1 x2))
	(define y (random-in-range y1 y2))
 	(define (estimate trial passed)
	 	(define area (* (abs (- x1 x2)) (abs (- y1 y2))))
	 	(/ trial (* passed (+ 1.0 (- 1.0 area)))))
 	(define (iter trial passed)
	        (cond ((= trial count)
		       (estimate count passed))
		      ((p x y)
		       (iter (+ trail 1) (+ passed 1)))
		      (else (iter (+ trail 1) passed))))
	(iter 0 count))
		    
	      	 
