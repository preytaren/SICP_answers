
(define (cc amount coin-values)
 	(cond ((= amount 0) 1)
	      ((or (< amont 0) (no-more? coin-values)) 0)
	      (else (+ (cc amount 
			   (execept-first-denomination coin-values)
		       (cc (- amount
			      (first-denomination coin-values)))
		       	   coin-values)))))

(define first-denomination car)
	
(define no-more? null?)

(define execept-first-denomination cdr)

;cc的排列不会影响结果，因为无论从谁开始计算，都是等价的
