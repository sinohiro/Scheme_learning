(define plamid
  (lambda (n)
    (cond ((= n 1) 1)
          (else (+ n (plamid (- n 1)))))))

(define souwa
  (lambda (x)
    (cond ((= x 1) (plamid 1))
          (else (+ (souwa (- x 1)) (plamid x))))))
