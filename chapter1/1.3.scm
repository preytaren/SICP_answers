(define (sum-max x y z)
     (cond ((= x (min x y z)) (+ y z))
           ((= y (min x y z)) (+ x z))
	   ((= z (min x y z)) (+ x y))))
