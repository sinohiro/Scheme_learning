(define nextm
    (lambda (x r)
          (* x (+ 1 r))))

(define tumi
  (lambda (x r n)
    (if (= n 1) (nextm x r)
        (nextm (+ (tumi x r (- n 1)) 10000) r))))

(define x 10000)
(define r 0.0003)
