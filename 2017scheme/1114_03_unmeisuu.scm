(define goukeiwa
  (lambda (x)
    (if (<= x 9) x (+ (modulo x 10) (goukeiwa (quotient x 10))))))

(define unmeisuu
  (lambda (x)
    (if (<= (goukeiwa x) 9) (goukeiwa x) (goukeiwa (goukeiwa x)))))
