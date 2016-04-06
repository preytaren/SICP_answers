(define (map p sequence)
 	(accumulate (lambda (x y)
		            (cons (p x) y)) () sequence))
	

(define (append seq1 seq2)
 	(accumulate cons seq1 seq2))

(define (length sequence)
 	(accumulate (lambda (x y)
		     	    (+ 1 y)) 0 sequence))
