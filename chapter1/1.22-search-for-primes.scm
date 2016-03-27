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


        
