1 ]=> (list 'a 'b 'c)

Value 14: (a b c)

1 ]=> (list (list 'george))

Value 15: ((george))

1 ]=> (cadr '((x1 x2) (y1 y2)))

Value 16: (y1 y2)

1 ]=> (pair? (car '(a short list)))

Value: #f

1 ]=> (memq 'red '((red shoes) (blue socks)))

Value: #f

1 ]=> (memq 'red '((red shoes blue socks)))

Value: #f
