(define yakusuu
  (lambda (n m)
    (cond ((= n 0) '())
          ((= n 1) '1)
          (else (yakusuu n (modulo n (- n 1))
