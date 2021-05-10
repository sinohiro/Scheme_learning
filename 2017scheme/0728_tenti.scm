(define tenti
  (lambda (x)
    (let ((x11 (car (car x))) (x12 (car (cdr (car x)))) (x21 (car (car (cdr x)))) (x22 (car (cdr (car (cdr x))))))
      (cons (cons x11 (cons x21 ())) (cons (cons x12 (cons x22 ())) ()))
    )
  )
)
