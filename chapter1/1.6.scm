;用这个new-if会栈溢出，在我的解释器中是应用序求值，所以当解释到sqrt-iter时会不停的向下求值；
;而if有一个特性就是会先判断条件，再展开下一层调用，then-clause 和 else-clause 只有一个会被求值
;
(define (new-if predicate then-clause else-clause)
        (cond (predicate then clause)
	      (else else-clause)))


