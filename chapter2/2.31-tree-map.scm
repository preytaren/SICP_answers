(define (tree-map function tree)
  	(cond ((null? tree) ())
	      ((not (pair? tree)) (function tree))
	      (else (cons (tree-map function (car tree))
		          (tree-map function (cdr tree))))))

(define (square-tree tree)
 	(tree-map (lambda (x) (* x x))
	          treee))
