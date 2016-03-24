(define (good-enough? guess x)
        (< (abs (/ (- guess x))) 0.001))        
