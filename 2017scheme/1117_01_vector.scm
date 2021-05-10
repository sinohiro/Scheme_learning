(define vector
  (lambda (n k)
    (cond ((null? n) '())
          ((eq? (cdr n) '()) (cons (* (car n) k) ()))
          (else (cons (* (car n) k) (vector (cdr n) k))))))

(define vector2
  (lambda (n k)
    (cond ((null? n) '())
          ((null? k) '())
          ((and (eq? (cdr n) '()) (eq? (cdr k) '())) (cons (+ (car n) (car k)) ()))
          (else (cons (+ (car n) (car k)) (vector2 (cdr n) (cdr k)))))))

(define vector3
  (lambda (n k)
    (cond ((null? n) '())
          ((null? k) '())
          ((and (eq? (cdr n) '()) (eq? (cdr k) '())) (* (car n) (car k)))
          (else (+ (* (car n) (car k)) (vector3 (cdr n) (cdr k)))))))
