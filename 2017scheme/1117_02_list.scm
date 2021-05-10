(define list
  (lambda (x y)
    (cond ((= y 1) (car x))
          (else (list (cdr x) (- y 1))))))

(define collect-car
  (lambda (x)
    (cond ((eq? (cdr x) '()) (cons (car (car x)) ()))
          (else (cons (car (car x)) (collect-car (cdr x)))))))

(define collect-cdr
  (lambda (x)
    (cond ((eq? (cdr x) '()) (cons (cdr (car x)) ()))
          (else (cons (cdr (car x)) (collect-cdr (cdr x)))))))

(define list-t
  (lambda (x)
    (cond ((null? (cadr x)) '())
          (else (cons (collect-car x) (list-t (collect-cdr x)))))))

(define list-x
  (lambda (x y)
    (cond ((= y 1) (cdr x))
          (else (cons (car x) (list-x (cdr x) (- y 1)))))))


(define list-j
  (lambda (x y)
    (cond ((null? (cdr x)) (cons (list-x (car x) y) '()))
          (else (cons (list-x (car x) y) (list-j (cdr x) y))))))
