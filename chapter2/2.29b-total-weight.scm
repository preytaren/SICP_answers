(load "2.29a.scm")
(define (total-weight mobile)
        (+ (weight (left-branch mobile))
	   (weight (right-branch mobile))))

(define (weight branch)
 	(if (not (pair? 
		       (branch-structure branch)))
	    (branch-structure branch)
	    (total-weight (branch-structure branch))))
	    
