(define (print-fixed-point f first-guess)
	(define (print x)
	 	(begin (display x)
		       (newline)))
 	(define (close-enough? v1 v2)
	 	(< (abs (- v1 v2)) tolerance))
	(define (try guess)
	        (let ((next (f guess)))
		     (begin (print guess)
			    (if (close-enough? guess next)
			        next
				(try next)))))
	(try first-guess))

(define log1000 (log 1000))

(define (average x y)
 	(/ (+ x y) 2))

(begin (display "normal version of fixed point:")
       (newline)
       (print-fixed-point (lambda (x) (/ log1000
				         (log x))) 2.0)
       (display "average version of fixed point:")
       (newline)
       (print-fixed-point (lambda (x) (average x (/ log1000
						    (log x)))) 2.0))
;不用平均阻尼用了33步，用平均阻尼用了8步，结果显而易见
