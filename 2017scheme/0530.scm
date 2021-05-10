(define calc-bmi (lambda (x y) (/ x (* y y))))
 (define print (lambda (x y) (if (>= (calc-bmi x y) 25) 'fat 'not_fat)))
