(load "accumulate.scm")

(define (dot-product v w)
 	(accumulate + 0 (map * v w))

(define (matrix-*-vector m v)
        (map (lambda (x) (dot-product x v)) m))

(define (transpose m)
        (accumulate () m))

(define (matrix-*-matrix m n)
 	(map (lambda (x) (matrix-*-vector (transpose n) x)) m))
