(define pr (lambda (x) (print x) x))


(define print-tosa-10-3
  (lambda (n)
    (cond ((= n 1) 10)
          ((>= n 2) (+ 3 (print-tosa-10-3 (- n 1))))
          )))
