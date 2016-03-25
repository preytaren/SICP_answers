;这是一个递归计算过程
;计算(plus 4 5)的过程为
;(plus 4 5)
;(plus (inc (plus 3 5)))
;(plus (inc (plus (inc (plus 2 5)))))
;.....
(load "inc_dec.scm")
(define (plus a b)
        (if (= a 0)
	    b
	    (inc (plus (dec a) b))))

