(define fibo
  (lambda (n)
    (cond ((= n 1) 1)
          ((= n 2) 1)
          (else (+ (fibo (- n 2)) (fibo (- n 1)))))))

(define fibo2
  (lambda (n)
    (define sub
      (lambda (n x y)
      (cond ((= n 1) x)
            ((= n 2) y)
            (else (sub (- n 2) (+ x y) (+ x y y))))))
    (sub n 1 1)))
