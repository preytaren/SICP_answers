;使用三个状态变量来保存之前存储的数据
(define (f-iter a b c count)
 	(define (sum a b c)
	 	(+ a
		   (* 2 b)
		   (* 3 c)))
        (if (< count 3)
	    a
	    (f-iter (sum a b c) a b (- count 1))))

(define (f n)
 	(f-iter 2 1 0 n))
