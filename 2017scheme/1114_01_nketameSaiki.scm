(define nketameSaiki
  (lambda (n k)
    (if (= k 1) (modulo n 10) (nketameSaiki (quotient n 10) (- k 1))
    )
  )
)
