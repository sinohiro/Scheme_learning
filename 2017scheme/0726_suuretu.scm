(define v1 '(1 4))

(define v2 '(2 -1))

(define v3 '(1 0))

(define v4 '(2 4))

(define vplus
  (lambda (x y)
    (let ((v11 (car x)) (v12 (cadr x))
          (v21 (car y)) (v22 (cadr y)))
      (cons (+ v11 v21) (cons (+ v12 v22)'())))))

(define vminus
  (lambda (x y)
    (let ((v11 (car x))(v12 (cadr x))
          (v21 (car y))(v22 (cadr y)))
      (cons (- v11 v21)(cons (- v12 v22)'())))))

(define innerproduct
  (lambda (x y)
    (let ((v11 (car x))(v12 (cadr x))
          (v21 (car y))(v22 (cadr y)))
      (+ (* v11 v21) (* v12 v22)))))

(define scalarmulti
  (lambda (x y)
    (cons (* (car x) y) (cons (* (cadr x) y) '()))))
