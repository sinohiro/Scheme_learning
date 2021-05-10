(define tanjouseki
  (lambda (x)
    (cond
     ((= x 1) 'garnet)
     ((= x 2) 'amethyst)
     ((= x 3) 'aquamarine)
     ((= x 4) 'diamond)
     ((= x 5) 'emerald)
     ((= x 6) 'pearl)
     ((= x 7) 'ruby)
     ((= x 8) 'peridot)
     ((= x 9) 'sapphire)
     ((= x 10) 'opal)
     ((= x 11) 'topaz)
     ((= x 12) 'turquoise)
)))


(define uruudosi
  (lambda (x)
    (cond
     ((= (remainder x 400) 0) '#t)
     ((= (remainder x 100) 0) '#f)
     ((= (remainder x 4) 0) '#t)
     (else '#f)
)))


(define hantei
  (lambda (x y)
    (cond
     ((or (= y 4) (= y 6) (= y 9) (= y 11)) '30)
      ((or (= y 1) (= y 3) (= y 5) (= y 7) (= y 8) (= y 10) (= y 12)) '31)
       ((and (= y 2) (= (uruudosi x) #t)) '29)
        ((and (= y 2) (= (uruudosi x) #f)) '28)
         (else 'error))))
    
       

(define hizuke
  (lambda (x y z)
    (cond
     ((2 4 6 11 31nasi
