(define goukeiwa
  (lambda (x)
    (if (<= x 9) x (+ (modulo x 10) (goukeiwa (quotient x 10))))))
