(load "accumulate.scm")

(define (get-first segs)
 	(if (null? segs)
	    ()
	    (cons (car (car segs))
	          (get-first (cdr segs)))))

(define (get-rest segs)
 	(if (null? segs)
	    ()
	    (cons (cdr (car segs))
	          (get-rest (cdr segs)))))

(define (accumulate-n op init segs)
 	(if (null? (car segs))
	    ()
	    (cons (accumulate op init (get-first segs))
	          (accumulate-n op init (get-rest segs)))))
