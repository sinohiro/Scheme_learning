(define honya
  (lambda (n)
    (if (= n 1) 5
        (+ 3 (honya (- n 1))))))


(define tosa-10-3
  (lambda (n)
    (if (= n 1) 10
        (+ 3 (tosa-10-3 (- n 1))))))

(define print-tosa-10-3
  (lambda (n)
    (cond ((= n 1) 10)
          (else (+ 3 (print-tosa-10-3 (- n 1))))
          )))


(define tosa-1000--9
  (lambda (n)
    (cond ((= n 1) 1000)
          (else (- (tosa-1000--9 (- n 1)) 9))
          )))

(define tosa-7-3
  (lambda (n)
    (if (= n 1) 7
        (+ (tosa-7-3 (- n 1)) 3))))

(define wa0703
  (lambda (n)
    (/ (* n (+ 7 (tosa-7-3 n))) 2)))
