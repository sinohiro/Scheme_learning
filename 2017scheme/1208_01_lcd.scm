(define mylcm
  (lambda (a b)
    (define sublcm
      (lambda (a b c d)
        (cond ((= (modulo c b) 0) c)
              (else (sublcm a b (* a d) (+ d 1))))))
    (sublcm a b a 2)))
