(define (f g)
 	(g 2))
;会报如下错误，因为scheme里括号是apply，所以(f f)会展开成(f 2)，然后继续展开成(2 2)，而2不是可以apply的对象
;;The object 2 is not applicable.
