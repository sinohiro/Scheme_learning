(define fact2
  (lambda (x)
    (define sub
      (lambda (n c)
        (if (= 0 n) c (sub (- n 1) (* n c)))
      )
    )  
   (sub x 1)
  )
)
