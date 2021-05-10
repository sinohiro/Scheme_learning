(define print-tosa-10-3
  (lambda (n)
    (cond ((= n 1) 10)
          (else (hojo (+ 3 (print-tosa-10-3 (- n 1))))))))

(define hojo
  (lambda (print-tosa-10-3)
    (print print-tosa-10-3) print-tosa-10-3))
