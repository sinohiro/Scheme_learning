(define nbanme
  (lambda (n)
    (* n (+ n 1))))

(define kaiwa
  (lambda (n)
    (if (= n 1) (nbanme n)
        (+ (nbanme n) (kaiwa (- n 1))))))
