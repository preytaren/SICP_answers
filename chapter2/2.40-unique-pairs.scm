(define (enumerate-interval x y)
 	(define (iter result count n)
	        (if (> count n)
		    result
		    (iter (append result (list count)) (+ count 1) n)))
	(iter () x y))

(define (unique-pairs n)
 	(filter (lambda (x) (if (not (= (car x)
				   (cadr x)))
			        true
				false))
		(accumulate append
			    ()
			    (map (lambda (i)
					  (map (lambda (j) (list j i))
					       (enumerate-interval 1 (- i 1))))
				 (enumerate-interval 1 n)))))
				 

