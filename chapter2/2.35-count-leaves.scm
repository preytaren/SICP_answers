(load "2.28-fringe.scm")
(define (count-leaves tree)
 	(accumulate (lambda (leaf tree)
		            (+ 1 tree))
	            0
		    (fringe tree)))
