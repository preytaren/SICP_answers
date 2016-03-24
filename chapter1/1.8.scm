;迭代公式(x/y^2+2*y)/3，其他部分和sqrt部分类似
(load "square.scm")
(define (cube-iter guess x)
        (if (good-enough? guess x)
	    guess
	    (cube-iter (cube-improve guess x) x)))

(define (cube x)
        (* x x x))

(define (good-enough? guess x)
        (< (abs (- (cube guess) x)) 0.001))

(define (cube-improve guess x)
        (/ (+ (/ x (square guess)) (* guess 2)) 3))

(define (cube-root x)
        (cube-iter 1.0 x))
