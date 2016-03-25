;这是一个迭代计算过程，
;计算(plus 4 5)的过程为
;(plus 4 5)
;(plus 3 6)
;(plus 2 7)
;(plus 1 8)
;(plus 0 9)
;9
(load "inc_dec.scm")
(define (plus a b)
        (if (= a 0)
	    b
	    (plus (dec a) (inc b))))
