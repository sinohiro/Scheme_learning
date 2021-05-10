(define zenka
  (lambda (n)
    (if (= n 1) 3
        (- (* 3 (zenka (- n 1))) 4))))

(define zenkawa
  (lambda (n)
    (if (= n 1) (zenka n)
        (+ (zenka n) (zenkawa (- n 1))))))
