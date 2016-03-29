(define (accumulate combiner null-value term a next b)
 	(if (> a b)
	    null-value
	    (combiner (term a) (accumulate combiner null-value
				           term (next a)
					   next b))))

(define (sum term a next b)
 	(accumulate (lambda (x y) (+ x y)) 0 term a next b))

(define (product term a next b)
 	(accumulate (lambda (x y) (* x y)) 1 term a next b))


(define (accumulate2 combiner null-value term a next b)
 	(define (accumulate-iter a result)
 	        (if (> a b)
	            null-value
	            (accumulate-iter (term a) (combiner a result))))
	(accumulate-iter a null-value))
