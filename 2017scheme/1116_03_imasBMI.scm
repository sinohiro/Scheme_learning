(define calc-bmi (lambda (x y) (/ x (* y y))))

(define run (lambda (x y)
              (cond
               ((>= (calc-bmi x y) 40) 'fat4)
               ((>= (calc-bmi x y) 35) 'fat3)
               ((>= (calc-bmi x y) 30) 'fat2)
               ((>= (calc-bmi x y) 25) 'fat1)
               ((>= (calc-bmi x y) 18.5) 'standard)
               (else 'slim))))


(define imasBMI
  (lambda (x)
    (cond ((null? x) '())
          ((eq? (run (car (cdr (cdr (cdr (cdr (cdr (car x))))))) (/ (car (cdr (cdr (cdr (cdr (car x)))))) 100)) 'standard) (cons (car (car x)) (imasBMI (cdr x))))
          (else (imasBMI (cdr x))))))
