(load "1.22-search-for-primes.scm")
(define (square x)
 	(* x x))

(define (expmod base exp m)
 	(cond ((= exp 0) 1)
	      ((even? exp) 
	       (remainder (square (expmod base (/ exp 2) m))
			  m))
	      (else
	       (remainder (* base (expmod base (- exp 1) m))
			  m))))
(define (fertmat-test n)
 	(define (try-it a)
	 	(= (expmod a n n) a))
	(try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
        (cond ((= times 0) true)
	      ((fertmat-test n) (fast-prime? n (- times 1)))
	      (else false)))

(define (prime? n)
 	(fast-prime? n 2))
;1 ]=> (search-by-counts 1000 3)
;1009
;1013
;1019
;Value: 1
;1 ]=> (search-by-counts 10000 3)
;10007
;10009
;10037
;Value: 1
;1 ]=> (search-by-counts 100000 3)
;100003
;100019
;100043
;Value: 1
;1 ]=> (search-by-counts 1000000 3)
;1000003
;1000033
;1000037
;Value: 1
;从上面可以看出，使用费马检查显然要快不少,在检查两次的情况下几乎没有时间上的增长

