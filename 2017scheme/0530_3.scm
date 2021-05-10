(define calc-bmi (lambda (x y) (/ x (* y y))))

(define print (lambda (x y)
               (cond
                ((>= (calc-bmi x y) 40) 'fat4)
                ((>= (calc-bmi x y) 35) 'fat3)
                ((>= (calc-bmi x y) 30) 'fat2)
                ((>= (calc-bmi x y) 25) 'dat1)
                ((>= (calc-bmi x y) 18.5) 'standard)
                (else 'slim)
               )
              )
)
                
               
