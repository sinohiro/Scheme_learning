(define myapend
  (lambda (a b)
    (cond ((eq? a '()) b)
          (else (cons (car a) (myapend (cdr a) b))))))

(define kazuListsub
  (lambda (n)
    (cond ((> 10 n) (cons n ()))
          (else (cons (modulo n 10) (kazuListsub (quotient n 10)))))))

(define kazuList
  (lambda (n)
    (reverse (kazuListsub n))))
