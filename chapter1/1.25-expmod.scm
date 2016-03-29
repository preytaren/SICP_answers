(load "1.16-fast-pow.scm")
(define (expmod base exp m)
 	(remainder (fast-pow base exp) m))
;这种方式会直接求一个数的幂，但是对于很大的数，就很慢，
;而在前面的实现中，每次迭代都会对m取模，使得每次迭代的数都很小
;
