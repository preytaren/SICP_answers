(define (element-of-set? x set)
 	(cond ((null? set) false)
	      ((equal? x (car set)) true)
	      (else (element-of-set? x (cdr set)))))

(define (adjion-set x set)
 	(cons x set))

(define (union-set s1 s2)
 	(append s1 s2))

(define (intersection-set s1 s2)
 	(define (iter s1 s2 result)
	        (cond ((null? s1) (reverse result))
		      ((element-of-set? (car s1) s2)
		       (iter (cdr s1) s2 (cons (car s1) result)))
		      (else (iter (cdr s1) result))))
	(iter s1 s2 ()))

;adjion-set 和 union-set 简化了很多，O(n);
;intersection-set 没有什么变化，但是由于数据存在冗余所以会多很多重复的操作
;在对插入元素频繁和求并集频繁的场合可以使用
