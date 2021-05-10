(define risoku
  (lambda (n)
    (if (= n 1)
        (+ 10000 (* 10000 0.0003))
        (+ #?=(risoku (- n 1)) (* (risoku (- n 1)) 0.0003))
        )))

(risoku 60)
