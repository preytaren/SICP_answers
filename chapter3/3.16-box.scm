(define (count-prices x)
 	(if (not (pair? x))
	    0
	    (+ (count-prices (car x))
	       (count-prices (cdr x))
	       1)))

;(define z (list 'a 'b 'c))
;
;return 3
;z
;
;return 4
;(set-car! z (cddr z))
;
;return 7
;
;
;loop forever
;(set-car! z z)

