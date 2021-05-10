(define nkoume
  (lambda (x y)
    (define n-k
      (lambda (n k)
        (if (= k 1) (modulo n 10) (n-k (/ (- n (modulo n 10)) 10) (- k 1)))
      )
    )

    (if (and (< 0 x) (< 0 y) (<= (expt 10 (- y 1)) x)) (n-k x y) 0)
    )
  )