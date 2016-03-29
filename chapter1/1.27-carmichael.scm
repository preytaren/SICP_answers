(load "1.24-fermat.scm")
(define (carmichael? n)
 	(carmichael-iter n (- n 1)))
 	
(define (fermat? n a)
 	(= (expmod a n n) a)) 

(define (carmichael-iter n count)
        (if (> count 2) 
	    (if (fermat? n count)
	        (carmichael-iter n (- count 1))
		false)
	    true))
;前面的carmichael数都能通过测试
