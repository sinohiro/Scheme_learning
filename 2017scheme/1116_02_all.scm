(define alleven?
  (lambda (x)
    (cond ((null? x) #f)
          ((eq? (cdr x) '()) (even? (car x)))
          (else (and (even? (car x)) (alleven? (cdr x)))))))

(define allsmall?
  (lambda (x y)
    (cond ((null? x) #f)
          ((eq? (cdr x) '()) (<= (car x) y))
          (else (and (<= (car x) y) (allsmall? (cdr x) y))))))
