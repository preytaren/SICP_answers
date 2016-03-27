(define (smallest-divisor n)
 	(divisor-iter n 2))
 
(define (divisor-iter n count)
  	 (cond ((> (* count count) n) n)
	       ((= (remainder n count) 0) count)
	       (else (divisor-iter n (+ count 1)))))

;(smallest-divisor 199)  199
;(smallest-divisor 1999) 1999
;(smallest-divisor 19999) 7

