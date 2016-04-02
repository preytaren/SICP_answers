(load "2.29-mobile-branch.scm")
(define (left-branch mobile)
 	(car mobile))

(define (right-branch mobile)
 	(car (cdr mobile)))

(define (branch-length branch)
 	(car branch))

(define (branch-structure  branch)
 	(car (cdr branch)))


