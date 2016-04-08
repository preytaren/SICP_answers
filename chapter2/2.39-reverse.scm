(define (reverse sequence)
 	(fold-right (lambda (x y) (append x (list y))) () sequence))

(define (reverse-2 sequence)
 	(fold-left (lambda (x y) (cons y x)) () sequence))
