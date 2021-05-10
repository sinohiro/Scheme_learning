(define prime?
  (lambda (n)
    (cond ((= n 0) 0)
          ((> (remainder (expt 2 (- n 1)) n) 1) #f)
          ((< (remainder (expt 2 (- n 1)) n) 1) #f)
          (else #t))))
