(define (pascal-r x y)
      	(if (or (= y 1) (= x y))
	    1
	    (+ (pascal-r (- x 1)
		         (- y 1))
	       (pascal-r (- x 1)
			 y))))
