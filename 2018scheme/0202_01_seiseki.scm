(define seiseki-a
  '(
    (1 45 42 47 49 38)
    (2 47 52 40 51 42)
    (3 54 52 47 50 48)
    (4 47 47 48 48 51)
    (5 51 55 54 53 60)
    (6 43 47 55 59 60)
    (7 45 41 45 54 51)
    (8 38 45 48 43 51)
    (9 40 37 50 41 45)
    (10 40 42 46 45 50)
    (11 40 36 31 32 36)
    (12 60 54 57 53 59)
    (13 55 45 50 50 53)
    (14 62 59 55 54 52)
    (15 44 50 50 40 47)
    (16 49 57 59 59 52)
    (17 56 55 58 57 57)
    (18 42 49 43 39 48)
    (19 59 57 50 54 46)
    (20 53 45 33 40 49)
    (21 43 47 50 53 43)
    (22 48 43 39 48 44)
    (23 53 54 58 61 60)
    (24 43 45 47 50 48)
    (25 42 47 44 49 48)
    ))

(define all
  (lambda (data x)
    (cond ((= x (car (car data))) (car data))
          (else (all (cdr data) x)))))



(define japanese
  (lambda (data x)
    (cond ((= x (car (car data))) (car (cdr (car data))))
          (else (japanese (cdr data) x)))))


(define Science
  (lambda (data x)
    (cond ((= x (car (car data))) (car (cddddr (cdr (car data)))))
          (else (Science (cdr data) x)))))


(define allPlas
  (lambda (data x)
    (cond ((= x (car (car data))) (plas (cdr (car data))))
          (else (allPlas (cdr data) x)))))

(define plas
  (lambda (x)
    (cond ((null? (cdr x)) (car x))
          (else (plas (cons (+ (car x) (car (cdr x))) (cddr x)))))))


(define allaverage
  (lambda (data x)
    (cond ((= x (car (car data))) (* (/ (plas (cdr (car data))) 5) 1.0))
          (else (allaverage (cdr data) x)))))


(define Sublist
  (lambda (data x)
    (cond ((null? data) ())
          ((= x 1) (cons (car (cdr (car data))) (Sublist (cdr data) x)))
          ((= x 2) (cons (car (cddr (car data))) (Sublist (cdr data) x)))
          ((= x 3) (cons (car (cdddr (car data))) (Sublist (cdr data) x)))
          ((= x 4) (cons (car (cddddr (car data))) (Sublist (cdr data) x)))
          ((= x 5) (cons (car (cddddr (cdr (car data)))) (Sublist (cdr data) x)))
          (else 'error))))

(define namber
  (lambda (data x y)
    (cond ((null? data) ())
          ((and (= x 1) (>= (car (cdr (car data))) y)) (cons (caar data) (namber (cdr data) x y)))
          ((and (= x 2) (>= (car (cddr (car data))) y)) (cons (caar data) (namber (cdr data) x y)))
          ((and (= x 3) (>= (car (cdddr (car data))) y)) (cons (caar data) (namber (cdr data) x y)))
          ((and (= x 4) (>= (car (cddddr (car data))) y)) (cons (caar data) (namber (cdr data) x y)))
          ((and (= x 5) (>= (car (cddddr (cdr (car data)))) y)) (cons (caar data) (namber (cdr data) x y)))
          (else (namber (cdr data) x y)))))


(define sub_avg
  (lambda (data x)
    (cond ((null? data) ())
          ((= x 1) (/ (+ (cadar data) (sub_avg (cdr data) x)) length (sab)
          )))
