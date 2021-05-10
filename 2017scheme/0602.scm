(define calc-bmi (lambda (x y) (/ x (* y y))))

 (define run (lambda (x y) (if (>= (calc-bmi x y) 25) 'fat 'not_fat)))


(define  calc-di (lambda (U T) (+ (* 0.81 T) (* (* 0.01 U) (- (* 0.99 T) 14.3)) 46.3)))

   (define run
    (lambda (U T)
     (cond
     ((>= (calc-di U T) 75) 'hot)
     ((>= (calc-di U T) 60) 'good)
     (else 'cold)
     )
    )
   )



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
          (else 'error))))



(define uruudosi
 (lambda (x)
  (cond
   ((= (remainder x 400) 0) '1)
   ((= (remainder x 100) 0) '0)
   ((= (remainder x 4) 0) '1)
   (else '0)
   )))


(define hantei
  (lambda (x y)
    (cond
     ((or (= y 4) (= y 6) (= y 9) (= y 11)) '30)
     ((or (= y 1) (= y 3) (= y 5) (= y 7) (= y 8) (= y 10) (= y 12)) '31)
     ((and (= y 2) (= (uruudosi x) 1)) '29)
     ((and (= y 2) (= (uruudosi x) 0)) '28)
     (else 'error)
     )))



(define hizuke
  (lambda (x y z)
    (cond
     
     ((2 4 6 11 31nasi
