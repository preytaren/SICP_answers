(define (A x y)
  	(cond ((= y 0) 0)
	      ((= x 0) (* 2 y))
	      ((= y 1) 2)
	      (else (A (- x 1)
		       (A x (- y 1))))))

;1 ]=> (A 1 10)
;
;Value: 1024
;
;1 ]=> (A 2 4)
;
;Value: 65536
;
;1 ]=> (A 3 3)
;
;Value: 65536
;
;这个函数表达式为:
;A(x,y)=  0  ; y=0
;         2y ; x=0
;         2  ; y=1
;         A(x-1,A(x,y-1)) ; others
;

(define (f n) (A 0 n))

;f(n) = 2n

(define (g n) (A 1 n))

;g(n) = 2 * g(n-1)
;g(1) = 2
;g(n) = 2^n

(define (h n) (A 2 n))

;h(n) = 2^n * h(n-1)
;h(1) = 2 
;h(n) = 2^n * 2^(n-1) ... * 2^1
