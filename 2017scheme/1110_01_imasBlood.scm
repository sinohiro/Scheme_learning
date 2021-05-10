(define imasBlood
  (lambda (data blood)
    (cond ((null? data) 0)
          ((eq? (getblood (car data)) blood)
           (+ 1 (imasBlood (cdr data) blood)))
          (else (imasBlood (cdr data) blood)))))


(define getblood
  (lambda (x)
    (car (cdr (cdr (cdr (cdr (cdr (cdr (cdr (cdr x)))))))))))
