(load "1.21-smallest-divisor.scm")
(define (filtered-accumulate combiner null-value term a next b filt)
	(cond ((> a b) null-value)
	      ((filt a) (combiner (term a)
			          (filtered-accumulate combiner null-value term 
					               (next a) next b filt)))
	      (else (filtered-accumulate combiner null-value term
		     			 (next a) next b filt))))

;prime
(define (sum-prime a b)
    	(filtered-accumulate (lambda (x y) (+ x y))
	  		     0
			     (lambda (x) x)
			     a
			     (lambda (x) (+ x 1))
			     b
			     prime?))
;
(define (real-gcd x y)
 	(if (= x 0)
	    y
	    (real-gcd (remainder y x) x)))

(define (product-prime n)
 	(filtered-accumulate (lambda (x y) (* x y))
	 		     1
			     (lambda (x) x)
			     2
			     (lambda (x) (+ x 1))
			     n
			     (lambda (x) (= (gcd x n) 1))))
