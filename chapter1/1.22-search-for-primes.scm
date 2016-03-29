(load "1.21-smallest-divisor.scm")

(define (prime? n)
        (= (smallest-divisor n) n))

(define (timed-prime-test n)
 	(newline)
	(display n)
	(start-prime-test n (real-time-clock)))

(define (start-prime-test n start-time)
        (if (prime? n)
	    (report-prime (- (real-time-clock) start-time))))

(define (report-prime elapsed-time)
 	(display " *** ")
	(display elapsed-time))

;solution to Q1
(define (search-for-primes start end)
        (if (even? start)
	    (real-search (+ start 1) end)
	    (real-search start end)))

(define (real-search start end)
        (if (or (< start end) (= start end))
	    (begin (timed-prime-test start)
	    (real-search (+ start 2) end))
	    (display " ")))

;solution to Q2
(define (search-by-counts start count)
 	(if (even? start)
	    (real-search-by-counts (+ start 1) count (real-time-clock))
	    (real-search-by-counts start count (real-time-clock))))

(define (real-search-by-counts start count time)
 	(if (= count 0)
	    (- (real-time-clock) time)
	    (if (prime? start)
	        (begin (display start)
		       (newline)
		       (real-search-by-counts (+ start 2) (- count 1) time))
		(real-search-by-counts (+ start 2) count time))))

;1 ]=> (search-by-counts 1000 3)
;1009
;1013
;1019
;Value: 0
;1 ]=> (search-by-counts 10000 3)
;10007
;10009
;10037
;Value: 1
;1 ]=> (search-by-counts 100000 3)
;100003
;100019
;100043
;Value: 2
;
;1 ]=> (search-by-counts 1000000 3)
;1000003
;1000033
;1000037
;Value: 4
	     

        
