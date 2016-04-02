(define li-one (list 1 3 (list 5 7) 9))
(define li-two (list (list 7)))
(define li-three (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))

;1 ]=> (car (cdr (car (cdr (cdr li-one)))))
;Value: 7
;
;1 ]=> (car (car li-two))
;Value: 7
;
;1 ]=> (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr li-three)))))))))))))
;Value: 7;
;
