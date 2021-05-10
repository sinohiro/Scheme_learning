#!/usr/local/bin/gosh

(define calc-bmi (lambda (x y) (/ x (* y y))))

(define run (lambda (x y)
               (cond
                ((>= (calc-bmi x y) 40) 'fat4)
                ((>= (calc-bmi x y) 35) 'fat3)
                ((>= (calc-bmi x y) 30) 'fat2)
                ((>= (calc-bmi x y) 25) 'fat1)
                ((>= (calc-bmi x y) 18.5) 'standard)
                (else 'slim))))

(define main (lambda (argv)
 (let ((x (string->number (cadr argv)))
       (y (string->number (caddr argv))))
  (print (run x y)))))


