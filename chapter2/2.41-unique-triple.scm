(load "2.40-unique-pairs.scm")
(define (unique? li) 
 	(define (check x li)
	        (filter (lambda (n)
			        (if (= x n)
				    false
				    true))
		        li))
 	(cond ((null? (check (car li) (cdr li)))
	       )
	      (unique? (cdr li))
	      false))

(define (triples n)
 	(map (lambda (i)
	             (map (lambda (j)
			          (map (lambda (k)
					       (list k j i))
				       (enumerate-interval 1 (- j 1))))
				  (enumerate-interval 1 (- i 1))))
		          (enumerate-interval 1 n)))


(define (unique-triples s n)
 	(filter (lambda (triple)
		        (if (= (sum triple) s)
			    true
			    false))
	        (accumulate append
		            ()
			    (triples n))))
 	
