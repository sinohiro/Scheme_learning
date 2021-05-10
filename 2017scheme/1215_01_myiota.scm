(define myiotasub
  (lambda (n)
    (cond ((= n 0) '())
          (else (cons (- n 1) (myiotasub (- n 1)))))))

(define myiota
  (lambda (n)
    (myreverse (myiotasub n))))

(define myreverse
  (lambda (a)
    (cond ((null? a) '())
          (else (addlast (car a) (myreverse (cdr a)))))))

(define addlast
  (lambda (a b)
    (cond ((null? b) (cons a b))
          (else (cons (car b) (addlast a (cdr b)))))))
