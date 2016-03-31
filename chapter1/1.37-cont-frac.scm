;iter version
(define (cont-frac n d k)
 	(define (cont-frac-iter n d k result)
	        (if (> 1 k)
		    result
  		    (cont-frac-iter n d (- k 1) 
		        	    (/ (n k) (+ result (d k))))))
	(cont-frac-iter n d k 1.0))
;至少需要k=10才能保证小数点后四位近似


(define (cont-frac-re n d k)
 	(define (recursion n d k count)
	        (if (> count k)
		    0
		    (/ (n count) 
		       (+ (d count) (recursion n d k (- count 1))))))
	(recursion n d k 1.0))
		     
		   
