(define (cube x)
  	(* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine ang)
  	(if (not (> (abs ang) 0.1))
	    ang
	    (p (sine (/ ang 3.0)))))

;trace记录:
;[Entering #[compound-procedure 22 sine]
;Args: 12.15]
;[Entering #[compound-procedure 22 sine]
;Args: 4.05]
;[Entering #[compound-procedure 22 sine]
;Args: 1.3499999999999999]
;[Entering #[compound-procedure 22 sine]
;Args: .44999999999999996]
;[Entering #[compound-procedure 22 sine]
;Args: .15]
;[Entering #[compound-procedure 22 sine]
;Args: 4.9999999999999996e-2]
;[4.9999999999999996e-2
;<== #[compound-procedure 22 sine]
;Args: 4.9999999999999996e-2]
;[.1495
;<== #[compound-procedure 22 sine]
;Args: .15]
;[.4351345505
;<== #[compound-procedure 22 sine]
;Args: .44999999999999996]
;[.9758465331678772
;<== #[compound-procedure 22 sine]
;Args: 1.3499999999999999]
;[-.7895631144708228
;<== #[compound-procedure 22 sine]
;Args: 4.05]
;[-.39980345741334
;<== #[compound-procedure 22 sine]
;Args: 12.15]
;;Value: -.39980345741334
;;
;a)
; 共使用了五次，
;
;b)
;每次计算x会变为原来的三分之一，所以
; O(logn),O(logn)
