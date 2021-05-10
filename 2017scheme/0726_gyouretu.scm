(define mplus
    (lambda (x y)
      (let ((x11 (car (car x))) (x12 (car (cdr (car x)))) (x21 (car (car (cdr x)))) (x22 (car (cdr (car (cdr x)))))
            (y11 (car (car y))) (y12 (car (cdr (car y)))) (y21 (car (car (cdr y)))) (y22 (car (cdr (car (cdr y))))))
       (cons (cons (+ x11 y11) (cons (+ x12 y12) ())) (cons (cons (+ x21 y21) (cons (+ x22 y22) ())) ()))
      )
  )
)

(mplus '((2 5) (7 -3)) '((3 -5) (2 -9)))

(define mminus
  (lambda (x y)
    (let ((x11 (car (car x))) (x12 (car (cdr (car x)))) (x21 (car (car (cdr x)))) (x22 (car (cdr (car (cdr x)))))
          (y11 (car (car y))) (y12 (car (cdr (car y)))) (y21 (car (car (cdr y)))) (y22 (car (cdr (car (cdr y))))))
      (cons (cons (- x11 y11) (cons (- x12 y12) ())) (cons (cons (- x21 y21) (cons (- x22 y22) ())) ()))
    )
  )
)

(mminus '((2 5) (7 -3)) '((3 -5) (2 -9)))

(define mmulti
  (lambda (x y)
    (let ((x11 (car (car x))) (x12 (car (cdr (car x)))) (x21 (car (car (cdr x)))) (x22 (car (cdr (car (cdr x)))))
          (y11 (car (car y))) (y12 (car (cdr (car y)))) (y21 (car (car (cdr y)))) (y22 (car (cdr (car (cdr y))))))
      (cons (cons (* x11 y11) (cons (* x12 y21) ())) (cons (cons (* x21 y12) (cons (* x22 y22) ())) ()))
    )
  )
)

(mmulti'((2 5) (7 -3)) '((3 -5) (2 -9)))

(define mscalar
  (lambda (x y)
    (cons (cons (* (caar x) y) (cons (* (cadar x) y) ())) (cons (cons (* (caadr x) y) (cons (* (cadadr x) y) ())) ()))
  )
)

(mscalar '((2 5) (7 -3)) 2)

(define tenti
  (lambda (x)
    (let ((x11 (car (car x))) (x12 (car (cdr (car x)))) (x21 (car (car (cdr x)))) (x22 (car (cdr (car (cdr x))))))
      (cons (cons x11 (cons x21 ())) (cons (cons x12 (cons x22 ())) ()))
    )
  )
)

(define a '((2 5) (7 -3)))
(define b '((3 -5) (2 -9)))

3A - 5(B + A)
(-19 15 -24 51)

(mminus (mscalar a 3) (mscalar (mplus a b) 5))

(mminus (mscalar (mplus a b) 5) (mscalar (mplus (mscalar a 3) b) 2))

(mminus b (tenti (mminus a b)))

(mplus (mscalar (mplus (tenti a) (mscalar b 3)) 2) (mscalar (mminus (tenti b) (tenti a)) 5))

(define siki
  (lambda (x)
    (let ((x11 (car (car x))) (x12 (car (cdr (car x)))) (x21 (car (car (cdr x)))) (x22 (car (cdr (car (cdr x))))))
      (- (* x11 x22) (* x12 x21))
    )
  )
)


(define gyaku
  (lambda (x)
    (if (= (siki x) 0) #f
     (let ((x11 (car (car x))) (x12 (car (cdr (car x)))) (x21 (car (car (cdr x)))) (x22 (car (cdr (car (cdr x))))))
       (list (list (* (/ 1 (siki x)) x22) (* (/ 1 (siki x)) (* x12 -1))) (list (* (/ 1 (siki x)) (* x21 -1)) (* (/ 1 (siki x)) x11)))
     )
    )
  )
)
