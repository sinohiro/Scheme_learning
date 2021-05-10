(define myreverse
  (lambda (a)
    (cond ((null? a) '())
          (else (addlast (car a) (myreverse (cdr a)))))))

(define addlast
  (lambda (a b)
    (cond ((null? b) (cons a b))
          (else (cons (car b) (addlast a (cdr b)))))))
