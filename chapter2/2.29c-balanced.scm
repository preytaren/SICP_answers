(load "2.29b-total-weight.scm")
(define (moment branch)
        (* (branch-length branch)
	   (if (pair? (branch-structure branch))
	       (total-weight (branch-structure
			    branch))
	       (branch-structure branch))))

(define (balanced? mobile)
        (if (= (moment (left-branch mobile))
	       (moment (right-branch mobile)))
	    true
	    false))

;Test case
;(define a (make-branch 10 9))
;(define b (make-branch 10 10))
;(define m1 (make-mobile a b))
;(define c (make-branch 10 m1))
;(define m2 (make-mobile a c))
;(define m3 (make-mobile a a))
;
;(balanced? m1)
;should be false
;(balanced? m2)
;should be false
;(balanced? m3)
;should be true
