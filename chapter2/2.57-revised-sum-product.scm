(load "deriv.scm")

(define (make-sum x . y)
 	(cond append (list '+ x) y))

(define (addend s)
 	(cadr s))

(define (augend s)
 	(if (= (length s) 3)
	    (cddr s)
	    (cons (car s) (cddr s))))
