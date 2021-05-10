(define kisuu
  (lambda (n)
    (cond ((= n 1) 1)
          ((= n 2) 1)
          ((odd? n) (+ (kisuu (- n 2)) n))
          (else (kisuu (- n 1))))))
