(load "1.22-search-for-primes.scm")

(define (next n)
 	(if (= n 2)
	    3
	    (+ n 2)))

(define (smallest-divisor n)
 	(divisor-iter n 2))

(define (divisor-iter n count)
  	 (cond ((> (* count count) n) n)
	       ((= (remainder n count) 0) count)
	       (else (divisor-iter n (next count)))))
