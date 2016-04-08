(car ''abracadabra)
;上面等价于(car (quote (quote abracadabra)))
;实际上是吧(quote abracadabra)当作一个符号对待,所以取表头得到quote
