(define honya
  (lambda (n)
    (if (= n 1) 5
        (+ 3 (honya (- n 1))))))


(define tosa-10-3
  (lambda (n)
    (if (= n 1) 10
        (+ 3 (tosa-10-3 (- n 1))))))
